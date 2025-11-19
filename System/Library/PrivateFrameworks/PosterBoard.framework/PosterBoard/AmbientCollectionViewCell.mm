@interface AmbientCollectionViewCell
- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)a3;
- (void)ambientEditingCollectionViewController:(id)a3 didUpdatePosterConfiguration:(id)a4;
- (void)ambientEditingCollectionViewControllerDidUpdatePosters:(id)a3;
- (void)ambientPosterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4;
@end

@implementation AmbientCollectionViewCell

- (void)ambientEditingCollectionViewControllerDidUpdatePosters:(id)a3
{
  v3 = self;
  sub_21B64171C();
}

- (void)ambientEditingCollectionViewController:(id)a3 didUpdatePosterConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21B642514(v7);
}

- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = self;
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

- (void)ambientPosterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4
{
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C88A4();
  v10 = a3;
  v11 = self;
  sub_21B642B64(v9);

  (*(v7 + 8))(v9, v6);
}

@end