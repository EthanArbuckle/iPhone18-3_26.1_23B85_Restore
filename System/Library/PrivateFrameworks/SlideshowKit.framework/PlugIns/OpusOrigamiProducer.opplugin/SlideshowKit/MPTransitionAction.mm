@interface MPTransitionAction
+ (id)transitionAction;
- (MPTransitionAction)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureTarget;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setTransitionAttributes:(id)a3;
- (void)setTransitionDestination:(id)a3;
- (void)setTransitionDuration:(double)a3;
- (void)setTransitionID:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPTransitionAction;
  v4 = [(MPAction *)&v6 copyWithZone:a3];
  [v4 setTransitionAttributes:self->_transitionAttributes];
  [v4 setTransitionID:self->_transitionID];
  [v4 setTransitionDuration:self->_transitionDuration];
  [v4 setTransitionDestination:self->_transitionDestination];
  return v4;
}

- (void)setTransitionAttributes:(id)a3
{
  transitionAttributes = self->_transitionAttributes;
  if (transitionAttributes)
  {

    self->_transitionAttributes = 0;
  }

  v6 = [a3 mutableCopy];
  self->_transitionAttributes = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setTransitionAttributes:v6];
  }
}

- (void)setTransitionID:(id)a3
{
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  v6 = [a3 copy];
  self->_transitionID = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setTransitionID:v6];
  }
}

- (void)setTransitionDuration:(double)a3
{
  self->_transitionDuration = a3;
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setTransitionDuration:?];
  }
}

- (void)setTransitionDestination:(id)a3
{
  transitionDestination = self->_transitionDestination;
  if (transitionDestination)
  {

    self->_transitionDestination = 0;
  }

  v6 = a3;
  self->_transitionDestination = v6;
  if (self->super._action)
  {
    v7 = [(MPActionableSupport *)v6 plugID];
    action = self->super._action;

    [(MCAction *)action setTransitionDestinationPlugID:v7];
  }
}

- (void)setAction:(id)a3
{
  v8.receiver = self;
  v8.super_class = MPTransitionAction;
  [(MPAction *)&v8 setAction:a3];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setTransitionAttributes:self->_transitionAttributes];
    [(MCAction *)self->super._action setTransitionID:self->_transitionID];
    [(MCAction *)self->super._action setTransitionDuration:self->_transitionDuration];
    v5 = [(MPAction *)self parentDocument];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        v6 = [v5 actionableObjectForID:self->_transitionDestination];
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
  v3 = [(MPAction *)self parentDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v4 = [v3 actionableObjectForID:self->_transitionDestination];
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