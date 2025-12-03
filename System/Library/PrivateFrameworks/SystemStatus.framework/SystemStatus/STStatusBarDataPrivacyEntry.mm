@interface STStatusBarDataPrivacyEntry
+ (id)entryWithCamera:(BOOL)camera microphone:(BOOL)microphone location:(BOOL)location;
- (STStatusBarDataPrivacyEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataPrivacyEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataPrivacyEntry

+ (id)entryWithCamera:(BOOL)camera microphone:(BOOL)microphone location:(BOOL)location
{
  result = [self entry];
  *(result + 9) = camera;
  *(result + 10) = microphone;
  *(result + 11) = location;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPrivacyEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:*(&self->super._enabled + 1) forKey:{@"camera", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:*(&self->super._enabled + 2) forKey:@"microphone"];
  [coderCopy encodeBool:*(&self->super._enabled + 3) forKey:@"location"];
}

- (STStatusBarDataPrivacyEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataPrivacyEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  *(&v4->super._enabled + 1) = [coderCopy decodeBoolForKey:{@"camera", v7.receiver, v7.super_class}];
  *(&v4->super._enabled + 2) = [coderCopy decodeBoolForKey:@"microphone"];
  v5 = [coderCopy decodeBoolForKey:@"location"];

  *(&v4->super._enabled + 3) = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPrivacyEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataPrivacyEntry camera](self withName:{"camera"), @"camera"}];
  v5 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataPrivacyEntry microphone](self withName:{"microphone"), @"microphone"}];
  v6 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataPrivacyEntry location](self withName:{"location"), @"location"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v23.receiver = self;
  v23.super_class = STStatusBarDataPrivacyEntry;
  v5 = [(STStatusBarDataEntry *)&v23 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  camera = [(STStatusBarDataPrivacyEntry *)self camera];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke;
  v21[3] = &unk_1E85DDD50;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendBool:camera counterpart:v21];
  microphone = [(STStatusBarDataPrivacyEntry *)self microphone];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke_2;
  v19[3] = &unk_1E85DDD50;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendBool:microphone counterpart:v19];
  location = [(STStatusBarDataPrivacyEntry *)self location];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke_3;
  v17[3] = &unk_1E85DDD50;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:location counterpart:v17];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPrivacyEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [_hashBuilder appendBool:{-[STStatusBarDataPrivacyEntry camera](self, "camera")}];
  v5 = [_hashBuilder appendBool:{-[STStatusBarDataPrivacyEntry microphone](self, "microphone")}];
  v6 = [_hashBuilder appendBool:{-[STStatusBarDataPrivacyEntry location](self, "location")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPrivacyEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:*(&self->super._enabled + 1) forKey:{@"camera", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:*(&self->super._enabled + 2) forKey:@"microphone"];
  [coderCopy encodeBool:*(&self->super._enabled + 3) forKey:@"location"];
}

- (STStatusBarDataPrivacyEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataPrivacyEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *(&v5->super._enabled + 1) = [coderCopy decodeBoolForKey:@"camera"];
    *(&v5->super._enabled + 2) = [coderCopy decodeBoolForKey:@"microphone"];
    *(&v5->super._enabled + 3) = [coderCopy decodeBoolForKey:@"location"];
  }

  return v5;
}

@end