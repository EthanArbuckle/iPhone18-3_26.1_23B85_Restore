@interface STStatusBarDataPrivacyEntry
+ (id)entryWithCamera:(BOOL)a3 microphone:(BOOL)a4 location:(BOOL)a5;
- (STStatusBarDataPrivacyEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataPrivacyEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataPrivacyEntry

+ (id)entryWithCamera:(BOOL)a3 microphone:(BOOL)a4 location:(BOOL)a5
{
  result = [a1 entry];
  *(result + 9) = a3;
  *(result + 10) = a4;
  *(result + 11) = a5;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPrivacyEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:{@"camera", v5.receiver, v5.super_class}];
  [v4 encodeBool:*(&self->super._enabled + 2) forKey:@"microphone"];
  [v4 encodeBool:*(&self->super._enabled + 3) forKey:@"location"];
}

- (STStatusBarDataPrivacyEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataPrivacyEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:v3];
  *(&v4->super._enabled + 1) = [v3 decodeBoolForKey:{@"camera", v7.receiver, v7.super_class}];
  *(&v4->super._enabled + 2) = [v3 decodeBoolForKey:@"microphone"];
  v5 = [v3 decodeBoolForKey:@"location"];

  *(&v4->super._enabled + 3) = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPrivacyEntry;
  v3 = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [v3 appendBool:-[STStatusBarDataPrivacyEntry camera](self withName:{"camera"), @"camera"}];
  v5 = [v3 appendBool:-[STStatusBarDataPrivacyEntry microphone](self withName:{"microphone"), @"microphone"}];
  v6 = [v3 appendBool:-[STStatusBarDataPrivacyEntry location](self withName:{"location"), @"location"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = STStatusBarDataPrivacyEntry;
  v5 = [(STStatusBarDataEntry *)&v23 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataPrivacyEntry *)self camera];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke;
  v21[3] = &unk_1E85DDD50;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendBool:v7 counterpart:v21];
  v10 = [(STStatusBarDataPrivacyEntry *)self microphone];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke_2;
  v19[3] = &unk_1E85DDD50;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendBool:v10 counterpart:v19];
  v13 = [(STStatusBarDataPrivacyEntry *)self location];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__STStatusBarDataPrivacyEntry__equalsBuilderWithObject___block_invoke_3;
  v17[3] = &unk_1E85DDD50;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:v13 counterpart:v17];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPrivacyEntry;
  v3 = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [v3 appendBool:{-[STStatusBarDataPrivacyEntry camera](self, "camera")}];
  v5 = [v3 appendBool:{-[STStatusBarDataPrivacyEntry microphone](self, "microphone")}];
  v6 = [v3 appendBool:{-[STStatusBarDataPrivacyEntry location](self, "location")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPrivacyEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:{@"camera", v5.receiver, v5.super_class}];
  [v4 encodeBool:*(&self->super._enabled + 2) forKey:@"microphone"];
  [v4 encodeBool:*(&self->super._enabled + 3) forKey:@"location"];
}

- (STStatusBarDataPrivacyEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataPrivacyEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    *(&v5->super._enabled + 1) = [v4 decodeBoolForKey:@"camera"];
    *(&v5->super._enabled + 2) = [v4 decodeBoolForKey:@"microphone"];
    *(&v5->super._enabled + 3) = [v4 decodeBoolForKey:@"location"];
  }

  return v5;
}

@end