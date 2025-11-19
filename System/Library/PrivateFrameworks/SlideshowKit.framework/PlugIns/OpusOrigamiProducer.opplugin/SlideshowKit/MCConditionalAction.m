@interface MCConditionalAction
+ (id)conditionalActionWithPredicate:(id)a3;
+ (id)conditionalActionWithPredicate:(id)a3 actionIfTrue:(id)a4 actionIfFalse:(id)a5;
- (MCConditionalAction)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (id)setActionGroupForCondition:(BOOL)a3;
- (id)setAnimationTriggerForTargetPlugObjectID:(id)a3 withAnimationKey:(id)a4 forCondition:(BOOL)a5;
- (id)setConditionalActionWithPredicate:(id)a3 forCondition:(BOOL)a4;
- (id)setGenericActionForTargetPlugObjectID:(id)a3 withAttributes:(id)a4 forCondition:(BOOL)a5;
- (id)setTransitionForTargetPlugObjectID:(id)a3 withTransitionID:(id)a4 forCondition:(BOOL)a5;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCConditionalAction

+ (id)conditionalActionWithPredicate:(id)a3
{
  v4 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v4 setPredicate:a3];

  return v4;
}

+ (id)conditionalActionWithPredicate:(id)a3 actionIfTrue:(id)a4 actionIfFalse:(id)a5
{
  v8 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v8 setPredicate:a3];
  [(MCConditionalAction *)v8 setActionIfTrue:a4];
  [(MCConditionalAction *)v8 setActionIfFalse:a5];

  return v8;
}

- (MCConditionalAction)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCConditionalAction;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_predicate = [a3 objectForKey:@"predicate"];
    v4->_actionIfTrue = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [a3 objectForKey:@"actionIfTrue"]);
    v4->_actionIfFalse = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [a3 objectForKey:@"actionIfFalse"]);
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
  v3 = [(MCAction *)&v9 imprint];
  v4 = v3;
  predicate = self->_predicate;
  if (predicate)
  {
    [v3 setObject:predicate forKey:@"predicate"];
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

- (id)setTransitionForTargetPlugObjectID:(id)a3 withTransitionID:(id)a4 forCondition:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MCTransitionTrigger);
  [(MCAction *)v9 setTargetObjectID:a3];
  [(MCTransitionTrigger *)v9 setTransitionID:a4];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (v5)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setAnimationTriggerForTargetPlugObjectID:(id)a3 withAnimationKey:(id)a4 forCondition:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MCAnimationTrigger);
  [(MCAction *)v9 setTargetObjectID:a3];
  [(MCAnimationTrigger *)v9 setAnimationKey:a4];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (v5)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setGenericActionForTargetPlugObjectID:(id)a3 withAttributes:(id)a4 forCondition:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MCGenericAction);
  [(MCAction *)v9 setTargetObjectID:a3];
  [(MCGenericAction *)v9 setAttributes:a4];
  v10 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (v5)
  {
    v10 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v10) = v9;
  return v9;
}

- (id)setActionGroupForCondition:(BOOL)a3
{
  v3 = a3;
  result = objc_alloc_init(MCActionGroup);
  v6 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (v3)
  {
    v6 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v6) = result;
  return result;
}

- (id)setConditionalActionWithPredicate:(id)a3 forCondition:(BOOL)a4
{
  v4 = a4;
  v7 = objc_alloc_init(MCConditionalAction);
  [(MCConditionalAction *)v7 setPredicate:a3];
  v8 = &OBJC_IVAR___MCConditionalAction__actionIfFalse;
  if (v4)
  {
    v8 = &OBJC_IVAR___MCConditionalAction__actionIfTrue;
  }

  *(&self->super.super.super.super.isa + *v8) = v7;
  return v7;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v8.receiver = self;
  v8.super_class = MCConditionalAction;
  [(MCAction *)&v8 _copySelfToSnapshot:?];
  predicate = self->_predicate;
  if (predicate)
  {
    *(a3 + 3) = [(NSString *)predicate copy];
  }

  actionIfTrue = self->_actionIfTrue;
  if (actionIfTrue)
  {
    *(a3 + 4) = [(MCAction *)actionIfTrue snapshot];
  }

  actionIfFalse = self->_actionIfFalse;
  if (actionIfFalse)
  {
    *(a3 + 5) = [(MCAction *)actionIfFalse snapshot];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCConditionalAction;
  return [-[MCAction description](&v3 "description")];
}

@end