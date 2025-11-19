@interface Legacy.JSLocalizerObject
- (NSString)identifier;
- (_TtCO10PodcastsUI6Legacy17JSLocalizerObject)init;
- (id)friendlyDate:(id)a3;
- (id)timeRange:(id)a3 :(id)a4 :(id)a5;
- (id)timeRangeWithFormat:(id)a3 :(id)a4 :(id)a5 :(id)a6;
@end

@implementation Legacy.JSLocalizerObject

- (NSString)identifier
{

  v2 = sub_21B4C96C8();

  return v2;
}

- (id)friendlyDate:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (a3)
  {
    sub_21B4C5838();
    v10 = sub_21B4C5858();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = sub_21B4C5858();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  sub_21B46411C(v9, v6);
  sub_21B4C5858();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_21B3F2D94(v9, &qword_27CD87538);
    sub_21B3F2D94(v6, &qword_27CD87538);
    v12 = 0;
  }

  else
  {
    sub_21B4C57B8();
    sub_21B3F2D94(v9, &qword_27CD87538);
    (*(v11 + 8))(v6, v10);
    v13 = sub_21B4C96C8();

    v12 = v13;
  }

  return v12;
}

- (id)timeRange:(id)a3 :(id)a4 :(id)a5
{
  v6 = sub_21B4C5858();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_21B4C5838();
  sub_21B4C5838();
  v13 = sub_21B4C9708();
  v15 = v14;
  v16 = self;
  v17 = sub_21B463844(v13, v15);

  v18 = sub_21B4C5818();
  v19 = sub_21B4C5818();
  v20 = [v17 stringFromDate:v18 toDate:v19];

  if (!v20)
  {
    sub_21B4C9708();
    v20 = sub_21B4C96C8();
  }

  v21 = *(v7 + 8);
  v21(v9, v6);
  v21(v12, v6);

  return v20;
}

- (id)timeRangeWithFormat:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v8 = sub_21B4C5858();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_21B4C5838();
  sub_21B4C5838();
  v15 = sub_21B4C9708();
  v17 = v16;
  if (a6)
  {
    v18 = sub_21B4C9708();
    a6 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = self;
  sub_21B463B98(v14, v11, v15, v17, v18, a6);

  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  v22 = sub_21B4C96C8();

  return v22;
}

- (_TtCO10PodcastsUI6Legacy17JSLocalizerObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end