@interface OZFxPlugParameterHandlerUIUpdate
+ (id)updateWithParamID:(int)d notificationFlags:(unsigned int)flags;
@end

@implementation OZFxPlugParameterHandlerUIUpdate

+ (id)updateWithParamID:(int)d notificationFlags:(unsigned int)flags
{
  v6 = objc_alloc_init(OZFxPlugParameterHandlerUIUpdate);
  v6->_paramID = d;
  v6->_notificationFlags = flags;
  v7 = v6;
  return v6;
}

@end