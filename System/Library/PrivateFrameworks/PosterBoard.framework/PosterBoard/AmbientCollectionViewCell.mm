@interface AmbientCollectionViewCell
- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)identifier;
- (void)ambientEditingCollectionViewController:(id)controller didUpdatePosterConfiguration:(id)configuration;
- (void)ambientEditingCollectionViewControllerDidUpdatePosters:(id)posters;
- (void)ambientPosterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier;
@end

@implementation AmbientCollectionViewCell

- (void)ambientEditingCollectionViewControllerDidUpdatePosters:(id)posters
{
  selfCopy = self;
  sub_21B64171C();
}

- (void)ambientEditingCollectionViewController:(id)controller didUpdatePosterConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_21B642514(configurationCopy);
}

- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_21B655B48(v6);
    swift_unknownObjectRelease();

    v8 = sub_21B6C88C4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = sub_21B6C8884();
      (*(v9 + 8))(v6, v8);
      v11 = v12;
    }
  }

  else
  {
    v13 = sub_21B6C88C4();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v11 = 0;
  }

  return v11;
}

- (void)ambientPosterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier
{
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C88A4();
  controllerCopy = controller;
  selfCopy = self;
  sub_21B642B64(v9);

  (*(v7 + 8))(v9, v6);
}

@end