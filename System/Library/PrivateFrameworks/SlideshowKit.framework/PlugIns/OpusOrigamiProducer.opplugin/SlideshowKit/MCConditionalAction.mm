@interface MCConditionalAction
+ (id)conditionalActionWithPredicate:(id)predicate;
+ (id)conditionalActionWithPredicate:(id)predicate actionIfTrue:(id)true actionIfFalse:(id)false;
- (MCConditionalAction)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (id)setActionGroupForCondition:(BOOL)condition;
- (id)setAnimationTriggerForTargetPlugObjectID:(id)d withAnimationKey:(id)key forCondition:(BOOL)condition;
- (id)setConditionalActionWithPredicate:(id)predicate forCondition:(BOOL)condition;
- (id)setGenericActionForTargetPlugObjectID:(id)d withAttributes:(id)attributes forCondition:(BOOL)condition;
- (id)setTransitionForTargetPlugObjectID:(id)d withTransitionID:(id)iD forCondition:(BOOL)condition;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCConditionalAction

+ (id)conditionalActionWithPredicate:(id)predicate
{
  v4 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v4 setPredicate:predicate];

  return v4;
}

+ (id)conditionalActionWithPredicate:(id)predicate actionIfTrue:(id)true actionIfFalse:(id)false
{
  v8 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v8 setPredicate:predicate];
  [(MCConditionalAction *)v8 setActionIfTrue:true];
  [(MCConditionalAction *)v8 setActionIfFalse:false];

  return v8;
}

- (MCConditionalAction)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCConditionalAction;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_predicate = [imprint objectForKey:@"predicate"];
    v4->_actionIfTrue = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [imprint objectForKey:@"actionIfTrue"]);
    v4->_actionIfFalse = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [imprint objectForKey:@"actionIfFalse"]);
  }

  return v4;
}

- (void)demolish
{
  self->_predicate = 0;

  self->_actionIfTrue = 0;
  self->_actionIfFalse = 0;
  v3.receiver = self;
  v3.super_class = MCConditionalAction;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v9.receiver = self;
  v9.super_class = MCConditionalAction;
  imprint = [(MCAction *)&v9 imprint];
  v4 = imprint;
  predicate = self->_predicate;
  if (predicate)
  {
    [imprint setObject:predicate forKey:@"predicate"];
  }

  actionIfTrue = self->_actionIfTrue;
  if (actionIfTrue)
  {
    [v4 setObject:-[MCAction imprint](actionIfTrue forKey:{"imprint"), @"actionIfTrue"}];
  }

  actionIfFalse = self->_actionIfFalse;
  if (actionIfFalse)
  {
    [v4 setObject:-[MCAction imprint](actionIfFalse forKey:{"imprint"), @"actionIfFalse"}];
  }

  return v4;
}

- (id)setTransitionForTargetPlugObjectID:(id)d withTransitionID:(id)iD forCondition:(BOOL)condition
{
  conditionCopy = condition;
  v9 = objc_alloc_init(MCTransitionTrigger);
  [(MCAction *)v9 setTargetObjectID:d];
  [(MCTransitionTrigger *)v9 setTransitionID:iD];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (conditionCopy)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setAnimationTriggerForTargetPlugObjectID:(id)d withAnimationKey:(id)key forCondition:(BOOL)condition
{
  conditionCopy = condition;
  v9 = objc_alloc_init(MCAnimationTrigger);
  [(MCAction *)v9 setTargetObjectID:d];
  [(MCAnimationTrigger *)v9 setAnimationKey:key];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (conditionCopy)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setGenericActionForTargetPlugObjectID:(id)d withAttributes:(id)attributes forCondition:(BOOL)condition
{
  conditionCopy = condition;
  v9 = objc_alloc_init(MCGenericAction);
  [(MCAction *)v9 setTargetObjectID:d];
  [(MCGenericAction *)v9 setAttributes:attributes];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (conditionCopy)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setActionGroupForCondition:(BOOL)condition
{
  conditionCopy = condition;
  result = objc_alloc_init(MCActionGroup);
  v6 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (conditionCopy)
  {
    v6 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v6) = result;
  return result;
}

- (id)setConditionalActionWithPredicate:(id)predicate forCondition:(BOOL)condition
{
  conditionCopy = condition;
  v7 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v7 setPredicate:predicate];
  v8 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (conditionCopy)
  {
    v8 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v8) = v7;
  return v7;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v8.receiver = self;
  v8.super_class = MCConditionalAction;
  [(MCAction *)&v8 _copySelfToSnapshot:?];
  predicate = self->_predicate;
  if (predicate)
  {
    *(snapshot + 3) = [(NSString *)predicate copy];
  }

  actionIfTrue = self->_actionIfTrue;
  if (actionIfTrue)
  {
    *(snapshot + 4) = [(MCAction *)actionIfTrue snapshot];
  }

  actionIfFalse = self->_actionIfFalse;
  if (actionIfFalse)
  {
    *(snapshot + 5) = [(MCAction *)actionIfFalse snapshot];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCConditionalAction;
  return [-[MCAction description](&v3 "description")];
}

@end