@interface TPSSavedTipsManager
+ (TPSSavedTipsManager)sharedInstance;
- (BOOL)isCurrentTipSaved;
- (BOOL)isSavedWithTipIdentifier:(id)a3;
- (TPSTip)currentTip;
- (id)identifiers;
- (id)savedDateWithCorrelationId:(id)a3;
- (void)removeInvalidEntries;
- (void)setCurrentTip:(id)a3;
- (void)setIsCurrentTipSaved:(BOOL)a3;
- (void)toggleSavedTipWithCorrelationId:(id)a3 tipIdentifier:(id)a4;
- (void)updateSavedTipsWithCorrelationId:(id)a3 tipIdentifier:(id)a4 savedDate:(id)a5 lastUsedVersion:(id)a6;
@end

@implementation TPSSavedTipsManager

- (TPSTip)currentTip
{
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  v3 = self;
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);
  v6 = v5;

  return v5;
}

- (void)setCurrentTip:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C011D034(a3);
}

- (BOOL)isCurrentTipSaved
{
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  v3 = self;
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  LOBYTE(v4) = *(&v3->super.isa + v4);

  return v4;
}

- (void)setIsCurrentTipSaved:(BOOL)a3
{
  v4 = self;
  sub_1C011D754(a3);
}

+ (TPSSavedTipsManager)sharedInstance
{
  if (qword_1EDD44AC8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD44AD0;

  return v3;
}

- (BOOL)isSavedWithTipIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1C014C230();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.isa + OBJC_IVAR___TPSSavedTipsManager_queue);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  sub_1C014C5B0();

  return v8;
}

- (id)savedDateWithCorrelationId:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-v6];
  v8 = sub_1C014C230();
  v9 = *(&self->super.isa + OBJC_IVAR___TPSSavedTipsManager_queue);
  v19 = self;
  v20 = v8;
  v21 = v10;
  v11 = self;
  sub_1C014C5B0();

  v12 = sub_1C014BD40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1C014BCE0();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (void)toggleSavedTipWithCorrelationId:(id)a3 tipIdentifier:(id)a4
{
  v5 = sub_1C014C230();
  v7 = v6;
  v8 = sub_1C014C230();
  v10 = v9;
  v11 = self;
  sub_1C011E654(v5, v7, v8, v10);
}

- (void)updateSavedTipsWithCorrelationId:(id)a3 tipIdentifier:(id)a4 savedDate:(id)a5 lastUsedVersion:(id)a6
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1C014C230();
  v14 = v13;
  v15 = sub_1C014C230();
  v17 = v16;
  if (a5)
  {
    sub_1C014BD00();
    v18 = sub_1C014BD40();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v19 = sub_1C014BD40();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  v20 = sub_1C014C230();
  v22 = v21;
  v23 = self;
  sub_1C011EC38(v12, v14, v15, v17, v11, v20, v22);

  sub_1C012348C(v11);
}

- (id)identifiers
{
  v2 = *(&self->super.isa + OBJC_IVAR___TPSSavedTipsManager_queue);
  v3 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014C5B0();

  v4 = sub_1C014C3B0();

  return v4;
}

- (void)removeInvalidEntries
{
  v3 = *(&self->super.isa + OBJC_IVAR___TPSSavedTipsManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C0123B8C;
  *(v5 + 24) = v4;
  v8[4] = sub_1C0123B80;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C011EB80;
  v8[3] = &block_descriptor_54;
  v6 = _Block_copy(v8);
  v7 = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end