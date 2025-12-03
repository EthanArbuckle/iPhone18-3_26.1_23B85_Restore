@interface BKDirectTouchPerDisplayInfo
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)dealloc;
@end

@implementation BKDirectTouchPerDisplayInfo

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy appendProem:self block:&stru_1000F9A68];
  v4 = sub_100002D14(&self->super.isa);
  v5 = [formatterCopy appendObject:v4 withName:@"digitizers"];

  v6 = [formatterCopy appendObject:self->_touchStreams withName:@"touchStreams"];
  v7 = [formatterCopy appendObject:self->_hitTestRegions withName:@"hitTestRegions"];
}

- (void)dealloc
{
  touchStreams = self->_touchStreams;
  if (touchStreams)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSMutableArray *)touchStreams->_clients copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          sub_100093058(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9.receiver = self;
  v9.super_class = BKDirectTouchPerDisplayInfo;
  [(BKDirectTouchPerDisplayInfo *)&v9 dealloc];
}

@end