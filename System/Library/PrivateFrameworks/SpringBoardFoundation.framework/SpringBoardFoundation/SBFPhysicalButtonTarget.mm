@interface SBFPhysicalButtonTarget
+ (id)targetWithPhysicalButton:(unint64_t)button generation:(unint64_t)generation auditToken:(id)token identifier:(unint64_t)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPhysicalButton:(void *)button generation:(void *)generation auditToken:(void *)token identifier:;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation SBFPhysicalButtonTarget

+ (id)targetWithPhysicalButton:(unint64_t)button generation:(unint64_t)generation auditToken:(id)token identifier:(unint64_t)identifier
{
  tokenCopy = token;
  v11 = [(SBFPhysicalButtonTarget *)[self alloc] _initWithPhysicalButton:button generation:generation auditToken:tokenCopy identifier:identifier];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  collectionLineBreakNoneStyle = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBFPhysicalButtonTarget_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_1E807F290;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
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

- (id)_initWithPhysicalButton:(void *)button generation:(void *)generation auditToken:(void *)token identifier:
{
  generationCopy = generation;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = SBFPhysicalButtonTarget;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      v11[1] = a2;
      v11[2] = button;
      v11[4] = token;
      objc_storeStrong(v11 + 3, generation);
    }
  }

  return self;
}

@end