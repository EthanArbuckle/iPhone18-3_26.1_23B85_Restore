@interface DownloadRemovalObserver
- (void)removeDownloadedEpisodeWithUuid:(id)a3 completion:(id)a4;
@end

@implementation DownloadRemovalObserver

- (void)removeDownloadedEpisodeWithUuid:(id)a3 completion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(a4);
  v10 = sub_21B4C9708();
  v12 = v11;
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_21B439050;
  }

  else
  {
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B4D2830;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
  *(v14 + 48) = 2;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = self;
  v16[6] = v9;
  v16[7] = v13;

  sub_21B438370(0, 0, v8, &unk_21B4D5790, v16);
}

@end