@interface TipsContentModel
- (void)appController:(id)controller loadingContent:(BOOL)content;
- (void)appControllerContentUpdated:(id)updated;
@end

@implementation TipsContentModel

- (void)appControllerContentUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  collections = [updatedCopy collections];
  if (collections)
  {
    v6 = collections;
    sub_220B55458(0, &qword_2812C0930);
    v7 = sub_220BCDC70();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_220B9E960(v7);
  sub_220B9F8D0([updatedCopy featuredCollection]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220BA3C24();
  sub_220BCC470();
}

- (void)appController:(id)controller loadingContent:(BOOL)content
{
  controllerCopy = controller;
  selfCopy = self;
  TipsContentModel.appController(_:loadingContent:)(controllerCopy, content);
}

@end