uint64_t key path setter for EmergencyCountdownViewModel.$currentTranslation : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 488))(v7);
}

uint64_t EmergencyCountdownViewModel.$currentTranslation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$currentTranslation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMd, &_s7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__currentTranslation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

double EmergencyCountdownViewModel.startLocation.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_startLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmergencyCountdownViewModel.startLocation.setter(double a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_startLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double EmergencyCountdownViewModel.currentOffset.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_currentOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmergencyCountdownViewModel.currentOffset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_currentOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id EmergencyCountdownViewModel.notificationCenter.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_notificationCenter;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void EmergencyCountdownViewModel.notificationCenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_notificationCenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for EmergencyCountdownViewModel.sashTitle : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.sashTitle : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 584);

  return v4(v2, v3);
}

uint64_t EmergencyCountdownViewModel.sashTitle.getter()
{
  return EmergencyCountdownViewModel.sashTitle.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25E5412A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E5412F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 584);

  return v4(v2, v3);
}

uint64_t EmergencyCountdownViewModel.sashTitle.setter()
{
  return EmergencyCountdownViewModel.sashTitle.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*EmergencyCountdownViewModel.sashTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$sashTitle : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 608))(v7);
}

uint64_t EmergencyCountdownViewModel.$sashTitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$sashTitle.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__sashTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$sashTitle.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.cancelButtonText : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 624))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.cancelButtonText : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 632);

  return v4(v2, v3);
}

uint64_t sub_25E5418C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 624))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E54191C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 632);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.cancelButtonText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$cancelButtonText : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 656))(v7);
}

uint64_t EmergencyCountdownViewModel.$cancelButtonText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$cancelButtonText.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__cancelButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.cancelledText : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 672))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.cancelledText : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 680);

  return v4(v2, v3);
}

uint64_t sub_25E541EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 672))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E541F3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 680);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.cancelledText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$cancelledText : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 704))(v7);
}

uint64_t EmergencyCountdownViewModel.$cancelledText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$cancelledText.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__cancelledText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.callButtonText : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.callButtonText : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 728);

  return v4(v2, v3);
}

uint64_t sub_25E542508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E54255C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 728);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.callButtonText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$callButtonText : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 752))(v7);
}

uint64_t EmergencyCountdownViewModel.$callButtonText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$callButtonText.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__callButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.dialog : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 768))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.dialog : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 776);

  return v4(v2, v3);
}

uint64_t sub_25E542B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 768))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E542B7C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 776);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.dialog.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$dialog : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 800))(v7);
}

uint64_t EmergencyCountdownViewModel.$dialog.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$dialog.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__dialog;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.localeIdentifier : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 816))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.localeIdentifier : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 824);

  return v4(v2, v3);
}

uint64_t sub_25E543148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 816))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E54319C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 824);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.localeIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$localeIdentifier : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 848))(v7);
}

uint64_t EmergencyCountdownViewModel.$localeIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$localeIdentifier.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__localeIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.callingLabel : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 864))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.callingLabel : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 872);

  return v4(v2, v3);
}

uint64_t sub_25E543768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 864))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E5437BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 872);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.callingLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.callingLabel.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$callingLabel : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 896))(v7);
}

uint64_t EmergencyCountdownViewModel.$callingLabel.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$callingLabel.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__callingLabel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.emergencyServicesLabel : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 912))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.emergencyServicesLabel : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 920);

  return v4(v2, v3);
}

uint64_t sub_25E543D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 912))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E543DE0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 920);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.emergencyServicesLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$emergencyServicesLabel : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 944))(v7);
}

uint64_t EmergencyCountdownViewModel.$emergencyServicesLabel.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$emergencyServicesLabel.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__emergencyServicesLabel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.sos : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 960))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EmergencyCountdownViewModel.sos : EmergencyCountdownViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 968);

  return v4(v2, v3);
}

uint64_t sub_25E544418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 960))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E54446C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 968);

  return v4(v2, v3);
}

uint64_t (*EmergencyCountdownViewModel.sos.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$sos : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 992))(v7);
}

uint64_t EmergencyCountdownViewModel.$sos.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$sos.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__sos;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.isCounterOnLastStep : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1008))();
  *a2 = result & 1;
  return result;
}

uint64_t EmergencyCountdownViewModel.isCounterOnLastStep.getter()
{
  return EmergencyCountdownViewModel.isCounterOnLastStep.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25E544A94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1008))();
  *a2 = result & 1;
  return result;
}

uint64_t EmergencyCountdownViewModel.isCounterOnLastStep.setter()
{
  return EmergencyCountdownViewModel.isCounterOnLastStep.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*EmergencyCountdownViewModel.isCounterOnLastStep.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$isCounterOnLastStep : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 1040))(v7);
}

uint64_t EmergencyCountdownViewModel.$isCounterOnLastStep.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$isCounterOnLastStep.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__isCounterOnLastStep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.countdownCancelledByUser : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1056))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25E54507C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1056))();
  *a2 = result & 1;
  return result;
}

uint64_t (*EmergencyCountdownViewModel.countdownCancelledByUser.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

uint64_t key path setter for EmergencyCountdownViewModel.$countdownCancelledByUser : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 1088))(v7);
}

uint64_t EmergencyCountdownViewModel.$countdownCancelledByUser.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$countdownCancelledByUser.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__countdownCancelledByUser;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

uint64_t key path getter for EmergencyCountdownViewModel.disableButtons : EmergencyCountdownViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25E5456D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1104))();
  *a2 = result & 1;
  return result;
}

uint64_t (*EmergencyCountdownViewModel.disableButtons.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return EmergencyCountdownViewModel.counter.modify;
}

void EmergencyCountdownViewModel.counter.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for EmergencyCountdownViewModel.$disableButtons : EmergencyCountdownViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 1136))(v7);
}

uint64_t EmergencyCountdownViewModel.$counter.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t EmergencyCountdownViewModel.$disableButtons.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*EmergencyCountdownViewModel.$disableButtons.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__disableButtons;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EmergencyCountdownViewModel.$counter.modify;
}

void EmergencyCountdownViewModel.$counter.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t EmergencyCountdownViewModel.sliderIsAtMax.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_sliderIsAtMax;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmergencyCountdownViewModel.sliderIsAtMax.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_sliderIsAtMax;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmergencyCountdownViewModel.startedCountdown.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_startedCountdown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmergencyCountdownViewModel.startedCountdown.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_startedCountdown;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmergencyCountdownViewModel.timerCancelled.getter()
{
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_timerCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmergencyCountdownViewModel.timerCancelled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_timerCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id EmergencyCountdownViewModel.numberFormatter.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter;
  v7 = *(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    v10 = v0;
    (*(*v0 + 816))();
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v5, v1);
    [v9 setLocale_];

    [v9 setNumberStyle_];
    v12 = *(v10 + v6);
    *(v10 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

uint64_t EmergencyCountdownViewModel.numberFormatter.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter);
  *(v1 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*EmergencyCountdownViewModel.numberFormatter.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = EmergencyCountdownViewModel.numberFormatter.getter();
  return EmergencyCountdownViewModel.numberFormatter.modify;
}

void EmergencyCountdownViewModel.numberFormatter.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter);
  *(v1 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel____lazy_storage___numberFormatter) = v2;
}

uint64_t EmergencyCountdownViewModel.isSmartEnabled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + v5, v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v6 = type metadata accessor for EmergencyCountdownModel();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v6 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    Loggable.wrappedValue.getter();
    v7 = v10[7];
  }

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  return v7;
}

uint64_t EmergencyCountdownViewModel.isSAEAvailable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + v5, v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v6 = type metadata accessor for EmergencyCountdownModel();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v6 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    Loggable.wrappedValue.getter();
    v7 = v10[7];
  }

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  return v7;
}

uint64_t EmergencyCountdownViewModel.startTimer(interactionDelegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for InteractionDelegateWrapper();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v27 - v15;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.phoneSnippetUI);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_25E523000, v18, v19, "#EmergencyCountdownViewModel starting countdown", v20, 2u);
    MEMORY[0x25F8B8670](v20, -1, -1);
  }

  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
  v21 = [objc_opt_self() mainRunLoop];
  v22 = *MEMORY[0x277CBE738];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v16, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v27[1] = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v25 = ConnectablePublisher.autoconnect()();

  (*(*v2 + 416))(v25);
  (*(*v2 + 1184))(1);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(a1, v7, &_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v7, &_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  }

  (*(v9 + 32))(v12, v7, v8);
  (*(*v2 + 1400))(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t EmergencyCountdownViewModel.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v46 - v6;
  v7 = type metadata accessor for Locale();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  outlined init with copy of EmergencyCountdownModel(a1, &v46 - v17, type metadata accessor for EmergencyCountdownModel);
  v19 = type metadata accessor for EmergencyCountdownModel();
  (*(*(v19 - 1) + 56))(v18, 0, 1, v19);
  v20 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined assign with take of EmergencyCountdownModel?(v18, v2 + v20);
  swift_endAccess();
  (*(*v2 + 320))(3);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
  v21 = [objc_opt_self() mainRunLoop];
  v22 = *MEMORY[0x277CBE738];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v14, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v49 = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v25 = ConnectablePublisher.autoconnect()();

  (*(*v2 + 416))(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  (*(*v2 + 584))(v49, v50);
  v26 = a1 + v19[5];
  Loggable.wrappedValue.getter();
  (*(*v2 + 632))(v49, v50);
  v27 = a1 + v19[6];
  Loggable.wrappedValue.getter();
  (*(*v2 + 680))(v49, v50);
  v28 = a1 + v19[7];
  Loggable.wrappedValue.getter();
  (*(*v2 + 728))(v49, v50);
  v29 = a1 + v19[11];
  Loggable.wrappedValue.getter();
  (*(*v2 + 776))(v49, v50);
  (*(*v2 + 1208))(0);
  (*(*v2 + 1064))(0);
  v30 = a1 + v19[12];
  Loggable.wrappedValue.getter();
  (*(*v2 + 824))(v49, v50);
  v31 = a1 + v19[8];
  Loggable.wrappedValue.getter();
  (*(*v2 + 872))(v49, v50);
  v32 = a1 + v19[9];
  Loggable.wrappedValue.getter();
  (*(*v2 + 920))(v49, v50);
  v33 = a1 + v19[10];
  Loggable.wrappedValue.getter();
  v34 = (*(*v2 + 968))(v49, v50);
  v35 = (*(*v2 + 368))(v34, 0.0);
  v36 = (*(*v2 + 1224))(v35);
  (*(*v2 + 816))();
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v47 + 8))(v10, v48);
  [v36 setLocale_];

  (*(*v2 + 560))([objc_allocWithZone(MEMORY[0x277CCAB98]) init]);
  (*(*v2 + 1016))(0);
  (*(*v2 + 1112))(0);
  v38 = v19[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  if (v49)
  {
    return (*(*v2 + 1184))(0);
  }

  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.phoneSnippetUI);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25E523000, v41, v42, "#EmergencyCountdownView not speaking countdown. Starting countdown immediately.", v43, 2u);
    MEMORY[0x25F8B8670](v43, -1, -1);
  }

  v44 = type metadata accessor for InteractionDelegateWrapper();
  v45 = v46;
  (*(*(v44 - 8) + 56))(v46, 1, 1, v44);
  (*(*v2 + 1288))(v45);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v45, &_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
}

Swift::Void __swiftcall EmergencyCountdownViewModel.resetCounter()()
{
  v1 = v0;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E523000, v3, v4, "#EmergencyCountdownView resetting counter", v5, 2u);
    MEMORY[0x25F8B8670](v5, -1, -1);
  }

  (*(*v1 + 320))(3);
  v6 = *(*v1 + 368);
  v7.n128_u64[0] = 0;

  v6(v7);
}

uint64_t EmergencyCountdownViewModel.snippetHasAnimatedCounter(context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + v5, v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v6 = type metadata accessor for EmergencyCountdownModel();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
    v7 = 0;
  }

  else
  {
    v8 = *(v6 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    Loggable.wrappedValue.getter();
    LODWORD(v8) = v10[7];
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
    if (v8 == 1 && (dispatch thunk of Context.currentIdiom.getter(), (VRXIdiom.isCarPlay.getter() & 1) == 0))
    {
      v7 = dispatch thunk of Context.isInAmbient.getter() ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void EmergencyCountdownViewModel.updateAnimationStep(currentStep:)(__n128 a1)
{
  a1.n128_f64[0] = a1.n128_f64[0] + 1.0;
  if (a1.n128_f64[0] > 3.0)
  {
    a1.n128_f64[0] = 3.0;
  }

  (*(*v1 + 368))(a1);
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = (*(*v1 + 360))();
    _os_log_impl(&dword_25E523000, oslog, v3, "#EmergencyCountdownView updated animation step to %f", v4, 0xCu);
    MEMORY[0x25F8B8670](v4, -1, -1);
  }
}

void EmergencyCountdownViewModel.updateCounter(interactionDelegate:currentAnimationStep:context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v65 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InteractionDelegateWrapper();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchTime();
  v64 = *(v71 - 8);
  v17 = *(v64 + 64);
  v18 = MEMORY[0x28223BE20](v71);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - v20;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.phoneSnippetUI);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v59 = v5;
    v25 = a3;
    v26 = a2;
    v27 = v16;
    v28 = a1;
    v29 = v10;
    v30 = v9;
    v31 = v24;
    *v24 = 0;
    _os_log_impl(&dword_25E523000, v22, v23, "#EmergencyCountdownView updating counter", v24, 2u);
    v32 = v31;
    v9 = v30;
    v10 = v29;
    a1 = v28;
    v16 = v27;
    a2 = v26;
    a3 = v25;
    v5 = v59;
    MEMORY[0x25F8B8670](v32, -1, -1);
  }

  if ((a3 & 1) == 0)
  {
LABEL_9:
    if ((~a2 & 0x7FF0000000000000) != 0)
    {
      if (*&a2 > -9.22337204e18)
      {
        if (*&a2 < 9.22337204e18)
        {
          if (!__OFSUB__(3, *&a2))
          {
            v35 = 2 - *&a2;
            if (!__OFSUB__(3 - *&a2, 1))
            {
              goto LABEL_14;
            }

LABEL_29:
            __break(1u);
            return;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v33 = (*(*v5 + 312))();
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_14:
  if (v35)
  {
LABEL_19:
    v40 = *(*v5 + 320);

    v40(v35);
    return;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_25E523000, v36, v37, "#EmergencyCountdownView setting isCounterOnLastStep = true", v38, 2u);
    MEMORY[0x25F8B8670](v38, -1, -1);
  }

  v39 = (*(*v5 + 1016))(1);
  if ((*(*v5 + 1200))(v39))
  {
    v35 = 0;
    goto LABEL_19;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25E523000, v41, v42, "#EmergencyCountdownView counter reached 0 -- executing confirm action", v43, 2u);
    MEMORY[0x25F8B8670](v43, -1, -1);
  }

  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v59 = static OS_dispatch_queue.main.getter();
  v44 = v60;
  static DispatchTime.now()();
  + infix(_:_:)();
  v64 = *(v64 + 8);
  (v64)(v44, v71);
  v45 = v61;
  v46 = v62;
  v47 = v63;
  (*(v62 + 16))(v61, a1, v63);
  v48 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v49 = (v16 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v5;
  (*(v46 + 32))(v50 + v48, v45, v47);
  v51 = v65;
  *(v50 + v49) = v65;
  aBlock[4] = partial apply for closure #1 in EmergencyCountdownViewModel.updateCounter(interactionDelegate:currentAnimationStep:context:);
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v52 = _Block_copy(aBlock);

  v53 = v51;
  v54 = v66;
  static DispatchQoS.unspecified.getter();
  v72 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v55 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v56 = v70;
  v57 = v59;
  MEMORY[0x25F8B7C40](v70, v54, v55, v52);
  _Block_release(v52);

  (*(v10 + 8))(v55, v9);
  (*(v67 + 8))(v54, v69);
  (v64)(v56, v71);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void EmergencyCountdownViewModel.triggerCounterUpdate(interactionDelegate:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(*v2 + 1176))())
  {
    if ((*(*v2 + 1312))(a2))
    {
      if (one-time initialization token for phoneSnippetUI != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.phoneSnippetUI);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_25E523000, v7, v8, "#EmergencyCountdownView sending notification to update counter position", v9, 2u);
        MEMORY[0x25F8B8670](v9, -1, -1);
      }

      v10 = (*(*v3 + 552))();
      if (one-time initialization token for counterPosition != -1)
      {
        swift_once();
      }

      v11 = static NSNotificationName.counterPosition;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E59F720;
      v13 = AnyHashable.init<A>(_:)();
      v14 = (*(*v3 + 360))(v13);
      *(inited + 96) = MEMORY[0x277D85048];
      *(inited + 72) = v14;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v10 postNotificationName:v11 object:v3 userInfo:isa];
    }

    else
    {
      if (one-time initialization token for phoneSnippetUI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.phoneSnippetUI);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_25E523000, v20, v21, "#EmergencyCountdownView updating counter without animation", v22, 2u);
        MEMORY[0x25F8B8670](v22, -1, -1);
      }

      v23 = (*(*v3 + 1328))(a1, 0, 1, a2);
      if (((*(*v3 + 1008))(v23) & 1) == 0)
      {
        v24 = *(*v3 + 1400);

        v24(a1);
      }
    }
  }

  else
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.phoneSnippetUI);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25E523000, oslog, v17, "#EmergencyCountdownView received timer, but countdown hasn't started. Ignoring.", v18, 2u);
      MEMORY[0x25F8B8670](v18, -1, -1);
    }
  }
}

uint64_t EmergencyCountdownViewModel.localizedCounter.getter()
{
  v1 = (*(*v0 + 1224))();
  v2 = (*v0 + 312);
  v3 = *v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = [v1 stringFromNumber_];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v3();
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

Swift::Void __swiftcall EmergencyCountdownViewModel.onSiriDismissed()()
{
  v1 = v0;
  if (((*(*v0 + 1200))() & 1) == 0)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25E523000, v3, v4, "#EmergencyCountdownView Cancelling Timer because Siri was dismissed", v5, 2u);
      MEMORY[0x25F8B8670](v5, -1, -1);
    }

    (*(*v1 + 1384))();
    v6 = *(*v1 + 1112);

    v6(1);
  }
}

void EmergencyCountdownViewModel.callAction(interactionDelegate:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for EmergencyCountdownModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v3 + v15, v9, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.phoneSnippetUI);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25E523000, v17, v18, "#EmergencyCountdownViewModel model was not set. Cannot keep executing", v19, 2u);
      MEMORY[0x25F8B8670](v19, -1, -1);
    }
  }

  else
  {
    v20 = outlined init with take of EmergencyCountdownModel(v9, v14, type metadata accessor for EmergencyCountdownModel);
    (*(*v3 + 1384))(v20);
    (*(*v3 + 1112))(1);
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.phoneSnippetUI);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25E523000, v22, v23, "#EmergencyCountdownViewModel performing call action with DI", v24, 2u);
      MEMORY[0x25F8B8670](v24, -1, -1);
    }

    v25 = *(v10 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v26 = CodableAceObject.wrappedValue.getter();
    InteractionDelegateWrapper.perform(directInvocation:)();

    (*(*v3 + 1376))(a1, a2, 0);
    outlined destroy of EmergencyCountdownModel(v14);
  }
}

void EmergencyCountdownViewModel.cancelAction(interactionDelegate:context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for EmergencyCountdownModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + v10, v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.phoneSnippetUI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25E523000, v12, v13, "#EmergencyCountdownViewModel model was not set. Cannot keep executing", v14, 2u);
      MEMORY[0x25F8B8670](v14, -1, -1);
    }
  }

  else
  {
    v15 = outlined init with take of EmergencyCountdownModel(v4, v9, type metadata accessor for EmergencyCountdownModel);
    (*(*v0 + 1384))(v15);
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.phoneSnippetUI);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25E523000, v17, v18, "#EmergencyCountdownViewModel performing cancel action (Direct invocation)", v19, 2u);
      MEMORY[0x25F8B8670](v19, -1, -1);
    }

    v20 = *(v5 + 68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v21 = CodableAceObject.wrappedValue.getter();
    InteractionDelegateWrapper.perform(directInvocation:)();

    outlined destroy of EmergencyCountdownModel(v9);
  }
}

Swift::Void __swiftcall EmergencyCountdownViewModel.cancelTimerAndReset()()
{
  v1 = v0;
  if (((*(*v0 + 1200))() & 1) == 0)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25E523000, v3, v4, "#EmergencyCountdownViewModel Cancelling Timer", v5, 2u);
      MEMORY[0x25F8B8670](v5, -1, -1);
    }

    (*(*v1 + 408))();
    Publishers.Autoconnect.upstream.getter();

    NSTimer.TimerPublisher.connect()();

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0(v6);
    (*(*v1 + 1208))(1);
  }
}

Swift::Void __swiftcall EmergencyCountdownViewModel.restartTimer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.phoneSnippetUI);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25E523000, v7, v8, "#EmergencyCountdownViewModel restarting timer", v9, 2u);
    MEMORY[0x25F8B8670](v9, -1, -1);
  }

  (*(*v1 + 1208))(0);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
  v10 = [objc_opt_self() mainRunLoop];
  v11 = *MEMORY[0x277CBE738];
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v15[1] = v13;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v14 = ConnectablePublisher.autoconnect()();

  (*(*v1 + 416))(v14);
  (*(*v1 + 1184))(1);
}

void EmergencyCountdownViewModel.playTTSCounterValue(interactionDelegate:)()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + v11, v10, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v12 = type metadata accessor for EmergencyCountdownModel();
  if ((*(*(v12 - 8) + 48))(v10, 1, v12))
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
LABEL_9:
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.phoneSnippetUI);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#EmergencyCountdownViewModel model.shouldPlayTTSCountdown is false";
    goto LABEL_13;
  }

  v13 = *(v12 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  LODWORD(v13) = v39;
  v14 = outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  if ((*(*v1 + 1056))(v14))
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.phoneSnippetUI);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#EmergencyCountdownViewModel timer was cancelled by user. Not playing TTS";
LABEL_13:
    _os_log_impl(&dword_25E523000, v16, v17, v19, v18, 2u);
    MEMORY[0x25F8B8670](v18, -1, -1);
LABEL_14:

    return;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D47B10]) init];
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v3 + 8))(v6, v2);
  v25 = MEMORY[0x25F8B7AB0](v22, v24);

  [v21 setAceId_];

  v26 = (*(*v1 + 1344))();
  v27 = MEMORY[0x25F8B7AB0](v26);

  [v21 setMessage_];

  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.phoneSnippetUI);
  v29 = v21;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v30, v31))
  {

    goto LABEL_21;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v39 = v33;
  *v32 = 134218242;
  *(v32 + 4) = (*(*v1 + 312))(v33);

  *(v32 + 12) = 2080;
  v34 = [v29 aceId];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v39);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_25E523000, v30, v31, "#EmergencyCountdownViewModel submitting SAUISayIt command to say emergency counter value=%ld with id=%s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F8B8670](v33, -1, -1);
    MEMORY[0x25F8B8670](v32, -1, -1);

LABEL_21:
    v16 = v29;
    InteractionDelegateWrapper.perform(aceCommand:)();

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t EmergencyCountdownViewModel.deinit()
{
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel_model, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  v1 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__counter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__animationStep;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMd, &_s7Combine9PublishedVy12CoreGraphics7CGFloatVGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__timer;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyAA10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMd, &_s7Combine9PublishedVyAA10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__currentTranslation, v4);

  v8 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__sashTitle;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__cancelButtonText, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__cancelledText, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__callButtonText, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__dialog, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__localeIdentifier, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__callingLabel, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__emergencyServicesLabel, v9);
  v10(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__sos, v9);
  v11 = OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__isCounterOnLastStep;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__countdownCancelledByUser, v12);
  v13(v0 + OBJC_IVAR____TtC14PhoneSnippetUI27EmergencyCountdownViewModel__disableButtons, v12);

  return v0;
}

uint64_t EmergencyCountdownViewModel.__deallocating_deinit()
{
  EmergencyCountdownViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance EmergencyCountdownViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmergencyCountdownViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EmergencyCountdownView.interactionDelegate : EmergencyCountdownView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionDelegateWrapper();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for EmergencyCountdownView(0) + 20);
  InteractionDelegate.wrappedValue.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t EmergencyCountdownView.interactionDelegate.setter(uint64_t a1)
{
  v3 = type metadata accessor for InteractionDelegateWrapper();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = v1 + *(type metadata accessor for EmergencyCountdownView(0) + 20);
  InteractionDelegate.wrappedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

void (*EmergencyCountdownView.interactionDelegate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for EmergencyCountdownView(0) + 20);
  *(v4 + 32) = InteractionDelegate.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

uint64_t property wrapper backing initializer of EmergencyCountdownView.viewModel()
{
  type metadata accessor for EmergencyCountdownViewModel(0);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t EmergencyCountdownView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for EmergencyCountdownView(0);
  v6 = a2 + v5[5];
  InteractionDelegate.init()();
  v7 = v5[6];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (a2 + v7);
  swift_beginAccess();
  type metadata accessor for EmergencyCountdownViewModel(0);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

  *v8 = ObservedObject.init(wrappedValue:)();
  v8[1] = v9;
  return outlined init with take of EmergencyCountdownModel(a1, a2 + v5[7], type metadata accessor for EmergencyCountdownModel);
}

uint64_t EmergencyCountdownView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for EmergencyCountdownView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalM0VyAWyAPy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAPyAX07AmbientvW0VA0_GGAPyAX07SlidingvwD0VA0_GGG_Qo_A0_GGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalM0VyAWyAPy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAPyAX07AmbientvW0VA0_GGAPyAX07SlidingvwD0VA0_GGG_Qo_A0_GGMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalR0VyA5_yAZy05PhonehB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAZyA6_07AmbientZ9CountdownVA10_GGAZyA6_07Slidingz9CountdownD0VA10_GGG_Qo_A10_GGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalR0VyA5_yAZy05PhonehB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAZyA6_07AmbientZ9CountdownVA10_GGAZyA6_07Slidingz9CountdownD0VA10_GGG_Qo_A10_GGGMR);
  v17 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - v18;
  closure #1 in EmergencyCountdownView.body.getter(v2, v11);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>>> and conformance <A> Group<A>();
  View.privacySensitive(_:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMR);
  outlined init with copy of EmergencyCountdownModel(v2, v7, type metadata accessor for EmergencyCountdownView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  outlined init with take of EmergencyCountdownModel(v7, v20 + v19, type metadata accessor for EmergencyCountdownView);
  v21 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalD0VyAJyACy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGACyAK07AmbientnO0VAOGGACyAK07SlidingnoE0VAOGGG_Qo_AOGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalD0VyAJyACy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGACyAK07AmbientnO0VAOGGACyAK07SlidingnoE0VAOGGG_Qo_AOGMR) + 36)];
  *v21 = partial apply for closure #2 in EmergencyCountdownView.body.getter;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = (*(**(v2 + *(v4 + 32) + 8) + 408))();
  outlined init with copy of EmergencyCountdownModel(v2, v7, type metadata accessor for EmergencyCountdownView);
  v43 = v6;
  v23 = swift_allocObject();
  outlined init with take of EmergencyCountdownModel(v7, v23 + v19, type metadata accessor for EmergencyCountdownView);
  *&v16[*(v13 + 60)] = v22;
  v24 = &v16[*(v13 + 64)];
  *v24 = partial apply for closure #3 in EmergencyCountdownView.body.getter;
  v24[1] = v23;
  if (*v2)
  {
    v25 = *v2;
    updated = dispatch thunk of Context.siriEventUpdatePublisher.getter();

    outlined init with copy of EmergencyCountdownModel(v2, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyCountdownView);
    v40 = v2;
    v27 = swift_allocObject();
    outlined init with take of EmergencyCountdownModel(v7, v27 + v19, type metadata accessor for EmergencyCountdownView);
    v28 = v42;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v16, v42, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalM0VyAWyAPy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAPyAX07AmbientvW0VA0_GGAPyAX07SlidingvwD0VA0_GGG_Qo_A0_GGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalM0VyAWyAPy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAPyAX07AmbientvW0VA0_GGAPyAX07SlidingvwD0VA0_GGG_Qo_A0_GGMR);
    v29 = v41;
    *(v28 + *(v41 + 52)) = updated;
    v30 = (v28 + *(v29 + 56));
    *v30 = partial apply for closure #4 in EmergencyCountdownView.body.getter;
    v30[1] = v27;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD0hG0Vy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalT0VyA13_yA6_y05PhonejB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGA6_yA14_25AmbientEmergencyCountdownVA18_GGA6_yA14_025SlidingEmergencyCountdownD0VA18_GGG_Qo_A18_GGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD0hG0Vy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalT0VyA13_yA6_y05PhonejB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGA6_yA14_25AmbientEmergencyCountdownVA18_GGA6_yA14_025SlidingEmergencyCountdownD0VA18_GGG_Qo_A18_GGGGMR);
    v32 = *(v31 + 52);
    v33 = v25;
    v34 = v44;
    dispatch thunk of Context.$sharedState.getter();

    outlined init with copy of EmergencyCountdownModel(v40, v7, type metadata accessor for EmergencyCountdownView);
    v35 = swift_allocObject();
    outlined init with take of EmergencyCountdownModel(v7, v35 + v19, type metadata accessor for EmergencyCountdownView);
    result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v28, v34, &_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalR0VyA5_yAZy05PhonehB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAZyA6_07AmbientZ9CountdownVA10_GGAZyA6_07Slidingz9CountdownD0VA10_GGG_Qo_A10_GGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy07SnippetB07ContextC5EventOs5NeverOGACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVyAA0D0PAAE16privacySensitiveyQrSbFQOyAA5GroupVyAA012_ConditionalR0VyA5_yAZy05PhonehB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAZyA6_07AmbientZ9CountdownVA10_GGAZyA6_07Slidingz9CountdownD0VA10_GGG_Qo_A10_GGGMR);
    v37 = (v34 + *(v31 + 56));
    *v37 = partial apply for closure #5 in EmergencyCountdownView.body.getter;
    v37[1] = v35;
  }

  else
  {
    v38 = *(v2 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in EmergencyCountdownView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMR);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v5 = (&v49 - v4);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v8 = (&v49 - v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALG_GMR);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v49 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALG_GMR);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v49 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
  v15 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v49 - v20);
  if (*a1)
  {
    v22 = *a1;
    dispatch thunk of Context.currentIdiom.getter();

    if (VRXIdiom.isCarPlay.getter())
    {
      v23 = *(a1 + *(type metadata accessor for EmergencyCountdownView(0) + 24) + 8);
      v24 = type metadata accessor for CarPlayEmergencyCountdown();
      v25 = v24[6];

      InteractionDelegate.init()();
      type metadata accessor for Context();
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v21 = EnvironmentObject.init()();
      v21[1] = v26;
      type metadata accessor for EmergencyCountdownViewModel(0);
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);
      v21[2] = ObservedObject.init(wrappedValue:)();
      v21[3] = v27;
      *(v21 + v24[7]) = 0x4024000000000000;
      *(v21 + v24[8]) = 0x4052000000000000;
      *(v21 + v24[9]) = 0x4058000000000000;
      v28 = (v21 + *(v18 + 36));
      *v28 = closure #1 in closure #1 in EmergencyCountdownView.body.getter;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
      v29 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMd;
      v30 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMR;
      outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v21, v14, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
      v31 = v21;
    }

    else
    {
      v32 = v22;
      v33 = dispatch thunk of Context.isInAmbient.getter();

      v34 = *(a1 + *(type metadata accessor for EmergencyCountdownView(0) + 24) + 8);
      if (v33)
      {
        type metadata accessor for EmergencyCountdownViewModel(0);
        lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

        *v8 = ObservedObject.init(wrappedValue:)();
        v8[1] = v35;
        type metadata accessor for Context();
        lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
        v8[2] = EnvironmentObject.init()();
        v8[3] = v36;
        v37 = v8 + *(type metadata accessor for AmbientEmergencyCountdown() + 24);
        InteractionDelegate.init()();
        v38 = (v8 + *(v50 + 36));
        *v38 = closure #2 in closure #1 in EmergencyCountdownView.body.getter;
        v38[1] = 0;
        v38[2] = 0;
        v38[3] = 0;
        outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, v14, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v17, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
        v31 = v8;
        v39 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMd;
        v40 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMR;
        return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v31, v39, v40);
      }

      type metadata accessor for Context();
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);

      *v5 = EnvironmentObject.init()();
      v5[1] = v41;
      v42 = type metadata accessor for SlidingEmergencyCountdownView();
      v43 = v5 + *(v42 + 20);
      InteractionDelegate.init()();
      v44 = (v5 + *(v42 + 24));
      type metadata accessor for EmergencyCountdownViewModel(0);
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);
      *v44 = ObservedObject.init(wrappedValue:)();
      v44[1] = v45;
      v46 = (v5 + *(v54 + 36));
      *v46 = closure #3 in closure #1 in EmergencyCountdownView.body.getter;
      v46[1] = 0;
      v46[2] = 0;
      v46[3] = 0;
      v29 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMd;
      v30 = &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMR;
      outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, v11, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v31 = v5;
    }

    v39 = v29;
    v40 = v30;
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v31, v39, v40);
  }

  v48 = *(a1 + 8);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #2 in EmergencyCountdownView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyCountdownView(0);
  (*(**(a1 + *(v2 + 24) + 8) + 1296))(a1 + *(v2 + 28));
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.phoneSnippetUI);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E523000, oslog, v4, "#EmergencyCountdownView countdown appeared", v5, 2u);
    MEMORY[0x25F8B8670](v5, -1, -1);
  }
}

uint64_t closure #3 in EmergencyCountdownView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InteractionDelegateWrapper();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.phoneSnippetUI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25E523000, v9, v10, "#EmergencyCountdownView triggering timer update", v11, 2u);
    MEMORY[0x25F8B8670](v11, -1, -1);
  }

  v12 = type metadata accessor for EmergencyCountdownView(0);
  v13 = *(a2 + *(v12 + 24) + 8);
  v14 = a2 + *(v12 + 20);
  InteractionDelegate.wrappedValue.getter();
  if (*a2)
  {
    v15 = *(*v13 + 1336);
    v16 = *a2;
    v15(v7, v16);

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v18 = *(a2 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void closure #4 in EmergencyCountdownView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Context.Event();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = *(v5 + 16);
  v15(&v26 - v13, a1, v4);
  if ((*(v5 + 88))(v14, v4) == *MEMORY[0x277D63F40])
  {
    (*(v5 + 96))(v14, v4);
    if (*v14 == 3)
    {
      v16 = type metadata accessor for EmergencyCountdownView(0);
      (*(**(a2 + *(v16 + 24) + 8) + 1352))();
      return;
    }
  }

  else
  {
    (*(v5 + 8))(v14, v4);
  }

  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.phoneSnippetUI);
  v15(v12, a1, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v15(v9, v12, v4);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v5 + 8))(v12, v4);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_25E523000, v18, v19, "#EmergencyCountdownView received event from context=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x25F8B8670](v21, -1, -1);
    MEMORY[0x25F8B8670](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v12, v4);
  }
}

uint64_t closure #5 in EmergencyCountdownView.body.getter(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - v6;
  v7 = type metadata accessor for InteractionDelegateWrapper();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.phoneSnippetUI);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = v8;
    v46 = a2;
    v17 = v7;
    v18 = v16;
    v19 = v11;
    v20 = swift_slowAlloc();
    v48 = v20;
    *v18 = 136315138;
    v21 = Dictionary.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v48);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_25E523000, v14, v15, "#EmergencyCountdownView got context update - %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    v11 = v19;
    MEMORY[0x25F8B8670](v24, -1, -1);
    v25 = v18;
    v7 = v17;
    v8 = v45;
    a2 = v46;
    MEMORY[0x25F8B8670](v25, -1, -1);
  }

  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();

  UpdateResponseCommand<>.init(_:)();
  v26 = v48;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  if (v26)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25E523000, v27, v28, "#EmergencyCountdownView received action to start timer", v30, 2u);
      MEMORY[0x25F8B8670](v30, -1, -1);
    }

    v31 = type metadata accessor for EmergencyCountdownView(0);
    v32 = *(a2 + *(v31 + 24) + 8);
    v33 = a2 + *(v31 + 20);
    v34 = v47;
    InteractionDelegate.wrappedValue.getter();
    (*(v8 + 56))(v34, 0, 1, v7);
    (*(*v32 + 1288))(v34);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v34, &_s9SnippetUI26InteractionDelegateWrapperVSgMd, &_s9SnippetUI26InteractionDelegateWrapperVSgMR);
  }

  else
  {
    if (v29)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_25E523000, v27, v28, "#EmergencyCountdownView received action to cancel timer", v36, 2u);
      MEMORY[0x25F8B8670](v36, -1, -1);
    }

    v37 = type metadata accessor for EmergencyCountdownView(0);
    v38 = *(a2 + *(v37 + 24) + 8);
    v39 = (*(*v38 + 1064))(1);
    (*(*v38 + 1384))(v39);
    v40 = a2 + *(v37 + 20);
    InteractionDelegate.wrappedValue.getter();
    if (*a2)
    {
      v41 = *(*v38 + 1376);
      v42 = *a2;
      v41(v11, v42, 1);

      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      v43 = *(a2 + 8);
      type metadata accessor for Context();
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

void one-time initialization function for sampleModel()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmergencyCountdownModel();
  __swift_allocate_value_buffer(v5, static EmergencyCountdownView_Previews.sampleModel);
  v6 = __swift_project_value_buffer(v5, static EmergencyCountdownView_Previews.sampleModel);
  v28 = [objc_allocWithZone(MEMORY[0x277D47438]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D47438]) init];
  static Locale.current.getter();
  v8 = Locale.identifier.getter();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v11 = (v6 + v5[18]);
  *v11 = 0xD000000000000017;
  v11[1] = 0x800000025E5A6120;
  strcpy(v29, "Emergency Call");
  HIBYTE(v29[1]) = -18;
  Loggable.init(wrappedValue:)();
  v12 = v5[5];
  v29[0] = 0x6C65636E6143;
  v29[1] = 0xE600000000000000;
  Loggable.init(wrappedValue:)();
  v13 = v5[6];
  strcpy(v29, "Cancelled");
  WORD1(v29[1]) = 0;
  HIDWORD(v29[1]) = -385875968;
  Loggable.init(wrappedValue:)();
  v14 = v5[8];
  strcpy(v29, "Calling...");
  BYTE3(v29[1]) = 0;
  HIDWORD(v29[1]) = -369098752;
  Loggable.init(wrappedValue:)();
  v15 = v5[9];
  v29[0] = 0xD000000000000012;
  v29[1] = 0x800000025E5A6510;
  Loggable.init(wrappedValue:)();
  v16 = v5[10];
  v29[0] = 5459795;
  v29[1] = 0xE300000000000000;
  Loggable.init(wrappedValue:)();
  v17 = v5[7];
  v29[0] = 1819042115;
  v29[1] = 0xE400000000000000;
  Loggable.init(wrappedValue:)();
  v18 = v5[11];
  v29[0] = 0xD00000000000001DLL;
  v29[1] = 0x800000025E5A6530;
  Loggable.init(wrappedValue:)();
  v19 = v5[16];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  v20 = v28;
  CodableAceObject.init(wrappedValue:)();
  v21 = v5[17];
  v22 = v7;
  CodableAceObject.init(wrappedValue:)();
  v23 = v5[12];
  v29[0] = v8;
  v29[1] = v10;
  Loggable.init(wrappedValue:)();
  v24 = v5[15];
  LOBYTE(v29[0]) = 1;
  Loggable.init(wrappedValue:)();
  v25 = v5[13];
  LOBYTE(v29[0]) = 1;
  Loggable.init(wrappedValue:)();
  v26 = v5[14];
  LOBYTE(v29[0]) = 1;
  Loggable.init(wrappedValue:)();
}

uint64_t EmergencyCountdownView_Previews.sampleModel.unsafeMutableAddressor()
{
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for EmergencyCountdownModel();

  return __swift_project_value_buffer(v0, static EmergencyCountdownView_Previews.sampleModel);
}

uint64_t static EmergencyCountdownView_Previews.sampleModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for EmergencyCountdownModel();
  v3 = __swift_project_value_buffer(v2, static EmergencyCountdownView_Previews.sampleModel);
  return outlined init with copy of EmergencyCountdownModel(v3, a1, type metadata accessor for EmergencyCountdownModel);
}

uint64_t static EmergencyCountdownView_Previews.previews.getter()
{
  v0 = type metadata accessor for EmergencyCountdownModel();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static EmergencyCountdownView_Previews.sampleModel);
  outlined init with copy of EmergencyCountdownModel(v4, v3, type metadata accessor for EmergencyCountdownModel);
  type metadata accessor for EmergencyCountdownView(0);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownView and conformance EmergencyCountdownView, type metadata accessor for EmergencyCountdownView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static EmergencyCountdownView_Previews.previews.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for EmergencyCountdownView(0);
  outlined init with copy of EmergencyCountdownModel(a1, a2 + v4[7], type metadata accessor for EmergencyCountdownModel);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v5;
  v6 = a2 + v4[5];
  InteractionDelegate.init()();
  v7 = v4[6];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (a2 + v7);
  swift_beginAccess();
  type metadata accessor for EmergencyCountdownViewModel(0);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel);

  result = ObservedObject.init(wrappedValue:)();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance EmergencyCountdownView_Previews()
{
  v0 = type metadata accessor for EmergencyCountdownModel();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static EmergencyCountdownView_Previews.sampleModel);
  outlined init with copy of EmergencyCountdownModel(v4, v3, type metadata accessor for EmergencyCountdownModel);
  type metadata accessor for EmergencyCountdownView(0);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel);
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type EmergencyCountdownView and conformance EmergencyCountdownView, type metadata accessor for EmergencyCountdownView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance EmergencyCountdownView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance EmergencyCountdownView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

uint64_t outlined assign with take of EmergencyCountdownModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI23EmergencyCountdownModelVSgMd, &_s14PhoneSnippetUI23EmergencyCountdownModelVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E54CF7C()
{
  v1 = type metadata accessor for InteractionDelegateWrapper();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EmergencyCountdownViewModel.updateCounter(interactionDelegate:currentAnimationStep:context:)()
{
  v1 = *(type metadata accessor for InteractionDelegateWrapper() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return (*(**(v0 + 16) + 1360))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for EmergencyCountdownView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAGyAH07AmbientkL0VALGGAGyAH07SlidingkL4ViewVALGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGAEyAF07SlidingjK4ViewVAJGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGAEyAF07SlidingjK4ViewVAJGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>>, ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGAEyAF07AmbientjK0VAJGGMR);
    lazy protocol witness table accessor for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier>, ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025CarPlayEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type CarPlayEmergencyCountdown and conformance CarPlayEmergencyCountdown, type metadata accessor for CarPlayEmergencyCountdown);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CarPlayEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB025AmbientEmergencyCountdownVAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type AmbientEmergencyCountdown and conformance AmbientEmergencyCountdown, type metadata accessor for AmbientEmergencyCountdown);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AmbientEmergencyCountdown, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB029SlidingEmergencyCountdownViewVAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type SlidingEmergencyCountdownView and conformance SlidingEmergencyCountdownView, type metadata accessor for SlidingEmergencyCountdownView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SlidingEmergencyCountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of EmergencyCountdownModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of EmergencyCountdownModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in EmergencyCountdownView.body.getter()
{
  v1 = *(type metadata accessor for EmergencyCountdownView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #2 in EmergencyCountdownView.body.getter(v2);
}

uint64_t objectdestroy_121Tm()
{
  v1 = (type metadata accessor for EmergencyCountdownView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = type metadata accessor for InteractionDelegate();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v3 + v1[8] + 8);

  v7 = v3 + v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = type metadata accessor for EmergencyCountdownModel();
  v9(&v7[v10[5]], v8);
  v9(&v7[v10[6]], v8);
  v9(&v7[v10[7]], v8);
  v9(&v7[v10[8]], v8);
  v9(&v7[v10[9]], v8);
  v9(&v7[v10[10]], v8);
  v9(&v7[v10[11]], v8);
  v9(&v7[v10[12]], v8);
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v13 = *(*(v12 - 8) + 8);
  v13(&v7[v11], v12);
  v13(&v7[v10[14]], v12);
  v13(&v7[v10[15]], v12);
  v14 = v10[16];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v16 = *(*(v15 - 8) + 8);
  v16(&v7[v14], v15);
  v16(&v7[v10[17]], v15);
  v17 = *&v7[v10[18] + 8];

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in EmergencyCountdownView.body.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EmergencyCountdownView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t partial apply for closure #5 in EmergencyCountdownView.body.getter(uint64_t *a1)
{
  v3 = *(type metadata accessor for EmergencyCountdownView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #5 in EmergencyCountdownView.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownDismissalReason and conformance EmergencyCountdownDismissalReason()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownDismissalReason and conformance EmergencyCountdownDismissalReason;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownDismissalReason and conformance EmergencyCountdownDismissalReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownDismissalReason and conformance EmergencyCountdownDismissalReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownView_Previews and conformance EmergencyCountdownView_Previews);
  }

  return result;
}

uint64_t sub_25E54DFE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 552))();
  *a2 = result;
  return result;
}

uint64_t sub_25E54E450@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25E54E4F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25E54E5A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25E54E648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1224))();
  *a2 = result;
  return result;
}

void type metadata completion function for EmergencyCountdownViewModel()
{
  type metadata accessor for EmergencyCountdownModel?();
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Int>);
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<CGFloat>);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        type metadata accessor for Published<Publishers.Autoconnect<NSTimer.TimerPublisher>>();
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<String>);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Bool>);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for EmergencyCountdownModel?()
{
  if (!lazy cache variable for type metadata for EmergencyCountdownModel?)
  {
    type metadata accessor for EmergencyCountdownModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EmergencyCountdownModel?);
    }
  }
}

void type metadata accessor for Published<Publishers.Autoconnect<NSTimer.TimerPublisher>>()
{
  if (!lazy cache variable for type metadata for Published<Publishers.Autoconnect<NSTimer.TimerPublisher>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Publishers.Autoconnect<NSTimer.TimerPublisher>>);
    }
  }
}

void type metadata accessor for Published<Int>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25E54EAC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for InteractionDelegate();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for EmergencyCountdownModel();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25E54EC08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for InteractionDelegate();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for EmergencyCountdownModel();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void type metadata completion function for EmergencyCountdownView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<EmergencyCountdownViewModel>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for EmergencyCountdownModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t type metadata accessor for NSTimer(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t DisambiguationItemWithDirectInvocationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DisambiguationItemWithDirectInvocationModel.personHandle.getter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

double key path getter for DisambiguationItemWithDirectInvocationModel.personHandle : DisambiguationItemWithDirectInvocationModel@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.personHandle : DisambiguationItemWithDirectInvocationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t DisambiguationItemWithDirectInvocationModel.personHandle.setter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*DisambiguationItemWithDirectInvocationModel.personHandle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.spokenHandle.getter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for DisambiguationItemWithDirectInvocationModel.spokenHandle : DisambiguationItemWithDirectInvocationModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.spokenHandle : DisambiguationItemWithDirectInvocationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t DisambiguationItemWithDirectInvocationModel.spokenHandle.setter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*DisambiguationItemWithDirectInvocationModel.spokenHandle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.getter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue : DisambiguationItemWithDirectInvocationModel@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue : DisambiguationItemWithDirectInvocationModel(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.setter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t DisambiguationItemWithDirectInvocationModel.label.getter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

double key path getter for DisambiguationItemWithDirectInvocationModel.label : DisambiguationItemWithDirectInvocationModel@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.label : DisambiguationItemWithDirectInvocationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t DisambiguationItemWithDirectInvocationModel.label.setter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*DisambiguationItemWithDirectInvocationModel.label.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

void property wrapper backing initializer of DisambiguationItemWithDirectInvocationModel.rskeCommand(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v4 = a1;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
}

uint64_t DisambiguationItemWithDirectInvocationModel.rskeCommand.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  v5 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v6 = CodableAceObject.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t key path getter for DisambiguationItemWithDirectInvocationModel.rskeCommand : DisambiguationItemWithDirectInvocationModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v8 = CodableAceObject.wrappedValue.getter();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.rskeCommand : DisambiguationItemWithDirectInvocationModel(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  v4 = Loggable.wrappedValue.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  CodableAceObject.wrappedValue.setter();
  return v4(&v6, 0);
}

void DisambiguationItemWithDirectInvocationModel.rskeCommand.setter(void *a1)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  v4 = Loggable.wrappedValue.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  CodableAceObject.wrappedValue.setter();
  v4(&v5, 0);
}

void (*DisambiguationItemWithDirectInvocationModel.rskeCommand.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  *(v3 + 64) = Loggable.wrappedValue.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 72) = CodableAceObject.wrappedValue.modify();
  return DisambiguationItemWithDirectInvocationModel.rskeCommand.modify;
}

void DisambiguationItemWithDirectInvocationModel.rskeCommand.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t DisambiguationItemWithDirectInvocationModel.type.getter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

double key path getter for DisambiguationItemWithDirectInvocationModel.type : DisambiguationItemWithDirectInvocationModel@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  Loggable.wrappedValue.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t key path setter for DisambiguationItemWithDirectInvocationModel.type : DisambiguationItemWithDirectInvocationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t DisambiguationItemWithDirectInvocationModel.type.setter()
{
  v0 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*DisambiguationItemWithDirectInvocationModel.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

unint64_t DisambiguationItemWithDirectInvocationModel.ItemType.description.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD000000000000018;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v5, ".phoneNumber(");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x25F8B7B50](a1, a2);
  MEMORY[0x25F8B7B50](41, 0xE100000000000000);
  return v5[0];
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025E5A6570 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B8010](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B8010](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationItemWithDirectInvocationModel.ItemType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO33EmergencySentinelPersonCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO33EmergencySentinelPersonCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO0D16NumberCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO0D16NumberCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();
  v18 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    v26 = 0;
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v27 = 1;
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();
    v20 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v20, v23);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized DisambiguationItemWithDirectInvocationModel.ItemType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t DisambiguationItemWithDirectInvocationModel.init(id:personHandle:spokenHandle:shouldPrintHandleBlue:label:rskeCommand:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, unint64_t a12)
{
  v36 = a7;
  v37 = a8;
  v34 = a6;
  v41 = a5;
  v33 = a4;
  v46 = a2;
  v43 = a11;
  v44 = a12;
  v38 = a10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v15 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v33 - v16;
  v17 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v18 = v17[5];
  v47 = 0;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v19 = v17[8];
  v47 = 0;
  v48 = 0;
  Loggable.init(wrappedValue:)();
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v45 = a1;
  v40 = v20;
  v22(a9, a1);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v24 = *(*(v23 - 8) + 8);
  v24(a9 + v18, v23);
  v47 = v46;
  v48 = a3;
  v42 = a3;
  Loggable.init(wrappedValue:)();
  v25 = v17[7];
  LOBYTE(v47) = v34;
  Loggable.init(wrappedValue:)();
  v24(a9 + v19, v23);
  v47 = v36;
  v48 = v37;
  Loggable.init(wrappedValue:)();
  v26 = v17[9];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v27 = v38;
  v28 = v41;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  if (v28)
  {

    v29 = v33;
  }

  else
  {
    if (v42)
    {
      v29 = v46;
    }

    else
    {
      v29 = 0;
    }

    if (v42)
    {
      v28 = v42;
    }

    else
    {
      v28 = 0xE000000000000000;
    }
  }

  v30 = v17[6];
  v47 = v29;
  v48 = v28;
  Loggable.init(wrappedValue:)();
  v31 = v17[10];
  v47 = v43;
  v48 = v44;
  Loggable.init(wrappedValue:)();

  return (*(v21 + 8))(v45, v40);
}

uint64_t DisambiguationItemWithDirectInvocationModel.hash(into:)()
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6D6F43656B7372;
  if (v1 != 5)
  {
    v3 = 1701869940;
  }

  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x6C6562616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x61486E6F73726570;
  if (v1 != 1)
  {
    v5 = 0x61486E656B6F7073;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DisambiguationItemWithDirectInvocationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisambiguationItemWithDirectInvocationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationItemWithDirectInvocationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
    v10 = *(v9 + 20);
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v9;
    v11 = *(v9 + 24);
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v19[7];
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v19;
    v14 = v19[8];
    v22 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v13[9];
    v21 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v19[10];
    v20 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int DisambiguationItemWithDirectInvocationModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DisambiguationItemWithDirectInvocationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  v64 = *(v67 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v78 = *(v83 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v83);
  v70 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = v87[8];
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = type metadata accessor for UUID();
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v19);
  v72 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 20);
  v89 = 0;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v86 = v31;
  Loggable.init(wrappedValue:)();
  v91 = v26;
  v32 = *(v26 + 32);
  v89 = 0;
  v90 = 0;
  v85 = v32;
  Loggable.init(wrappedValue:)();
  v34 = a1[3];
  v33 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys();
  v81 = v25;
  v35 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    v82 = v35;
    v38 = v88;
    __swift_destroy_boxed_opaque_existential_0(v84);
    v39 = v30;
    v40 = v87[1];
    v40(&v39[v86], v38);
    return (v40)(&v39[v85], v38);
  }

  else
  {
    v36 = v73;
    LOBYTE(v89) = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v37 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v19;
    v43 = *(v71 + 32);
    v44 = v30;
    v72 = v42;
    v43(v30, v37);
    LOBYTE(v89) = 1;
    v45 = v18;
    v46 = lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>);
    v47 = v88;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82 = v46;
    v48 = v87[5];
    v48(&v44[v86], v45, v47);
    LOBYTE(v89) = 2;
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    v49 = v36;
    v50 = v80;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51 = v44;
    v63 = v48;
    v52 = v91;
    (*(v79 + 32))(&v44[*(v91 + 24)], v49, v50);
    LOBYTE(v89) = 3;
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>);
    v53 = v70;
    v54 = v83;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v78 + 32))(v51 + *(v52 + 28), v53, v54);
    LOBYTE(v89) = 4;
    v55 = v69;
    v56 = v88;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v63(v51 + v85, v55, v56);
    LOBYTE(v89) = 5;
    lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>);
    v57 = v68;
    v58 = v77;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v91;
    (*(v76 + 32))(v51 + *(v91 + 36), v57, v58);
    LOBYTE(v89) = 6;
    lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>);
    v60 = v66;
    v61 = v67;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v74 + 8))(v81, v75);
    (*(v64 + 32))(v51 + *(v59 + 40), v60, v61);
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v51, v65, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
    __swift_destroy_boxed_opaque_existential_0(v84);
    return outlined destroy of DisambiguationItemWithDirectInvocationModel(v51, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisambiguationItemWithDirectInvocationModel()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DisambiguationItemWithDirectInvocationModel()
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisambiguationItemWithDirectInvocationModel()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ForeignEmergencyCallDisambiguationModel.foreignEmergencyNumberItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 20);

  return outlined init with copy of DisambiguationItemWithDirectInvocationModel?(v3, a1);
}

uint64_t ForeignEmergencyCallDisambiguationModel.prompt.getter()
{
  v1 = (v0 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ForeignEmergencyCallDisambiguationModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ForeignEmergencyCallDisambiguationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ForeignEmergencyCallDisambiguationModel.init(emergencyServicesItem:foreignEmergencyNumberItem:prompt:shouldEnableCarPlayUIRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v13 = (a6 + v12[8]);
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x800000025E5A6140;
  outlined init with take of DisambiguationItemWithDirectInvocationModel?(a1, a6);
  result = outlined init with take of DisambiguationItemWithDirectInvocationModel?(a2, a6 + v12[5]);
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[7]) = a5;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x74706D6F7270;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (*v0)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ForeignEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForeignEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForeignEmergencyCallDisambiguationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI39ForeignEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI39ForeignEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel and conformance DisambiguationItemWithDirectInvocationModel, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
    v12 = v11[5];
    v25 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + v11[7]);
    v23 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v22 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ForeignEmergencyCallDisambiguationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI39ForeignEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI39ForeignEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys();
  v39 = v13;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v8;
  v34 = v17;
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v44 = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel and conformance DisambiguationItemWithDirectInvocationModel, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v20 = v36;
  v21 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v20;
  v23 = v34;
  outlined init with take of DisambiguationItemWithDirectInvocationModel?(v22, v34);
  v43 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of DisambiguationItemWithDirectInvocationModel?(v19, v23 + v14[5]);
  v42 = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = (v23 + v14[6]);
  *v25 = v24;
  v25[1] = v26;
  v41 = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v37;
  *(v23 + v14[7]) = v27 & 1;
  v40 = 4;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v30;
  v32 = (v23 + v14[8]);
  (*(v28 + 8))(v39, v21);
  *v32 = v29;
  v32[1] = v31;
  outlined init with copy of DisambiguationItemWithDirectInvocationModel(v23, v35, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DisambiguationItemWithDirectInvocationModel(v23, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance ForeignEmergencyCallDisambiguationModel(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t LocalEmergencyCallDisambiguationModel.appBundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LocalEmergencyCallDisambiguationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocalEmergencyCallDisambiguationModel.prompt.getter()
{
  v0 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for LocalEmergencyCallDisambiguationModel.prompt : LocalEmergencyCallDisambiguationModel@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t key path setter for LocalEmergencyCallDisambiguationModel.prompt : LocalEmergencyCallDisambiguationModel(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t LocalEmergencyCallDisambiguationModel.prompt.setter()
{
  v0 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*LocalEmergencyCallDisambiguationModel.prompt.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t LocalEmergencyCallDisambiguationModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LocalEmergencyCallDisambiguationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LocalEmergencyCallDisambiguationModel(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LocalEmergencyCallDisambiguationModel.init(appBundleId:prompt:items:shouldEnableCarPlayUIRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v11 = (a5 + v10[9]);
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x800000025E5A6160;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v12 = a5 + v10[7];
  UUID.init()();
  v13 = v10[8];
  return Loggable.init(wrappedValue:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LocalEmergencyCallDisambiguationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C646E7542707061;
  v3 = 25705;
  v4 = 0x74706D6F7270;
  if (v1 != 4)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736D657469;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LocalEmergencyCallDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LocalEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocalEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalEmergencyCallDisambiguationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI37LocalEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI37LocalEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v22 = v3[2];
    v21[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMR);
    lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel and conformance DisambiguationItemWithDirectInvocationModel);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 24);
    v21[14] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
    v15 = v14[7];
    v21[13] = 3;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v14[8];
    v21[12] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v14[9]);
    v18 = *v17;
    v19 = v17[1];
    v21[11] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LocalEmergencyCallDisambiguationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v47 - v4;
  v6 = type metadata accessor for UUID();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI37LocalEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI37LocalEmergencyCallDisambiguationModelV10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v12 = &v47 - v11;
  v13 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v17 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();
  v57 = v12;
  v19 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  v48 = v5;
  v49 = v9;
  v21 = v53;
  v20 = v54;
  v58 = v13;
  v50 = v16;
  v22 = v55;
  v66 = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v50;
  *v50 = v23;
  v25[1] = v26;
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMR);
  v65 = 1;
  lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel and conformance DisambiguationItemWithDirectInvocationModel);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25[2] = v60;
  v64 = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 0;
  *(v25 + 24) = v27 & 1;
  v63 = 3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v28 = v49;
  v29 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v29;
  if (v29)
  {
    (*(v21 + 8))(v57, v22);
    v30 = 0;
    v31 = 0;
    v32 = v52;
    v33 = v56;
  }

  else
  {
    v32 = v52;
    (*(v52 + 32))(v25 + v58[7], v28, v6);
    v62 = 4;
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
    v35 = v47;
    v34 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v35;
    if (v35)
    {
      (*(v21 + 8))(v57, v22);
      v31 = 0;
      v30 = 1;
      v33 = v56;
    }

    else
    {
      v33 = v56;
      (*(v56 + 32))(v25 + v58[8], v34, v20);
      v61 = 5;
      v36 = v47;
      v37 = KeyedDecodingContainer.decode(_:forKey:)();
      v47 = v36;
      if (!v36)
      {
        v43 = v37;
        v44 = v38;
        v45 = v50;
        v46 = (v50 + v58[9]);
        (*(v21 + 8))(v57, v22);
        *v46 = v43;
        v46[1] = v44;
        outlined init with copy of DisambiguationItemWithDirectInvocationModel(v45, v51, type metadata accessor for LocalEmergencyCallDisambiguationModel);
        __swift_destroy_boxed_opaque_existential_0(v59);
        return outlined destroy of DisambiguationItemWithDirectInvocationModel(v45, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      }

      (*(v21 + 8))(v57, v22);
      v30 = 1;
      v31 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v59);
  v39 = v50;
  v40 = v50[1];

  v41 = v39[2];

  if (v30)
  {
    v42 = v58;
    result = (*(v32 + 8))(v39 + v58[7], v6);
    if ((v31 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v42 = v58;
    if (!v31)
    {
      return result;
    }
  }

  return (*(v33 + 8))(v39 + v42[8], v20);
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance LocalEmergencyCallDisambiguationModel(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LocalEmergencyCallDisambiguationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized DisambiguationItemWithDirectInvocationModel.ItemType.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO33EmergencySentinelPersonCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO33EmergencySentinelPersonCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO0D16NumberCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO0D16NumberCodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelV0H4TypeO10CodingKeys33_320E7F866717C14F08247083A20C12E2LLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v37 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys();
  v19 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v36 = v12;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = specialized Collection<>.popFirst()();
    v23 = v11;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v11;
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v28 = &type metadata for DisambiguationItemWithDirectInvocationModel.ItemType;
      v18 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v36 + 8))(v15, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.EmergencySentinelPersonCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v36;
      (*(v34 + 8))(v6, v33);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v42 = 0;
      lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys and conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v36;
      v18 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v35 + 8))(v10, v7);
      (*(v31 + 8))(v15, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v18;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType();
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DisambiguationItemWithDirectInvocationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of DisambiguationItemWithDirectInvocationModel?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DisambiguationItemWithDirectInvocationModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(a2, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ForeignEmergencyCallDisambiguationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LocalEmergencyCallDisambiguationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel, type metadata accessor for LocalEmergencyCallDisambiguationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E554BBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[10];

  return v19(v20, a2, v18);
}

uint64_t sub_25E554E24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[10];

  return v21(v22, a2, a2, v20);
}

void type metadata completion function for DisambiguationItemWithDirectInvocationModel()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Loggable<String?>(319, &lazy cache variable for type metadata for Loggable<String?>, &_sSSSgMd, &_sSSSgMR);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Loggable<String?>(319, &lazy cache variable for type metadata for Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<DisambiguationItemWithDirectInvocationModel.ItemType>);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Loggable<String?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Loggable();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for DisambiguationItemWithDirectInvocationModel.ItemType(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_25E55532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25E55540C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for ForeignEmergencyCallDisambiguationModel()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel?(319, &lazy cache variable for type metadata for DisambiguationItemWithDirectInvocationModel?, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_25E55558C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25E5556D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for LocalEmergencyCallDisambiguationModel()
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel?(319, &lazy cache variable for type metadata for [DisambiguationItemWithDirectInvocationModel], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DisambiguationItemWithDirectInvocationModel?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LocalEmergencyCallDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalEmergencyCallDisambiguationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized DisambiguationItemWithDirectInvocationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61486E6F73726570 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61486E656B6F7073 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025E5A6590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6D6F43656B7372 && a2 == 0xEB00000000646E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized ForeignEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000025E5A65B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025E5A65D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025E5A65F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized LocalEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025E5A65F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void closure #1 in static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(char a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  oslog = Logger.logObject.getter();
  v7 = a3();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_25E523000, oslog, v7, a4, v8, 8u);
    MEMORY[0x25F8B8670](v8, -1, -1);
  }
}

void specialized static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, NSObject *a7)
{
  v49 = a2;
  v50 = a7;
  v43 = a5;
  v47 = a4;
  v48 = a1;
  v9 = type metadata accessor for Logger();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, "$w");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v42 - v14;
  v16 = type metadata accessor for RadarFilingExtras();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRComponentInfo();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    v25 = type metadata accessor for TapToRadarManager();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v42[2] = a3;
    v42[1] = TapToRadarManager.init()();
    MEMORY[0x25F8B6A00](0xD000000000000011, 0x800000025E5A6640, 0x656E6F6850, 0xE500000000000000, 1071806);

    MEMORY[0x25F8B6A20](MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, v43, a6);
    v43 = "Siri Domains Apps";
    (*(v17 + 16))(v15, v20, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    v28 = v44;
    (*(v44 + 16))(v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v9);
    v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v11, v9);
    dispatch thunk of TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)();

    outlined destroy of RadarFilingExtras?(v15);
    (*(v17 + 8))(v20, v16);
    (*(v45 + 8))(v24, v46);
  }

  else
  {
    v31 = v49;

    v50 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315394;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v31, &v51);
      *(v33 + 12) = 2080;
      v35 = [objc_opt_self() processInfo];
      v36 = [v35 processName];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v51);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_25E523000, v50, v32, "#FileRadarUtils tapToRadar: not an internal build. Skipping filing radar for %s, process=%s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8B8670](v34, -1, -1);
      MEMORY[0x25F8B8670](v33, -1, -1);
    }

    else
    {
      v41 = v50;
    }
  }
}

void specialized static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v28 = a3;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    v13 = type metadata accessor for AutoBugCaptureManager();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    AutoBugCaptureManager.init(domain:sessionDuration:)();
    (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();
  }

  else
  {

    v29 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, a2, &v30);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a4, &v30);
      *(v19 + 22) = 2080;
      v21 = [objc_opt_self() processInfo];
      v22 = [v21 processName];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

      *(v19 + 24) = v26;
      _os_log_impl(&dword_25E523000, v29, v18, "#FileRadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s/%s, process=%s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8B8670](v20, -1, -1);
      MEMORY[0x25F8B8670](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t outlined destroy of RadarFilingExtras?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, "$w");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ForEachWithIndex.init(data:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ForEachWithIndex();
  v9 = (a5 + *(result + 68));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t ForEachWithIndex.content.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ForEachWithIndex.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v44 = *(a1 - 1);
  v45 = *(v44 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v43 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  *&v48 = *(v4 + 32);
  v7 = *(*(*(v48 + 8) + 8) + 8);
  v8 = type metadata accessor for EnumeratedSequence();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Array();
  v42 = v11;
  v12 = a1[3];
  WitnessTable = swift_getWitnessTable();
  v54 = v11;
  v55 = v10;
  v56 = v12;
  v57 = WitnessTable;
  v13 = v12;
  v38[1] = v12;
  v58 = MEMORY[0x277D83B98];
  v14 = type metadata accessor for ForEach();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v39 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = v38 - v19;
  MEMORY[0x25F8B7B90](v6, v7);
  swift_getWitnessTable();
  v20 = Array.init<A>(_:)();
  *&v21 = v48;
  v22 = a1[5];
  v23 = a1[6];
  *(&v21 + 1) = v22;
  *&v24 = v6;
  *(&v24 + 1) = v13;
  v47 = v21;
  v48 = v24;
  v54 = v20;
  v49 = v24;
  v50 = v21;
  v25 = a1[7];
  v51 = v23;
  v52 = v25;
  v38[0] = swift_getKeyPath();
  v26 = v43;
  v27 = v44;
  (*(v44 + 16))(v43, v2, a1);
  v28 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v30 = v47;
  *(v29 + 16) = v48;
  *(v29 + 32) = v30;
  *(v29 + 48) = v23;
  *(v29 + 56) = v25;
  (*(v27 + 32))(v29 + v28, v26, a1);
  v31 = swift_allocObject();
  v32 = v47;
  *(v31 + 16) = v48;
  *(v31 + 32) = v32;
  *(v31 + 48) = v23;
  *(v31 + 56) = v25;
  *(v31 + 64) = partial apply for closure #1 in ForEachWithIndex.body.getter;
  *(v31 + 72) = v29;
  v33 = v39;
  ForEach<>.init(_:id:content:)();
  v53 = v22;
  swift_getWitnessTable();
  v34 = v15[2];
  v35 = v40;
  v34(v40, v33, v14);
  v36 = v15[1];
  v36(v33, v14);
  v34(v46, v35, v14);
  return (v36)(v35, v14);
}

uint64_t closure #1 in ForEachWithIndex.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v23 = a3 + *(type metadata accessor for ForEachWithIndex() + 68);
  v24 = *(v23 + 8);
  (*v23)(a1, a2);
  v25 = v10[2];
  v25(v16, v14, a4);
  v26 = v10[1];
  v26(v14, a4);
  v25(a5, v16, a4);
  return (v26)(v16, a4);
}

uint64_t sub_25E557CA0()
{
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v1 = (type metadata accessor for ForEachWithIndex() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  (*(*(v6 - 8) + 8))(&v0[v2]);
  v4 = *&v0[v2 + 8 + v1[19]];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ForEachWithIndex.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[7];
  v11 = v3[2];
  v12 = v3[4];
  v13 = v3[5];
  v14 = v3[6];
  v9 = *(type metadata accessor for ForEachWithIndex() - 8);
  return closure #1 in ForEachWithIndex.body.getter(a1, a2, v3 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v7, a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed A.Sequence.Element) -> (@out B)(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_25E557F0C()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed A.Sequence.Element) -> (@out B)(char *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  return thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed A.Sequence.Element) -> (@out B)(a1, *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t associated type witness table accessor for View.Body : View in ForEachWithIndex<A, B>(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

unint64_t type metadata completion function for ForEachWithIndex(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForEachWithIndex(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ForEachWithIndex(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t sub_25E55839C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = *(*(*(a1[2] + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  return swift_getWitnessTable();
}

uint64_t ForeignEmergencyCallDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  v6 = a2 + *(v5 + 20);
  InteractionDelegate.init()();
  return outlined init with take of ForeignEmergencyCallDisambiguationModel(a1, a2 + *(v5 + 24), type metadata accessor for ForeignEmergencyCallDisambiguationModel);
}

uint64_t type metadata accessor for ForeignEmergencyCallDisambiguationView()
{
  result = type metadata singleton initialization cache for ForeignEmergencyCallDisambiguationView;
  if (!type metadata singleton initialization cache for ForeignEmergencyCallDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ForeignEmergencyCallDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v2 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v4 = &v55 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0J10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_AcAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0X0VyAA08ModifiedH0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGG_AD08RFButtonN0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA12__AA23DefaultGlassEffectShapeVQo_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0J10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_AcAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0X0VyAA08ModifiedH0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGG_AD08RFButtonN0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA12__AA23DefaultGlassEffectShapeVQo_Qo_MR);
  v59 = *(v63 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v63);
  v7 = &v55 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAcEE15componentTapped0L10Navigation7performQrSb_yyctFQOyAE014SimpleItemRichC0V_Qo__Qo_AcAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0Z0VyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonP0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA13__AA23DefaultGlassEffectShapeVQo_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAcEE15componentTapped0L10Navigation7performQrSb_yyctFQOyAE014SimpleItemRichC0V_Qo__Qo_AcAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0Z0VyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonP0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA13__AA23DefaultGlassEffectShapeVQo_Qo__Qo_MR);
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v56 = &v55 - v9;
  v70 = type metadata accessor for BinaryButtonView();
  v64 = *(v70 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v70);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0012BinaryButtonC0V_Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0012BinaryButtonC0V_Qo_MR);
  v65 = *(v71 - 8);
  v12 = *(v65 + 8);
  MEMORY[0x28223BE20](v71);
  v58 = &v55 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB014ComponentStackVyAA9TupleViewVyAA0K0PAHE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAA03AnyK0V_Qo__AGyAV05PhonegB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGAnAE16privacySensitiveyQrSbFQOyAH012BinaryButtonK0V_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB014ComponentStackVyAA9TupleViewVyAA0K0PAHE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAA03AnyK0V_Qo__AGyAV05PhonegB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGAnAE16privacySensitiveyQrSbFQOyAH012BinaryButtonK0V_Qo__GMR);
  v14 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v55 - v15;
  v16 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMR);
  v20 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v22 = &v55 - v21;
  v23 = v1;
  if (*v1)
  {
    v24 = *v1;
    dispatch thunk of Context.currentIdiom.getter();

    if (VRXIdiom.isCarPlay.getter())
    {
      v65 = type metadata accessor for ForeignEmergencyCallDisambiguationView;
      v55 = v23;
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v23, &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ForeignEmergencyCallDisambiguationView);
      v25 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v26 = swift_allocObject();
      outlined init with take of ForeignEmergencyCallDisambiguationModel(&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyD0V_Qo__AA15ModifiedContentVyAN05PhoneeB029CarPlayDisambiguationListItemVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyD0V_Qo__AA15ModifiedContentVyAN05PhoneeB029CarPlayDisambiguationListItemVGtGMR);
      lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyD0V_Qo__AA15ModifiedContentVyAN05PhoneeB029CarPlayDisambiguationListItemVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyD0V_Qo__AA15ModifiedContentVyAN05PhoneeB029CarPlayDisambiguationListItemVGtGMR);
      ComponentStack.init(content:)();
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v55, &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
      v27 = swift_allocObject();
      outlined init with take of ForeignEmergencyCallDisambiguationModel(v19, v27 + v25, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      v28 = v69;
      v29 = &v22[*(v68 + 36)];
      *v29 = partial apply for closure #2 in ForeignEmergencyCallDisambiguationView.body.getter;
      v29[1] = v27;
      v29[2] = 0;
      v29[3] = 0;
      outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v22, v28, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      v30 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40]);
      v77 = v70;
      v78 = v30;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v22, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMR);
    }

    else
    {
      v32 = ForeignEmergencyCallDisambiguationView.emergencyServicesButton.getter();
      v33 = MEMORY[0x277CE11D0];
      v34 = MEMORY[0x277D63A58];
      v79 = MEMORY[0x277CE11D0];
      v80 = MEMORY[0x277D63A58];
      v77 = v32;
      v35 = v23 + *(v16 + 24);
      v36 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      ForeignEmergencyCallDisambiguationView.button(for:)(v35 + *(v36 + 20), v4);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA19_ConditionalContentVyAC07SnippetB0E10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAcKE15componentTapped0M10Navigation7performQrSb_yyctFQOyAK014SimpleItemRichC0V_Qo__Qo_AcAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AK08RFButtonQ0VQo_GSg_AA07DefaultgeH0VQo_Md, &_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA19_ConditionalContentVyAC07SnippetB0E10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAcKE15componentTapped0M10Navigation7performQrSb_yyctFQOyAK014SimpleItemRichC0V_Qo__Qo_AcAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AK08RFButtonQ0VQo_GSg_AA07DefaultgeH0VQo_MR);
      v38 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?();
      v39 = type metadata accessor for DefaultGlassEffectShape();
      v40 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape, MEMORY[0x277CE0630]);
      v41 = v57;
      v72 = v57;
      v73 = v39;
      v74 = v38;
      v75 = v40;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      View.if<A>(_:transform:)();
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
      v72 = v41;
      v73 = v37;
      v74 = v38;
      v75 = OpaqueTypeConformance2;
      v43 = swift_getOpaqueTypeConformance2();
      v44 = v56;
      v45 = v63;
      View.privacySensitive(_:)();
      (*(v59 + 8))(v7, v45);
      v72 = v45;
      v73 = v43;
      swift_getOpaqueTypeConformance2();
      v46 = v62;
      v47 = View.eraseToAnyView()();
      (*(v60 + 8))(v44, v46);
      v75 = v33;
      v76 = v34;
      v72 = v47;
      v48 = v61;
      BinaryButtonView.init(primaryButton:secondaryButton:)();
      v49 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40]);
      v50 = v58;
      v51 = v70;
      View.privacySensitive(_:)();
      (*(v64 + 8))(v48, v51);
      v52 = v65;
      v53 = v71;
      (*(v65 + 2))(v69, v50, v71);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      v77 = v51;
      v78 = v49;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v52 + 1))(v50, v53);
    }
  }

  else
  {
    v54 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ForeignEmergencyCallDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  v4 = *(v3 - 8);
  v84 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v85 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = v71 - v9;
  MEMORY[0x28223BE20](v8);
  v83 = v71 - v10;
  v80 = type metadata accessor for SeparatorStyle();
  v77 = *(v80 - 8);
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v80);
  v81 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0J10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_AcAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0X0VyAA08ModifiedH0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGG_AD08RFButtonN0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA12__AA23DefaultGlassEffectShapeVQo_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0J10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_AcAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0X0VyAA08ModifiedH0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGG_AD08RFButtonN0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA12__AA23DefaultGlassEffectShapeVQo_Qo_MR);
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v71 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAcEE15componentTapped0L10Navigation7performQrSb_yyctFQOyAE014SimpleItemRichC0V_Qo__Qo_AcAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0Z0VyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonP0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA13__AA23DefaultGlassEffectShapeVQo_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAcEE15componentTapped0L10Navigation7performQrSb_yyctFQOyAE014SimpleItemRichC0V_Qo__Qo_AcAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0Z0VyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonP0VQo_GSg_AcAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyA13__AA23DefaultGlassEffectShapeVQo_Qo__Qo_MR);
  v74 = *(v72 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  v25 = v71 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAA03AnyC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAA03AnyC0V_Qo_MR);
  v88 = *(v78 - 8);
  v26 = *(v88 + 64);
  v27 = MEMORY[0x28223BE20](v78);
  v79 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v75 = v71 - v30;
  MEMORY[0x28223BE20](v29);
  v87 = v71 - v31;
  v32 = *(type metadata accessor for ForeignEmergencyCallDisambiguationView() + 24);
  v71[1] = a1;
  v33 = a1 + v32;
  v71[0] = a1 + v32;
  v34 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  ForeignEmergencyCallDisambiguationView.button(for:)(v33 + *(v34 + 20), v18);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA19_ConditionalContentVyAC07SnippetB0E10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAcKE15componentTapped0M10Navigation7performQrSb_yyctFQOyAK014SimpleItemRichC0V_Qo__Qo_AcAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AK08RFButtonQ0VQo_GSg_AA07DefaultgeH0VQo_Md, &_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA19_ConditionalContentVyAC07SnippetB0E10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAcKE15componentTapped0M10Navigation7performQrSb_yyctFQOyAK014SimpleItemRichC0V_Qo__Qo_AcAE06buttonQ0yQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA6ButtonVyAA08ModifiedJ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AK08RFButtonQ0VQo_GSg_AA07DefaultgeH0VQo_MR);
  v36 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?();
  v37 = type metadata accessor for DefaultGlassEffectShape();
  v38 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape, MEMORY[0x277CE0630]);
  v89 = v15;
  v90 = v37;
  v91 = v36;
  v92 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.if<A>(_:transform:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v18, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v89 = v15;
  v90 = v35;
  v91 = v36;
  v92 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  View.privacySensitive(_:)();
  (*(v73 + 8))(v22, v19);
  v89 = v19;
  v90 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v72;
  v42 = View.eraseToAnyView()();
  (*(v74 + 8))(v25, v41);
  v43 = *(v71[0] + *(v34 + 28));
  v45 = v76;
  v44 = v77;
  v46 = *(v77 + 104);
  v89 = v42;
  if (v43)
  {
    v47 = MEMORY[0x277D62F58];
  }

  else
  {
    v47 = MEMORY[0x277D62F38];
  }

  v48 = *v47;
  v49 = v80;
  v46(v76, v48, v80);
  View.separators(_:isOverride:)();
  v50 = *(v44 + 8);
  v50(v45, v49);

  v89 = ForeignEmergencyCallDisambiguationView.emergencyServicesButton.getter();
  v51 = v81;
  v46(v81, v48, v49);
  v52 = v75;
  View.separators(_:isOverride:)();
  v50(v51, v49);

  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  v53 = EnvironmentObject.init()();
  v55 = v54;
  v56 = v88;
  v57 = v82;
  v58 = v78;
  (*(v88 + 32))(v82, v52, v78);
  v59 = v83;
  v60 = v57 + *(v84 + 44);
  *v60 = v53;
  *(v60 + 8) = v55;
  *(v60 + 16) = 0;
  outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v57, v59, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  v61 = *(v56 + 16);
  v62 = v79;
  v63 = v87;
  v61(v79, v87, v58);
  v64 = v59;
  v65 = v59;
  v66 = v85;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v64, v85, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  v67 = v86;
  v61(v86, v62, v58);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAA03AnyC0V_Qo__AA15ModifiedContentVyAL05PhonedB029CarPlayDisambiguationListItemVGtMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAA03AnyC0V_Qo__AA15ModifiedContentVyAL05PhonedB029CarPlayDisambiguationListItemVGtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v66, &v67[*(v68 + 48)], &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v65, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  v69 = *(v88 + 8);
  v69(v63, v58);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v66, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyE0V_Qo_05PhonefB029CarPlayDisambiguationListItemVGMR);
  return (v69)(v62, v58);
}

uint64_t ForeignEmergencyCallDisambiguationView.emergencyServicesButton.getter()
{
  v1 = type metadata accessor for ButtonItemButtonStyle.Role();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRole_10foreground10backgroundQrAD010ButtonItemI5StyleV0F0O_AA08AnyShapeK0VSgANtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorK0O_SbtFQOyAcDE15componentTapped0Q10Navigation7performQrSb_yyctFQOyAD06Simplej4RichC0V_Qo__Qo_AcAE0eK0yQrqd__AA09PrimitiveiK0Rd__lFQOyAA0I0VyAA08ModifiedO0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonK0VQo_GSg_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRole_10foreground10backgroundQrAD010ButtonItemI5StyleV0F0O_AA08AnyShapeK0VSgANtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorK0O_SbtFQOyAcDE15componentTapped0Q10Navigation7performQrSb_yyctFQOyAD06Simplej4RichC0V_Qo__Qo_AcAE0eK0yQrqd__AA09PrimitiveiK0Rd__lFQOyAA0I0VyAA08ModifiedO0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonK0VQo_GSg_Qo_MR);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAcDE10buttonRole_10foreground10backgroundQrAD010ButtonItemK5StyleV0H0O_AA08AnyShapeM0VSgAPtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorM0O_SbtFQOyAcDE15componentTapped0S10Navigation7performQrSb_yyctFQOyAD06Simplel4RichC0V_Qo__Qo_AcAE0gM0yQrqd__AA09PrimitivekM0Rd__lFQOyAA0K0VyAA08ModifiedQ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonM0VQo_GSg_Qo__AcAE11glassEffect_2inQrAA5GlassV_qd__tAA0O0Rd__lFQOyA23__AA018DefaultGlassEffectO0VQo_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAcDE10buttonRole_10foreground10backgroundQrAD010ButtonItemK5StyleV0H0O_AA08AnyShapeM0VSgAPtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorM0O_SbtFQOyAcDE15componentTapped0S10Navigation7performQrSb_yyctFQOyAD06Simplel4RichC0V_Qo__Qo_AcAE0gM0yQrqd__AA09PrimitivekM0Rd__lFQOyAA0K0VyAA08ModifiedQ0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonM0VQo_GSg_Qo__AcAE11glassEffect_2inQrAA5GlassV_qd__tAA0O0Rd__lFQOyA23__AA018DefaultGlassEffectO0VQo_Qo_MR);
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v36 = &v34 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAcEE10buttonRole_10foreground10backgroundQrAE010ButtonItemM5StyleV0J0O_AA08AnyShapeO0VSgAQtFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit09SeparatorO0O_SbtFQOyAcEE15componentTapped0U10Navigation7performQrSb_yyctFQOyAE06Simplen4RichC0V_Qo__Qo_AcAE0iO0yQrqd__AA09PrimitivemO0Rd__lFQOyAA0M0VyAA08ModifiedS0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonO0VQo_GSg_Qo__AcAE11glassEffect_2inQrAA5GlassV_qd__tAA0Q0Rd__lFQOyA24__AA018DefaultGlassEffectQ0VQo_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOyAcEE10buttonRole_10foreground10backgroundQrAE010ButtonItemM5StyleV0J0O_AA08AnyShapeO0VSgAQtFQOyAA19_ConditionalContentVyAcEE10separators_10isOverrideQr0F3Kit09SeparatorO0O_SbtFQOyAcEE15componentTapped0U10Navigation7performQrSb_yyctFQOyAE06Simplen4RichC0V_Qo__Qo_AcAE0iO0yQrqd__AA09PrimitivemO0Rd__lFQOyAA0M0VyAA08ModifiedS0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AE08RFButtonO0VQo_GSg_Qo__AcAE11glassEffect_2inQrAA5GlassV_qd__tAA0Q0Rd__lFQOyA24__AA018DefaultGlassEffectQ0VQo_Qo__Qo_MR);
  v38 = *(v40 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - v17;
  v18 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  ForeignEmergencyCallDisambiguationView.button(for:)(v0 + *(v18 + 24), v9);
  v19 = *MEMORY[0x277D63A80];
  v20 = *(v2 + 104);
  v34 = v1;
  v20(v5, v19, v1);
  v42 = static Color.white.getter();
  AnyShapeStyle.init<A>(_:)();
  if (one-time initialization token for emergencyRed != -1)
  {
    swift_once();
  }

  v42 = static Color.emergencyRed;

  AnyShapeStyle.init<A>(_:)();
  v21 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?();
  View.buttonRole(_:foreground:background:)();

  (*(v2 + 8))(v5, v34);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAC07SnippetB0E10buttonRole_10foreground10backgroundQrAI010ButtonItemN5StyleV0K0O_AA03AnyhP0VSgAStFQOyAA19_ConditionalContentVyAcIE10separators_10isOverrideQr0I3Kit09SeparatorP0O_SbtFQOyAcIE15componentTapped0U10Navigation7performQrSb_yyctFQOyAI06Simpleo4RichC0V_Qo__Qo_AcAE0jP0yQrqd__AA09PrimitivenP0Rd__lFQOyAA0N0VyAA08ModifiedS0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AI08RFButtonP0VQo_GSg_Qo__AA07DefaultgeH0VQo_Md, &_s7SwiftUI4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAC07SnippetB0E10buttonRole_10foreground10backgroundQrAI010ButtonItemN5StyleV0K0O_AA03AnyhP0VSgAStFQOyAA19_ConditionalContentVyAcIE10separators_10isOverrideQr0I3Kit09SeparatorP0O_SbtFQOyAcIE15componentTapped0U10Navigation7performQrSb_yyctFQOyAI06Simpleo4RichC0V_Qo__Qo_AcAE0jP0yQrqd__AA09PrimitivenP0Rd__lFQOyAA0N0VyAA08ModifiedS0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AI08RFButtonP0VQo_GSg_Qo__AA07DefaultgeH0VQo_MR);
  v42 = v6;
  v43 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = type metadata accessor for DefaultGlassEffectShape();
  v25 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape, MEMORY[0x277CE0630]);
  v42 = v10;
  v43 = v24;
  v44 = OpaqueTypeConformance2;
  v45 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v36;
  View.if<A>(_:transform:)();
  (*(v37 + 8))(v13, v10);
  v42 = v10;
  v43 = v22;
  v44 = OpaqueTypeConformance2;
  v45 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v41;
  View.privacySensitive(_:)();
  (*(v39 + 8))(v27, v30);
  v42 = v30;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = View.eraseToAnyView()();
  (*(v38 + 8))(v29, v31);
  return v32;
}

void closure #2 in ForeignEmergencyCallDisambiguationView.body.getter(uint64_t a1)
{
  if (*a1)
  {
    v2 = *a1;
    dispatch thunk of Context.hideBackgroundBehindSiri()();
  }

  else
  {
    v1 = *(a1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t ForeignEmergencyCallDisambiguationView.button(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = type metadata accessor for RFButtonStyle();
  v105 = *(v119 - 8);
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v119);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMR);
  v100 = *(v117 - 8);
  v6 = *(v100 + 64);
  MEMORY[0x28223BE20](v117);
  v98 = &v91 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGG_07SnippetB008RFButtonE0VQo_MR);
  v108 = *(v118 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v118);
  v107 = &v91 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAgHE15componentTapped0I10Navigation7performQrSb_yyctFQOyAH014SimpleItemRichF0V_Qo__Qo_AgAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0W0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGG_AH08RFButtonM0VQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAgHE15componentTapped0I10Navigation7performQrSb_yyctFQOyAH014SimpleItemRichF0V_Qo__Qo_AgAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0W0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGG_AH08RFButtonM0VQo__GMR);
  v10 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v91 - v11;
  v106 = type metadata accessor for SeparatorStyle();
  v104 = *(v106 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  v109 = *(v96 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x28223BE20](v96);
  v110 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SimpleItemRichView();
  v94 = *(v111 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v111);
  v93 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  v97 = *(v112 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v112);
  v95 = &v91 - v18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0F10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE15componentTapped0F10Navigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo__Qo_MR);
  v103 = *(v115 - 8);
  v19 = *(v103 + 64);
  MEMORY[0x28223BE20](v115);
  v99 = &v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMR);
  v121 = *(v21 - 8);
  v122 = v21;
  v22 = *(v121 + 64);
  MEMORY[0x28223BE20](v21);
  v114 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v91 - v26;
  v28 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v32 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v91 - v33;
  outlined init with copy of DisambiguationItemWithDirectInvocationModel?(a1, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    outlined destroy of DisambiguationItemWithDirectInvocationModel?(v27);
    v35 = 1;
    return (*(v121 + 56))(a2, v35, 1, v122);
  }

  outlined init with take of ForeignEmergencyCallDisambiguationModel(v27, v34, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v36 = *(v28 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  v37 = v148;
  if (!v148)
  {
    outlined destroy of DisambiguationItemWithDirectInvocationModel(v34);
    v35 = 1;
    return (*(v121 + 56))(a2, v35, 1, v122);
  }

  v92 = a2;
  if (*v120)
  {
    v38 = v147;
    v39 = *v120;
    dispatch thunk of Context.currentIdiom.getter();

    v40 = VRXIdiom.isCarPlay.getter();
    v91 = v34;
    if (v40)
    {
      v147 = v38;
      v148 = v37;
      lazy protocol witness table accessor for type String and conformance String();
      v41 = Text.init<A>(_:)();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v150 = MEMORY[0x277CE0BD0];
      v151 = MEMORY[0x277D638F0];
      v48 = swift_allocObject();
      v147 = v48;
      *(v48 + 16) = v41;
      *(v48 + 24) = v43;
      *(v48 + 32) = v45 & 1;
      *(v48 + 40) = v47;
      v146 = 0;
      v144 = 0u;
      v145 = 0u;
      v143 = 0;
      v141 = 0u;
      v142 = 0u;
      v140 = 0;
      v138 = 0u;
      v139 = 0u;
      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      v131 = 0;
      v129 = 0u;
      v130 = 0u;
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v49 = v93;
      SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
      v50 = v110;
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v120, v110, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v34, v32, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
      v51 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v52 = (v14 + *(v29 + 80) + v51) & ~*(v29 + 80);
      v53 = swift_allocObject();
      outlined init with take of ForeignEmergencyCallDisambiguationModel(v50, v53 + v51, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      outlined init with take of ForeignEmergencyCallDisambiguationModel(v32, v53 + v52, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
      v54 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
      v55 = v95;
      v56 = v111;
      View.componentTapped(isNavigation:perform:)();

      (*(v94 + 8))(v49, v56);
      v57 = v120 + *(v96 + 24);
      v58 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      v59 = v104;
      if (*(v57 + *(v58 + 28)))
      {
        v60 = MEMORY[0x277D62F58];
      }

      else
      {
        v60 = MEMORY[0x277D62F38];
      }

      v61 = v101;
      v62 = v106;
      (*(v104 + 104))(v101, *v60, v106);
      v147 = v56;
      v148 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v64 = v99;
      v65 = v112;
      View.separators(_:isOverride:)();
      (*(v59 + 8))(v61, v62);
      (*(v97 + 8))(v55, v65);
      v66 = v103;
      v67 = v115;
      (*(v103 + 16))(v116, v64, v115);
      swift_storeEnumTagMultiPayload();
      v147 = v65;
      v148 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v68 = lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMR);
      v69 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
      v147 = v117;
      v148 = v119;
      v149 = v68;
      v150 = v69;
      swift_getOpaqueTypeConformance2();
      v70 = v114;
      v71 = v91;
      _ConditionalContent<>.init(storage:)();
      (*(v66 + 8))(v64, v67);
    }

    else
    {
      v72 = v120;
      v120 = v38;
      v73 = v110;
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v72, v110, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      outlined init with copy of ForeignEmergencyCallDisambiguationView(v34, v32, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
      v74 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v75 = (v14 + *(v29 + 80) + v74) & ~*(v29 + 80);
      v76 = swift_allocObject();
      outlined init with take of ForeignEmergencyCallDisambiguationModel(v73, v76 + v74, type metadata accessor for ForeignEmergencyCallDisambiguationView);
      v77 = outlined init with take of ForeignEmergencyCallDisambiguationModel(v32, v76 + v75, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
      MEMORY[0x28223BE20](v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
      lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
      v78 = v98;
      Button.init(action:label:)();

      v79 = v102;
      static PrimitiveButtonStyle<>.rfButton.getter();
      v80 = lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMR);
      v81 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
      v82 = v107;
      v83 = v117;
      v84 = v119;
      View.buttonStyle<A>(_:)();
      (*(v105 + 8))(v79, v84);
      (*(v100 + 8))(v78, v83);
      v85 = v108;
      v86 = v118;
      (*(v108 + 16))(v116, v82, v118);
      swift_storeEnumTagMultiPayload();
      v87 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
      v147 = v111;
      v148 = v87;
      v88 = swift_getOpaqueTypeConformance2();
      v147 = v112;
      v148 = v88;
      swift_getOpaqueTypeConformance2();
      v147 = v83;
      v148 = v84;
      v149 = v80;
      v150 = v81;
      swift_getOpaqueTypeConformance2();
      v70 = v114;
      _ConditionalContent<>.init(storage:)();
      v71 = v91;
      (*(v85 + 8))(v82, v86);
    }

    outlined destroy of DisambiguationItemWithDirectInvocationModel(v71);
    a2 = v92;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v70, v92, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMR);
    v35 = 0;
    return (*(v121 + 56))(a2, v35, 1, v122);
  }

  v90 = *(v120 + 8);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in ForeignEmergencyCallDisambiguationView.emergencyServicesButton.getter()
{
  v0 = type metadata accessor for DefaultGlassEffectShape();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Glass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Glass.regular.getter();
  DefaultGlassEffectShape.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRole_10foreground10backgroundQrAD010ButtonItemI5StyleV0F0O_AA08AnyShapeK0VSgANtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorK0O_SbtFQOyAcDE15componentTapped0Q10Navigation7performQrSb_yyctFQOyAD06Simplej4RichC0V_Qo__Qo_AcAE0eK0yQrqd__AA09PrimitiveiK0Rd__lFQOyAA0I0VyAA08ModifiedO0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonK0VQo_GSg_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRole_10foreground10backgroundQrAD010ButtonItemI5StyleV0F0O_AA08AnyShapeK0VSgANtFQOyAA19_ConditionalContentVyAcDE10separators_10isOverrideQr0D3Kit09SeparatorK0O_SbtFQOyAcDE15componentTapped0Q10Navigation7performQrSb_yyctFQOyAD06Simplej4RichC0V_Qo__Qo_AcAE0eK0yQrqd__AA09PrimitiveiK0Rd__lFQOyAA0I0VyAA08ModifiedO0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGG_AD08RFButtonK0VQo_GSg_Qo_MR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  v11 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?();
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape, MEMORY[0x277CE0630]);
  View.glassEffect<A>(_:in:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in ForeignEmergencyCallDisambiguationView.foreignEmergencyNumberButton.getter()
{
  v0 = type metadata accessor for DefaultGlassEffectShape();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Glass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Glass.regular.getter();
  DefaultGlassEffectShape.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape, MEMORY[0x277CE0630]);
  View.glassEffect<A>(_:in:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0H10Navigation7performQrSb_yyctFQOyAF014SimpleItemRichE0V_Qo__Qo_AeAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0V0VyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGG_AF08RFButtonL0VQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
    type metadata accessor for SimpleItemRichView();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMR);
    type metadata accessor for RFButtonStyle();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGGMR);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAA03AnyI0V_Qo__ACyAR05PhoneeB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAD03AnyG0V_Qo__AD15ModifiedContentVyAP05PhoneaB029CarPlayDisambiguationListItemVGtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAD03AnyG0V_Qo__AD15ModifiedContentVyAP05PhoneaB029CarPlayDisambiguationListItemVGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ForeignEmergencyCallDisambiguationView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ForeignEmergencyCallDisambiguationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in ForeignEmergencyCallDisambiguationView.body.getter(v4, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ForeignEmergencyCallDisambiguationView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for InteractionDelegate();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + v1[8];
  v7 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v8 = *(*(v7 - 1) + 48);
  if (!v8(v6, 1, v7))
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v6, v9);
    v10 = v7[5];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v12 = *(*(v11 - 8) + 8);
    v12(v6 + v10, v11);
    v13 = v7[6];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
    v15 = v7[7];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
    v12(v6 + v7[8], v11);
    v17 = v7[9];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
    v19 = v7[10];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  v21 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v22 = v6 + v21[5];
  if (!v8(v22, 1, v7))
  {
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 8))(v22, v23);
    v24 = v7[5];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v26 = *(*(v25 - 8) + 8);
    v26(v22 + v24, v25);
    v27 = v7[6];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    (*(*(v28 - 8) + 8))(v22 + v27, v28);
    v29 = v7[7];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    (*(*(v30 - 8) + 8))(v22 + v29, v30);
    v26(v22 + v7[8], v25);
    v31 = v7[9];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    (*(*(v32 - 8) + 8))(v22 + v31, v32);
    v33 = v7[10];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    (*(*(v34 - 8) + 8))(v22 + v33, v34);
  }

  v35 = *(v6 + v21[6] + 8);

  v36 = *(v6 + v21[8] + 8);

  return swift_deallocObject();
}

void partial apply for closure #2 in ForeignEmergencyCallDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for ForeignEmergencyCallDisambiguationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #2 in ForeignEmergencyCallDisambiguationView.body.getter(v2);
}

uint64_t closure #1 in ForeignEmergencyCallDisambiguationView.button(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for InteractionDelegateWrapper();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ForeignEmergencyCallDisambiguationView() + 20);
  InteractionDelegate.wrappedValue.getter();
  LODWORD(v12) = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v13 = CodableAceObject.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  InteractionDelegateWrapper.perform(directInvocation:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #3 in ForeignEmergencyCallDisambiguationView.button(for:)@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t one-time initialization function for emergencyServicesItem()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v0 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - v1;
  v2 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static ForeignEmergencyCallDisambiguationView_Previews.emergencyServicesItem);
  v24 = __swift_project_value_buffer(v2, static ForeignEmergencyCallDisambiguationView_Previews.emergencyServicesItem);
  v21 = 0x800000025E5A6510;
  v22 = [objc_allocWithZone(MEMORY[0x277D47438]) init];
  UUID.init()();
  v11 = v2[5];
  v27 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v12 = v2[8];
  v27 = 0uLL;
  Loggable.init(wrappedValue:)();
  (*(v7 + 16))(v5, v10, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v14 = *(*(v13 - 8) + 8);
  v14(&v5[v11], v13);
  v27 = xmmword_25E5A1B50;
  Loggable.init(wrappedValue:)();
  v15 = v2[7];
  LOBYTE(v27) = 1;
  Loggable.init(wrappedValue:)();
  v14(&v5[v12], v13);
  *&v27 = 0xD000000000000012;
  *(&v27 + 1) = v21;
  Loggable.init(wrappedValue:)();
  v16 = v2[9];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v17 = v22;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();

  v18 = v2[6];
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  Loggable.init(wrappedValue:)();
  v19 = v2[10];
  v27 = 0uLL;
  Loggable.init(wrappedValue:)();

  (*(v7 + 8))(v10, v23);
  return outlined init with take of ForeignEmergencyCallDisambiguationModel(v5, v24, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
}

uint64_t one-time initialization function for foreignEmergencyNumberItem()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v0 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - v1;
  v2 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static ForeignEmergencyCallDisambiguationView_Previews.foreignEmergencyNumberItem);
  v24 = __swift_project_value_buffer(v2, static ForeignEmergencyCallDisambiguationView_Previews.foreignEmergencyNumberItem);
  v22 = [objc_allocWithZone(MEMORY[0x277D47438]) init];
  UUID.init()();
  v11 = v2[5];
  v27 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v12 = v2[8];
  v27 = 0uLL;
  Loggable.init(wrappedValue:)();
  (*(v7 + 16))(v5, v10, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v14 = *(*(v13 - 8) + 8);
  v14(&v5[v11], v13);
  v27 = xmmword_25E5A1B50;
  Loggable.init(wrappedValue:)();
  v15 = v2[7];
  LOBYTE(v27) = 1;
  Loggable.init(wrappedValue:)();
  v14(&v5[v12], v13);
  v27 = xmmword_25E5A1B60;
  Loggable.init(wrappedValue:)();
  v16 = v2[9];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v17 = v22;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();

  v18 = v2[6];
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  Loggable.init(wrappedValue:)();
  v19 = v2[10];
  v27 = 0uLL;
  Loggable.init(wrappedValue:)();

  (*(v7 + 8))(v10, v23);
  return outlined init with take of ForeignEmergencyCallDisambiguationModel(v5, v24, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
}

uint64_t static ForeignEmergencyCallDisambiguationView_Previews.emergencyServicesItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of ForeignEmergencyCallDisambiguationView(v6, a3, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
}

uint64_t one-time initialization function for sampleModel()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMd, &_s14PhoneSnippetUI43DisambiguationItemWithDirectInvocationModelVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  __swift_allocate_value_buffer(v7, static ForeignEmergencyCallDisambiguationView_Previews.sampleModel);
  v8 = __swift_project_value_buffer(v7, static ForeignEmergencyCallDisambiguationView_Previews.sampleModel);
  if (one-time initialization token for emergencyServicesItem != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v10 = __swift_project_value_buffer(v9, static ForeignEmergencyCallDisambiguationView_Previews.emergencyServicesItem);
  outlined init with copy of ForeignEmergencyCallDisambiguationView(v10, v6, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v11 = *(*(v9 - 8) + 56);
  v11(v6, 0, 1, v9);
  if (one-time initialization token for foreignEmergencyNumberItem != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v9, static ForeignEmergencyCallDisambiguationView_Previews.foreignEmergencyNumberItem);
  outlined init with copy of ForeignEmergencyCallDisambiguationView(v12, v4, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v11(v4, 0, 1, v9);
  v13 = (v8 + v7[8]);
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x800000025E5A6140;
  outlined init with take of DisambiguationItemWithDirectInvocationModel?(v6, v8);
  result = outlined init with take of DisambiguationItemWithDirectInvocationModel?(v4, v8 + v7[5]);
  v15 = (v8 + v7[6]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v8 + v7[7]) = 0;
  return result;
}

uint64_t ForeignEmergencyCallDisambiguationView_Previews.emergencyServicesItem.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static ForeignEmergencyCallDisambiguationView_Previews.sampleModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v3 = __swift_project_value_buffer(v2, static ForeignEmergencyCallDisambiguationView_Previews.sampleModel);
  return outlined init with copy of ForeignEmergencyCallDisambiguationView(v3, a1, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
}

uint64_t outlined init with copy of ForeignEmergencyCallDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static ForeignEmergencyCallDisambiguationView_Previews.previews.getter()
{
  v0 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static ForeignEmergencyCallDisambiguationView_Previews.sampleModel);
  outlined init with copy of ForeignEmergencyCallDisambiguationView(v4, v3, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  type metadata accessor for ForeignEmergencyCallDisambiguationView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView and conformance ForeignEmergencyCallDisambiguationView, type metadata accessor for ForeignEmergencyCallDisambiguationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static ForeignEmergencyCallDisambiguationView_Previews.previews.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  outlined init with copy of ForeignEmergencyCallDisambiguationView(a1, a2 + *(v4 + 24), type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v5;
  v6 = a2 + *(v4 + 20);
  return InteractionDelegate.init()();
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews()
{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews);
  }

  return result;
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance ForeignEmergencyCallDisambiguationView_Previews()
{
  v0 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sampleModel != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static ForeignEmergencyCallDisambiguationView_Previews.sampleModel);
  outlined init with copy of ForeignEmergencyCallDisambiguationView(v4, v3, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  type metadata accessor for ForeignEmergencyCallDisambiguationView();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView and conformance ForeignEmergencyCallDisambiguationView, type metadata accessor for ForeignEmergencyCallDisambiguationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance ForeignEmergencyCallDisambiguationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance ForeignEmergencyCallDisambiguationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationView_Previews and conformance ForeignEmergencyCallDisambiguationView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

uint64_t sub_25E55CDCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for InteractionDelegate();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E55CF10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for InteractionDelegate();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ForeignEmergencyCallDisambiguationView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ForeignEmergencyCallDisambiguationModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier>, <<opaque return type of View.privacySensitive(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier>, <<opaque return type of View.privacySensitive(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier>, <<opaque return type of View.privacySensitive(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB014ComponentStackVyAA9TupleViewVyAA0J0PAFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyJ0V_Qo__AEyAT05PhonefB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGAlAE16privacySensitiveyQrSbFQOyAF012BinaryButtonJ0V_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB014ComponentStackVyAA9TupleViewVyAA0J0PAFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAA03AnyJ0V_Qo__AEyAT05PhonefB029CarPlayDisambiguationListItemVGtGGAA25_AppearanceActionModifierVGAlAE16privacySensitiveyQrSbFQOyAF012BinaryButtonJ0V_Qo_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    type metadata accessor for BinaryButtonView();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_4(&lazy protocol witness table cache variable for type BinaryButtonView and conformance BinaryButtonView, MEMORY[0x277D63C40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)>>, _AppearanceActionModifier>, <<opaque return type of View.privacySensitive(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ForeignEmergencyCallDisambiguationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DisambiguationItemWithDirectInvocationModel(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #3 in ForeignEmergencyCallDisambiguationView.button(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #3 in ForeignEmergencyCallDisambiguationView.button(for:)(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E55D3FC()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0;
  v2 = (type metadata accessor for ForeignEmergencyCallDisambiguationView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v58 = *(*v2 + 64);
  v5 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v59 = *(v6 + 64);

  v8 = v2[7];
  v9 = type metadata accessor for InteractionDelegate();
  (*(*(v9 - 8) + 8))(v1 + v4 + v8, v9);
  v10 = v1 + v4 + v2[8];
  v11 = *(v6 + 48);
  if (!v11(v10, 1, v5))
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
    v13 = v5[5];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v15 = *(*(v14 - 8) + 8);
    v15(v10 + v13, v14);
    v16 = v5[6];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    (*(*(v17 - 8) + 8))(v10 + v16, v17);
    v18 = v5[7];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    (*(*(v19 - 8) + 8))(v10 + v18, v19);
    v15(v10 + v5[8], v14);
    v20 = v5[9];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    (*(*(v21 - 8) + 8))(v10 + v20, v21);
    v22 = v5[10];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    v24 = v10 + v22;
    v4 = (v3 + 16) & ~v3;
    (*(*(v23 - 8) + 8))(v24, v23);
  }

  v25 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v26 = v10 + v25[5];
  if (!v11(v26, 1, v5))
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v26, v27);
    v56 = v4;
    v28 = v5[5];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v57 = v1;
    v30 = *(*(v29 - 8) + 8);
    v30(v26 + v28, v29);
    v31 = v5[6];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    (*(*(v32 - 8) + 8))(v26 + v31, v32);
    v33 = v5[7];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    (*(*(v34 - 8) + 8))(v26 + v33, v34);
    v30(v26 + v5[8], v29);
    v1 = v57;
    v35 = v5[9];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    (*(*(v36 - 8) + 8))(v26 + v35, v36);
    v37 = v5[10];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
    v39 = v26 + v37;
    v4 = v56;
    (*(*(v38 - 8) + 8))(v39, v38);
  }

  v40 = *(v10 + v25[6] + 8);

  v41 = *(v10 + v25[8] + 8);

  v42 = v1 + ((v4 + v58 + v7) & ~v7);
  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 8))(v42, v43);
  v44 = v5[5];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v46 = *(*(v45 - 8) + 8);
  v46(v42 + v44, v45);
  v47 = v5[6];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  (*(*(v48 - 8) + 8))(v42 + v47, v48);
  v49 = v5[7];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  (*(*(v50 - 8) + 8))(v42 + v49, v50);
  v46(v42 + v5[8], v45);
  v51 = v5[9];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  (*(*(v52 - 8) + 8))(v42 + v51, v52);
  v53 = v5[10];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  (*(*(v54 - 8) + 8))(v42 + v53, v54);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ForeignEmergencyCallDisambiguationView.button(for:)()
{
  v1 = *(type metadata accessor for ForeignEmergencyCallDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(*(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8) + 80);
  return closure #1 in ForeignEmergencyCallDisambiguationView.button(for:)(v0 + v2);
}

uint64_t key path setter for EnvironmentValues.imageElementImageStyle : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV0C5StyleOSgMd, &_s10SnippetKit12ImageElementV0C5StyleOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of ImageElement.ImageStyle?(a1, &v6 - v4);
  return EnvironmentValues.imageElementImageStyle.setter();
}

uint64_t ListBottomView.init(text:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a4 = EnvironmentObject.init()();
  a4[1] = v8;
  v9 = type metadata accessor for ListBottomView();
  v10 = a4 + v9[5];
  result = ActionHandler.init()();
  v12 = (a4 + v9[6]);
  *v12 = a1;
  v12[1] = a2;
  *(a4 + v9[7]) = a3;
  return result;
}

uint64_t type metadata accessor for ListBottomView()
{
  result = type metadata singleton initialization cache for ListBottomView;
  if (!type metadata singleton initialization cache for ListBottomView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListBottomView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for ListBottomView();
  v3 = v2 - 8;
  v34 = *(v2 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - v6;
  v7 = (v1 + *(v3 + 32));
  v8 = v7[1];
  v60 = *v7;
  v61 = v8;
  lazy protocol witness table accessor for type String and conformance String();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined consume of Text.Storage(v9, v11, v13 & 1);

  v62 = MEMORY[0x277CE0BD0];
  v63 = MEMORY[0x277D638F0];
  v21 = swift_allocObject();
  v60 = v21;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18 & 1;
  *(v21 + 40) = v20;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v22 = ListBottomView.appIconView.getter();
  v37 = MEMORY[0x277CE11D0];
  v38 = MEMORY[0x277D63A58];
  v36 = v22;
  v23 = v30;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  v24 = v23 + *(v31 + 36);
  static Material.thick.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR) + 36)) = v9;
  v25 = v32;
  outlined init with copy of ListBottomView(v1, v32);
  v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v27 = swift_allocObject();
  outlined init with take of ListBottomView(v25, v27 + v26);
  lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
  View.componentTapped(isNavigation:perform:)();

  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v23, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewVAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
}

uint64_t sub_25E55E174()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}