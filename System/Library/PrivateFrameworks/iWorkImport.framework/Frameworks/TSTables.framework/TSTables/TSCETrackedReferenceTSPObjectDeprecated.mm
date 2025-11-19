@interface TSCETrackedReferenceTSPObjectDeprecated
- (BOOL)validatedLoadFromUnarchiver:(id)a3;
- (void)dealloc;
- (void)encodeToArchive:(void *)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCETrackedReferenceTSPObjectDeprecated

- (BOOL)validatedLoadFromUnarchiver:(id)a3
{
  v3 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(v3, v4, off_2812E2AC8[282], v5, v6);

  sub_2215C86F8();
}

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->mAST, a2);
  v3.receiver = self;
  v3.super_class = TSCETrackedReferenceTSPObjectDeprecated;
  [(TSCETrackedReferenceTSPObjectDeprecated *)&v3 dealloc];
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_22115AA64, off_2812E2AC8[282], v5);

  objc_msgSend_encodeToArchive_(self, v7, v6, v8, v9);
}

- (void)encodeToArchive:(void *)a3
{
  *(a3 + 4) |= 1u;
  v5 = *(a3 + 3);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v6);
    *(a3 + 3) = v5;
  }

  sub_2215C8340(v5, self->mAST, 0);
  isa = self[1].super.super.isa;
  *(a3 + 4) |= 2u;
  *(a3 + 8) = isa;
}

@end