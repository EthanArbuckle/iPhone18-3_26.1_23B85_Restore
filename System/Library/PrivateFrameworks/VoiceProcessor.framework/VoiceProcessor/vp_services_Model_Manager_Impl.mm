@interface vp_services_Model_Manager_Impl
- (void)register_for_inference_monitor_eventsWithEventCallback:(id)callback completionHandler:;
- (void)unregister_from_inference_monitorWithObserver:(int64_t)observer completionHandler:(id)handler;
- (vp_services_Model_Manager_Impl)init;
@end

@implementation vp_services_Model_Manager_Impl

- (void)register_for_inference_monitor_eventsWithEventCallback:(id)callback completionHandler:
{
  v4 = v3;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(callback);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_27275302C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_272755E98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_272755EA0;
  v15[5] = v14;

  sub_2724BB454(0, 0, v9, &unk_272755EA8, v15);
}

- (void)unregister_from_inference_monitorWithObserver:(int64_t)observer completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280898898, &qword_272755E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = observer;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_27275302C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_272755E50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_272755E60;
  v14[5] = v13;

  sub_2724BB454(0, 0, v9, &unk_272755E70, v14);
}

- (vp_services_Model_Manager_Impl)init
{
  swift_defaultActor_initialize();
  sub_272752F9C();
  *(&self->super.super.isa + OBJC_IVAR___vp_services_Model_Manager_Impl_mInferenceTask) = 0;
  v3 = OBJC_IVAR___vp_services_Model_Manager_Impl_mEventObservers;
  *(&self->super.super.isa + v3) = sub_2724BC024(MEMORY[0x277D84F90]);
  *(&self->super.super.isa + OBJC_IVAR___vp_services_Model_Manager_Impl_mCounter) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for vp_services_Model_Manager_Impl();
  return [(vp_services_Model_Manager_Impl *)&v5 init];
}

@end