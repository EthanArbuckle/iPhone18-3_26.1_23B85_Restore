@interface SUOperationProgress
- (SUOperationProgress)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUOperationProgress

- (SUOperationProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUOperationProgress *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    [(SUOperationProgress *)v5 setPhase:v6];

    [v4 decodeFloatForKey:@"percentComplete"];
    [(SUOperationProgress *)v5 setPercentComplete:?];
    [v4 decodeFloatForKey:@"normalizedPercentComplete"];
    [(SUOperationProgress *)v5 setNormalizedPercentComplete:?];
    [v4 decodeDoubleForKey:@"timeRemaining"];
    [(SUOperationProgress *)v5 setTimeRemaining:?];
    -[SUOperationProgress setIsDone:](v5, "setIsDone:", [v4 decodeBoolForKey:@"isDone"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(SUOperationProgress *)self phase];
  [v5 encodeObject:v4 forKey:@"phase"];

  [(SUOperationProgress *)self percentComplete];
  [v5 encodeFloat:@"percentComplete" forKey:?];
  [(SUOperationProgress *)self normalizedPercentComplete];
  [v5 encodeFloat:@"normalizedPercentComplete" forKey:?];
  [(SUOperationProgress *)self timeRemaining];
  [v5 encodeDouble:@"timeRemaining" forKey:?];
  [v5 encodeBool:-[SUOperationProgress isDone](self forKey:{"isDone"), @"isDone"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SUOperationProgress *)self phase];
  [v4 setPhase:v5];

  [(SUOperationProgress *)self percentComplete];
  [v4 setPercentComplete:?];
  [(SUOperationProgress *)self normalizedPercentComplete];
  [v4 setNormalizedPercentComplete:?];
  [(SUOperationProgress *)self timeRemaining];
  [v4 setTimeRemaining:?];
  [v4 setIsDone:{-[SUOperationProgress isDone](self, "isDone")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUOperationProgress *)self phase];
  v5 = MEMORY[0x277CCABB8];
  v6 = MEMORY[0x277CCABB0];
  [(SUOperationProgress *)self percentComplete];
  v7 = [v6 numberWithFloat:?];
  v8 = [v5 localizedStringFromNumber:v7 numberStyle:1];
  v9 = MEMORY[0x277CCABB8];
  v10 = MEMORY[0x277CCABB0];
  [(SUOperationProgress *)self normalizedPercentComplete];
  v11 = [v10 numberWithFloat:?];
  v12 = [v9 localizedStringFromNumber:v11 numberStyle:1];
  v13 = MEMORY[0x277CCABB8];
  v14 = MEMORY[0x277CCABB0];
  [(SUOperationProgress *)self timeRemaining];
  *&v15 = v15;
  v16 = [v14 numberWithFloat:v15];
  v17 = [v13 localizedStringFromNumber:v16 numberStyle:1];
  v18 = [v3 stringWithFormat:@"\n            \tPhase: %@\n            \tPercentComplete: %@\n            \tNormalizedPercentComplete: %@\n            \tTimeRemaining: %@", v4, v8, v12, v17];

  return v18;
}

@end