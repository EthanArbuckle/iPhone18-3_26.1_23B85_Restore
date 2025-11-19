@interface TipsContentModel
- (void)appController:(id)a3 loadingContent:(BOOL)a4;
- (void)appControllerContentUpdated:(id)a3;
@end

@implementation TipsContentModel

- (void)appControllerContentUpdated:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [v4 collections];
  if (v5)
  {
    v6 = v5;
    sub_220B55458(0, &qword_2812C0930);
    v7 = sub_220BCDC70();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_220B9E960(v7);
  sub_220B9F8D0([v4 featuredCollection]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220BA3C24();
  sub_220BCC470();
}

- (void)appController:(id)a3 loadingContent:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  TipsContentModel.appController(_:loadingContent:)(v6, a4);
}

@end