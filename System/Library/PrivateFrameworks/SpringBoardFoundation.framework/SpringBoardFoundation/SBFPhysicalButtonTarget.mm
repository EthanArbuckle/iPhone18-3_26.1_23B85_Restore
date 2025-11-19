@interface SBFPhysicalButtonTarget
+ (id)targetWithPhysicalButton:(unint64_t)a3 generation:(unint64_t)a4 auditToken:(id)a5 identifier:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPhysicalButton:(void *)a3 generation:(void *)a4 auditToken:(void *)a5 identifier:;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBFPhysicalButtonTarget

+ (id)targetWithPhysicalButton:(unint64_t)a3 generation:(unint64_t)a4 auditToken:(id)a5 identifier:(unint64_t)a6
{
  v10 = a5;
  v11 = [(SBFPhysicalButtonTarget *)[a1 alloc] _initWithPhysicalButton:a3 generation:a4 auditToken:v10 identifier:a6];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      if (self->_button == v7->_button && self->_generation == v7->_generation && self->_identifier == v7->_identifier)
      {
        v9 = BSEqualObjects();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBFPhysicalButtonTarget_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_1E807F290;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 overlayStyle:v5 block:v7];
}

id __53__SBFPhysicalButtonTarget_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _NSStringFromUIPhysicalButton();
  [v2 appendString:v3 withName:0];

  v4 = [*(a1 + 32) appendVersionedPID:objc_msgSend(*(*(a1 + 40) + 24) withName:{"versionedPID"), @"vpid"}];
  result = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 16) withName:@"generation"];
  v6 = *(*(a1 + 40) + 32);
  if (v6)
  {
    return [*(a1 + 32) appendUnsignedInteger:v6 withName:@"id"];
  }

  return result;
}

- (id)_initWithPhysicalButton:(void *)a3 generation:(void *)a4 auditToken:(void *)a5 identifier:
{
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = SBFPhysicalButtonTarget;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      v11[1] = a2;
      v11[2] = a3;
      v11[4] = a5;
      objc_storeStrong(v11 + 3, a4);
    }
  }

  return a1;
}

@end