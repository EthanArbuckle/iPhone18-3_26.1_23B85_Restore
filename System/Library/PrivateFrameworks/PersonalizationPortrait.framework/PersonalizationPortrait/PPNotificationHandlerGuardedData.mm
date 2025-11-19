@interface PPNotificationHandlerGuardedData
- (PPNotificationHandlerGuardedData)init;
@end

@implementation PPNotificationHandlerGuardedData

- (PPNotificationHandlerGuardedData)init
{
  v9.receiver = self;
  v9.super_class = PPNotificationHandlerGuardedData;
  v2 = [(PPNotificationHandlerGuardedData *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_delayedFiringInProgress = 0;
    v2->_lastFiringTimeSince1970 = 0.0;
    v4 = objc_opt_new();
    objects = v3->_objects;
    v3->_objects = v4;

    v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
    blockMap = v3->_blockMap;
    v3->_blockMap = v6;
  }

  return v3;
}

@end