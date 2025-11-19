@interface SUIAppIntentsQueryHelper
- (SUIAppIntentsQueryHelper)init;
- (void)updateSearchString:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation SUIAppIntentsQueryHelper

- (SUIAppIntentsQueryHelper)init
{
  v2 = (&self->super.isa + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AppIntentsQueryHelper();
  return [(SUIAppIntentsQueryHelper *)&v4 init];
}

- (void)updateSearchString:(NSString *)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26B9AC824();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26B9B02F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26B9B0300;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_26B905410(0, 0, v9, &unk_26B9B0310, v14);
}

@end