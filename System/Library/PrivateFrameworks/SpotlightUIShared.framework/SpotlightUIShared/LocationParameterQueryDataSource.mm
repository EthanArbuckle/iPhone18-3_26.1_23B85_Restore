@interface LocationParameterQueryDataSource
- (_TtC17SpotlightUIShared32LocationParameterQueryDataSource)init;
- (void)completer:(id)a3 didFailWithError:(id)a4;
- (void)completerDidUpdateResults:(id)a3;
@end

@implementation LocationParameterQueryDataSource

- (_TtC17SpotlightUIShared32LocationParameterQueryDataSource)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  DataSource = type metadata accessor for LocationParameterQueryDataSource();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = DataSource;
  return [(LocationParameterQueryDataSource *)&v7 init];
}

- (void)completerDidUpdateResults:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = a3;
  v10 = self;
  v11 = [v9 results];
  sub_26B9294B8(0, &qword_280426FA8, 0x277CD4E30);
  v12 = sub_26B9AC6F4();

  v13 = sub_26B9AC824();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = v10;
  v15 = sub_26B92A538();
  swift_beginAccess();
  v16 = *v15;
  v17 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v14;
  v18[5] = v12;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v8, &unk_26B9B5280, v18);
}

- (void)completer:(id)a3 didFailWithError:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_26B9AC824();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = self;
  v11 = sub_26B92A538();
  swift_beginAccess();
  v12 = *v11;
  v13 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v10;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v8, &unk_26B9B5278, v14);
}

@end