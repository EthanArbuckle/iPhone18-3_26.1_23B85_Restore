@interface PCStatusConditions
+ (void)clearStatusCondition:(id)condition completionHandler:(id)handler;
+ (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)setStatusCondition:(id)condition completionHandler:(id)handler;
@end

@implementation PCStatusConditions

+ (void)setStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if (!conditionCopy)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = -1102;
LABEL_7:
    v6 = [v7 errorWithDomain:@"PCStatusConditionsErrorDomain" code:v8 userInfo:0];
    handlerCopy[2](handlerCopy, v6);
    goto LABEL_8;
  }

  if (!MKBDeviceUnlockedSinceBoot())
  {
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = -1101;
    goto LABEL_7;
  }

  v6 = objc_alloc_init(PCStatusConditionsImpl);
  [(PCStatusConditionsImpl *)v6 setStatusCondition:conditionCopy completionHandler:handlerCopy];
LABEL_8:

LABEL_9:
}

+ (void)clearStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if (!conditionCopy)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = -1102;
LABEL_7:
    v6 = [v7 errorWithDomain:@"PCStatusConditionsErrorDomain" code:v8 userInfo:0];
    handlerCopy[2](handlerCopy, v6);
    goto LABEL_8;
  }

  if (!MKBDeviceUnlockedSinceBoot())
  {
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = -1101;
    goto LABEL_7;
  }

  v6 = objc_alloc_init(PCStatusConditionsImpl);
  [(PCStatusConditionsImpl *)v6 clearStatusCondition:conditionCopy completionHandler:handlerCopy];
LABEL_8:

LABEL_9:
}

+ (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  registeredCopy = registered;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!registeredCopy || !identifierCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = -1102;
LABEL_6:
    v9 = [v10 errorWithDomain:@"PCStatusConditionsErrorDomain" code:v11 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
    goto LABEL_7;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    v9 = objc_alloc_init(PCStatusConditionsImpl);
    [(PCStatusConditionsImpl *)v9 isStatusConditionRegistered:registeredCopy bundleIdentifier:identifierCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = -1101;
    goto LABEL_6;
  }

LABEL_8:
}

@end