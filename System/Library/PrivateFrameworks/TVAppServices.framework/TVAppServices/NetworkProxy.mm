@interface NetworkProxy
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC13TVAppServices12NetworkProxy)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (uint64_t)stopLoading;
- (void)startLoading;
@end

@implementation NetworkProxy

- (void)startLoading
{
  selfCopy = self;
  sub_26CCF5D6C();
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  swift_getObjCClassMetadata();
  v8 = sub_26CCF6AA0(v7);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  v8 = sub_26CD39C4C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC13TVAppServices12NetworkProxy)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v8 = sub_26CD39D0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39C6C();
  responseCopy = response;
  swift_unknownObjectRetain();
  v14 = sub_26CD39C4C();
  v15 = type metadata accessor for NetworkProxy();
  v18.receiver = self;
  v18.super_class = v15;
  v16 = [(NSURLProtocol *)&v18 initWithRequest:v14 cachedResponse:responseCopy client:client];

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  return v16;
}

- (uint64_t)stopLoading
{
  v0 = sub_26CD3A49C();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26CD3A4CC();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804BBA90 != -1)
  {
    swift_once();
  }

  v8 = qword_2804BD990;
  aBlock[4] = sub_26CCF7048;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_11;
  v9 = _Block_copy(aBlock);
  v10 = v8;
  sub_26CD3A4AC();
  v15 = MEMORY[0x277D84F90];
  sub_26CC1A3A8(&qword_280BBB7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCF7588(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v7, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v13);
}

@end