@interface TTRUserDefaults
- (_TtC15RemindersUICore15TTRUserDefaults)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation TTRUserDefaults

- (_TtC15RemindersUICore15TTRUserDefaults)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  *(&self->super.isa + v4) = sub_21D0CC778();
  *(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers) = MEMORY[0x277D84F98];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TTRUserDefaults *)&v6 init];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_21DBFA16C();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v14 = a5;
    v15 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_21DA60E3C(&qword_27CE57F28, type metadata accessor for NSKeyValueChangeKey);
    sub_21DBF9E6C();
  }

LABEL_7:
  _s15RemindersUICore15TTRUserDefaultsC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(v9, v11, v16);

  sub_21D0CF7E0(v16, &qword_27CE5C690);
}

@end