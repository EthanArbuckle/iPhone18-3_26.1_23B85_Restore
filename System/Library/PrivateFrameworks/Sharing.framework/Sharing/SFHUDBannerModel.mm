@interface SFHUDBannerModel
+ (id)descriptionForType:(int64_t)type;
+ (id)onenessUnlockedModel;
+ (id)pencilModel;
- (SFHUDBannerModel)initWithCoder:(id)coder;
- (SFHUDBannerModel)initWithType:(int64_t)type priority:(int)priority watchName:(id)name needsLockButton:(BOOL)button needsUpdate:(BOOL)update;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFHUDBannerModel

+ (id)onenessUnlockedModel
{
  v2 = [[SFHUDBannerModel alloc] initWithType:1 priority:1 watchName:0 needsLockButton:0 needsUpdate:0];

  return v2;
}

+ (id)pencilModel
{
  v2 = [[SFHUDBannerModel alloc] initWithType:2 priority:3 watchName:0 needsLockButton:0 needsUpdate:0];

  return v2;
}

- (SFHUDBannerModel)initWithType:(int64_t)type priority:(int)priority watchName:(id)name needsLockButton:(BOOL)button needsUpdate:(BOOL)update
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SFHUDBannerModel;
  v14 = [(SFHUDBannerModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v14->_priority = priority;
    objc_storeStrong(&v14->_watchName, name);
    v15->_needsLockButton = button;
    v15->_needsUpdate = update;
  }

  return v15;
}

+ (id)descriptionForType:(int64_t)type
{
  v3 = @".pairedUnlock";
  if (type == 1)
  {
    v3 = @".onenessUnlocked";
  }

  if (type == 2)
  {
    return @".pencil";
  }

  else
  {
    return v3;
  }
}

- (SFHUDBannerModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SFHUDBannerModel;
  v5 = [(SFHUDBannerModel *)&v10 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_priority = [coderCopy decodeIntForKey:@"priority"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchName"];
    v7 = [v6 copy];
    watchName = v5->_watchName;
    v5->_watchName = v7;

    v5->_needsLockButton = [coderCopy decodeBoolForKey:@"needsLockButton"];
    v5->_needsUpdate = [coderCopy decodeBoolForKey:@"needsUpdate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInt:self->_priority forKey:@"priority"];
  [coderCopy encodeObject:self->_watchName forKey:@"watchName"];
  [coderCopy encodeBool:self->_needsLockButton forKey:@"needsLockButton"];
  [coderCopy encodeBool:self->_needsUpdate forKey:@"needsUpdate"];
}

@end