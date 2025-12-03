@interface MPTransitionAction
+ (id)transitionAction;
- (MPTransitionAction)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureTarget;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setTransitionAttributes:(id)attributes;
- (void)setTransitionDestination:(id)destination;
- (void)setTransitionDuration:(double)duration;
- (void)setTransitionID:(id)d;
@end

@implementation MPTransitionAction

+ (id)transitionAction
{
  v2 = objc_alloc_init(MPTransitionAction);

  return v2;
}

- (MPTransitionAction)init
{
  v3.receiver = self;
  v3.super_class = MPTransitionAction;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_transitionAttributes = 0;
    result->_transitionDuration = 0.0;
    result->_transitionID = 0;
    result->_transitionDestination = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPTransitionAction;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPTransitionAction;
  v4 = [(MPAction *)&v6 copyWithZone:zone];
  [v4 setTransitionAttributes:self->_transitionAttributes];
  [v4 setTransitionID:self->_transitionID];
  [v4 setTransitionDuration:self->_transitionDuration];
  [v4 setTransitionDestination:self->_transitionDestination];
  return v4;
}

- (void)setTransitionAttributes:(id)attributes
{
  transitionAttributes = self->_transitionAttributes;
  if (transitionAttributes)
  {

    self->_transitionAttributes = 0;
  }

  v6 = [attributes mutableCopy];
  self->_transitionAttributes = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setTransitionAttributes:v6];
  }
}

- (void)setTransitionID:(id)d
{
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  v6 = [d copy];
  self->_transitionID = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setTransitionID:v6];
  }
}

- (void)setTransitionDuration:(double)duration
{
  self->_transitionDuration = duration;
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setTransitionDuration:?];
  }
}

- (void)setTransitionDestination:(id)destination
{
  transitionDestination = self->_transitionDestination;
  if (transitionDestination)
  {

    self->_transitionDestination = 0;
  }

  destinationCopy = destination;
  self->_transitionDestination = destinationCopy;
  if (self->super._action)
  {
    plugID = [(MPActionableSupport *)destinationCopy plugID];
    action = self->super._action;

    [(MCAction *)action setTransitionDestinationPlugID:plugID];
  }
}

- (void)setAction:(id)action
{
  v8.receiver = self;
  v8.super_class = MPTransitionAction;
  [(MPAction *)&v8 setAction:action];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setTransitionAttributes:self->_transitionAttributes];
    [(MCAction *)self->super._action setTransitionID:self->_transitionID];
    [(MCAction *)self->super._action setTransitionDuration:self->_transitionDuration];
    parentDocument = [(MPAction *)self parentDocument];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (parentDocument)
      {
        v6 = [parentDocument actionableObjectForID:self->_transitionDestination];
        if (v6)
        {
          v7 = v6;

          self->_transitionDestination = v7;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(MCAction *)self->super._action setTransitionDestinationPlugID:[(MPActionableSupport *)self->_transitionDestination plugID]];
    }
  }
}

- (void)configureTarget
{
  v6.receiver = self;
  v6.super_class = MPTransitionAction;
  [(MPAction *)&v6 configureTarget];
  parentDocument = [(MPAction *)self parentDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (parentDocument)
    {
      v4 = [parentDocument actionableObjectForID:self->_transitionDestination];
      if (v4)
      {
        v5 = v4;

        self->_transitionDestination = v5;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MCAction *)self->super._action setTransitionDestinationPlugID:[(MPActionableSupport *)self->_transitionDestination plugID]];
  }
}

@end