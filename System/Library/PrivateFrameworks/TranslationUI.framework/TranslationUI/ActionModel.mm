@interface ActionModel
- (_TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel)init;
- (void)performActionWithSender:(id)a3;
@end

@implementation ActionModel

- (void)performActionWithSender:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel_action);
  v4 = *&self->action[OBJC_IVAR____TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel_action];
  v6 = self;

  v3(v5);
}

- (_TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel_action);
  *v2 = CGPointMake;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActionModel();
  return [(ActionModel *)&v4 init];
}

@end