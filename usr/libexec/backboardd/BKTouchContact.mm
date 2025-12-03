@interface BKTouchContact
- (BKTouchContact)init;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKTouchContact

- (BKTouchContact)init
{
  v6.receiver = self;
  v6.super_class = BKTouchContact;
  v2 = [(BKTouchContact *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    destinations = v2->_destinations;
    v2->_destinations = v3;
  }

  return v2;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5 = [formatter appendInteger:self->_pathIndex withName:@"pathIndex"];
  v6 = [formatter appendInteger:self->_touchIdentifier withName:@"touchIdentifier"];
  presence = self->_presence;
  if (presence > 2)
  {
    v8 = @"<unknown>";
  }

  else
  {
    v8 = *(&off_1000FCC90 + presence);
  }

  [formatter appendString:v8 withName:0];
  hitTestPolicy = self->_hitTestPolicy;
  if (hitTestPolicy <= 1)
  {
    if (!hitTestPolicy)
    {
      goto LABEL_16;
    }

    if (hitTestPolicy == 1)
    {
      v10 = @"startAvoiding";
      goto LABEL_15;
    }

LABEL_14:
    v10 = @"<unknown>";
    goto LABEL_15;
  }

  if (hitTestPolicy == 4)
  {
    v10 = @"locked";
    goto LABEL_15;
  }

  if (hitTestPolicy == 3)
  {
    v10 = @"avoidThenReset";
    goto LABEL_15;
  }

  if (hitTestPolicy != 2)
  {
    goto LABEL_14;
  }

  v10 = @"avoid";
LABEL_15:
  [formatter appendString:v10 withName:0];
LABEL_16:
  if (self->_hitTestContextCategory)
  {
    v11 = NSStringFromBKSTouchHitTestContextCategory();
    [formatter appendString:v11 withName:@"hitTestCategory"];
  }

  v12 = [formatter appendBool:self->_touchDetached withName:@"detached" ifEqualTo:1];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    v14 = [formatter appendUInt64:userIdentifier withName:@"userIdentifier" format:1];
  }

  v15 = objc_opt_class();
  formatterCopy = formatter;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = formatterCopy;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    destinations = self->_destinations;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008DE7C;
    v20[3] = &unk_1000FCC70;
    v21 = v18;
    [v21 appendCollection:destinations withName:@"destinations" itemBlock:v20];
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  equalCopy = equal;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8[1] == self->_pathIndex;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithInteger:self->_pathIndex];
  v3 = [v2 hash];

  return v3;
}

@end