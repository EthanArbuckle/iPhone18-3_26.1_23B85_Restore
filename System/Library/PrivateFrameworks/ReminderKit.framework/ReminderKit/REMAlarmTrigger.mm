@interface REMAlarmTrigger
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (REMAlarmTrigger)init;
- (REMAlarmTrigger)initWithAlarmTrigger:(id)trigger objectID:(id)d;
- (REMAlarmTrigger)initWithCoder:(id)coder;
- (REMAlarmTrigger)initWithObjectID:(id)d;
- (id)_deepCopy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmTrigger

- (REMAlarmTrigger)initWithObjectID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = REMAlarmTrigger;
  v6 = [(REMAlarmTrigger *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = objc_opt_class();
  if (![v7 isEqual:objc_opt_class()])
  {
    objc_storeStrong(&v6->_objectID, d);
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Attempting to instantiate an abstract class. Please use a subclass of REMAlarmTrigger."];
  v8 = 0;
LABEL_6:

  return v8;
}

- (REMAlarmTrigger)initWithAlarmTrigger:(id)trigger objectID:(id)d
{
  dCopy = d;
  _deepCopy = [trigger _deepCopy];

  objectID = _deepCopy->_objectID;
  _deepCopy->_objectID = dCopy;

  return _deepCopy;
}

- (REMAlarmTrigger)init
{
  newObjectID = [objc_opt_class() newObjectID];
  v4 = [(REMAlarmTrigger *)self initWithObjectID:newObjectID];

  return v4;
}

- (REMAlarmTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];

  v6 = [(REMAlarmTrigger *)self initWithObjectID:v5];
  return v6;
}

- (id)_deepCopy
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMAlarmTrigger *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

@end