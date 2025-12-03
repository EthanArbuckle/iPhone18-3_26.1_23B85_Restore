@interface Proxy
- (void)didEstimateWithSelection:(unsigned __int8)selection bytes:(unint64_t)bytes items:(unint64_t)items;
- (void)didReceiveCodeWithCode:(id)code;
- (void)didShutdown;
- (void)didTransferWithSelection:(unsigned __int8)selection result:(unsigned __int8)result bytes:(unint64_t)bytes items:(unint64_t)items errors:(unint64_t)errors;
- (void)preflightFailedWithAdditionalBytesRequired:(unint64_t)required;
- (void)processWithData:(NSData *)data completionHandler:(id)handler;
- (void)roleWithCompletionHandler:(id)handler;
@end

@implementation Proxy

- (void)roleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_26D26265C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26D263E58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26D263E60;
  v13[5] = v12;

  sub_26D260F04(0, 0, v8, &unk_26D263E68, v13);
}

- (void)didReceiveCodeWithCode:(id)code
{
  v3 = sub_26D26251C();
  v5 = v4;

  sub_26D25DCA0(v3, v5);
}

- (void)didEstimateWithSelection:(unsigned __int8)selection bytes:(unint64_t)bytes items:(unint64_t)items
{

  sub_26D25DF60(selection, bytes, items);
}

- (void)preflightFailedWithAdditionalBytesRequired:(unint64_t)required
{
  v3 = *self->preflightFailureHandler;
  if (v3)
  {
    v5 = *&self->preflightFailureHandler[8];

    sub_26D25B044(v3);
    v3(required);

    sub_26D25B054(v3);
  }
}

- (void)didTransferWithSelection:(unsigned __int8)selection result:(unsigned __int8)result bytes:(unint64_t)bytes items:(unint64_t)items errors:(unint64_t)errors
{

  sub_26D25E240(selection, result, bytes, items, errors);
}

- (void)processWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = data;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_26D26265C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26D263E48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26D263D98;
  v15[5] = v14;
  dataCopy = data;

  sub_26D260F04(0, 0, v10, &unk_26D263DA0, v15);
}

- (void)didShutdown
{
  v2 = *self->shutdownHandler;
  if (v2)
  {
    v3 = *&self->shutdownHandler[8];

    v4 = sub_26D25B044(v2);
    v2(v4);

    sub_26D25B054(v2);
  }
}

@end