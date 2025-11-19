@interface MPConditionalAction
+ (id)conditionalAction;
- (MPConditionalAction)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureActions;
- (void)configureTarget;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setAction:(id)a3 forCondition:(BOOL)a4;
- (void)setPredicate:(id)a3;
@end

@implementation MPConditionalAction

+ (id)conditionalAction
{
  v2 = objc_alloc_init(MPConditionalAction);

  return v2;
}

- (MPConditionalAction)init
{
  v3.receiver = self;
  v3.super_class = MPConditionalAction;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_predicate = 0;
    result->_actionIfTrue = 0;
    result->_actionIfFalse = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPConditionalAction;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MPConditionalAction;
  v4 = [(MPAction *)&v8 copyWithZone:a3];
  [v4 setPredicate:self->_predicate];
  v5 = [(MPAction *)self->_actionIfTrue copy];
  [v4 setAction:v5 forCondition:1];

  v6 = [(MPAction *)self->_actionIfFalse copy];
  [v4 setAction:v6 forCondition:0];

  return v4;
}

- (void)setPredicate:(id)a3
{
  predicate = self->_predicate;
  if (predicate)
  {

    self->_predicate = 0;
  }

  v6 = [a3 copy];
  self->_predicate = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setPredicate:v6];
  }
}

- (void)setAction:(id)a3 forCondition:(BOOL)a4
{
  v4 = a4;
  v7 = [-[MPAction parentDocument](self "parentDocument")];
  if (v7)
  {
    v8 = v7;
    if (v4)
    {
      v9 = [(MPConditionalAction *)self actionIfTrue];
    }

    else
    {
      v9 = [(MPConditionalAction *)self actionIfFalse];
    }

    [objc_msgSend(v8 prepareWithInvocationTarget:{self), "setAction:forCondition:", v9, v4}];
  }

  if (v4)
  {
    v10 = 40;
  }

  else
  {
    v10 = 48;
  }

  v11 = (&self->super.super.isa + v10);
  v12 = *(&self->super.super.isa + v10);
  if (v12)
  {
    [v12 setParent:0];

    *v11 = 0;
  }

  v13 = a3;
  *v11 = v13;
  [v13 setParent:self];

  [(MPConditionalAction *)self configureActions];
}

- (void)setAction:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPConditionalAction;
  [(MPAction *)&v5 setAction:a3];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setPredicate:self->_predicate];
  }

  [(MPConditionalAction *)self configureActions];
}

- (void)configureActions
{
  actionIfTrue = self->_actionIfTrue;
  do
  {
    if (!self->super._action)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v4 = [(MPAction *)actionIfTrue targetObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MCAnimationTrigger animationTriggerForTargetPlugObjectID:[v4 objectID] withAnimationKey:[(MPAction *)actionIfTrue animationKey]];
LABEL_8:
      v6 = v5;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MCActionTrigger actionTriggerForTargetPlugObjectID:[v4 objectID] withActionKey:[(MPAction *)actionIfTrue actionKey]];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MCConditionalAction conditionalActionWithPredicate:0];
      [(MCAction *)v6 setTargetObjectID:[v4 objectID]];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = +[MCActionGroup actionGroup];
        goto LABEL_8;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = +[MCGenericAction genericActionForTargetPlugObjectID:withAttributes:](MCGenericAction, "genericActionForTargetPlugObjectID:withAttributes:", -[NSObject objectID](v4, "objectID"), [0 attributes]);
        goto LABEL_8;
      }

      v6 = 0;
    }

LABEL_9:
    action = self->super._action;
    if (actionIfTrue == self->_actionIfTrue)
    {
      [(MCAction *)action setActionIfTrue:v6];
    }

    else
    {
      [(MCAction *)action setActionIfFalse:v6];
    }

LABEL_12:
    [(MPAction *)actionIfTrue setAction:v6];
    if (actionIfTrue != self->_actionIfTrue)
    {
      break;
    }

    actionIfTrue = self->_actionIfFalse;
  }

  while (actionIfTrue);
}

- (void)configureTarget
{
  v3.receiver = self;
  v3.super_class = MPConditionalAction;
  [(MPAction *)&v3 configureTarget];
  [(MPAction *)self->_actionIfFalse configureTarget];
  [(MPAction *)self->_actionIfTrue configureTarget];
}

@end