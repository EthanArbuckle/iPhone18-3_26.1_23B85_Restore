@interface MCTransitionTrigger
+ (id)transitionForTargetPlugObjectID:(id)a3 withTransitionID:(id)a4;
- (MCTransitionTrigger)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCTransitionTrigger

+ (id)transitionForTargetPlugObjectID:(id)a3 withTransitionID:(id)a4
{
  v6 = objc_alloc_init(MCTransitionTrigger);
  [(MCAction *)v6 setTargetObjectID:a3];
  [(MCTransitionTrigger *)v6 setTransitionID:a4];

  return v6;
}

- (MCTransitionTrigger)initWithImprint:(id)a3
{
  v8.receiver = self;
  v8.super_class = MCTransitionTrigger;
  v4 = [(MCAction *)&v8 initWithImprint:?];
  if (v4)
  {
    v4->_transitionID = [a3 objectForKey:@"transitionID"];
    v5 = [a3 objectForKey:@"transitionDuration"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0.0;
    }

    v4->_transitionDuration = v6;
    v4->_transitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"transitionAttributes"}];
    v4->_transitionDestinationPlugID = [a3 objectForKey:@"transitionDestinationPlugID"];
  }

  return v4;
}

- (void)demolish
{
  self->_transitionID = 0;

  self->_transitionAttributes = 0;
  self->_transitionDestinationPlugID = 0;
  v3.receiver = self;
  v3.super_class = MCTransitionTrigger;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v9.receiver = self;
  v9.super_class = MCTransitionTrigger;
  v3 = [(MCAction *)&v9 imprint];
  v4 = v3;
  transitionID = self->_transitionID;
  if (transitionID)
  {
    [v3 setObject:transitionID forKey:@"transitionID"];
  }

  if (self->_transitionDuration != 0.0)
  {
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"transitionDuration"}];
  }

  transitionAttributes = self->_transitionAttributes;
  if (transitionAttributes)
  {
    [v4 setObject:transitionAttributes forKey:@"transitionAttributes"];
  }

  transitionDestinationPlugID = self->_transitionDestinationPlugID;
  if (transitionDestinationPlugID)
  {
    [v4 setObject:transitionDestinationPlugID forKey:@"transitionDestinationPlugID"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = MCTransitionTrigger;
  [(MCAction *)&v8 _copySelfToSnapshot:a3];
  transitionID = self->_transitionID;
  if (transitionID)
  {
    *(a3 + 4) = [(NSString *)transitionID copy];
  }

  *(a3 + 5) = *&self->_transitionDuration;
  transitionAttributes = self->_transitionAttributes;
  if (transitionAttributes)
  {
    *(a3 + 3) = [(NSMutableDictionary *)transitionAttributes copy];
  }

  transitionDestinationPlugID = self->_transitionDestinationPlugID;
  if (transitionDestinationPlugID)
  {
    *(a3 + 6) = [(NSString *)transitionDestinationPlugID copy];
  }

  objc_sync_exit(self);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCTransitionTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end