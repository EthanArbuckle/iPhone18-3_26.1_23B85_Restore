@interface TSCETrackedReferenceTSPObjectDeprecated
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCETrackedReferenceTSPObjectDeprecated

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E2AC8[282], v5, v6);

  sub_2215C86F8();
}

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->mAST, a2);
  v3.receiver = self;
  v3.super_class = TSCETrackedReferenceTSPObjectDeprecated;
  [(TSCETrackedReferenceTSPObjectDeprecated *)&v3 dealloc];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22115AA64, off_2812E2AC8[282], v5);

  objc_msgSend_encodeToArchive_(self, v7, v6, v8, v9);
}

- (void)encodeToArchive:(void *)archive
{
  *(archive + 4) |= 1u;
  v5 = *(archive + 3);
  if (!v5)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v6);
    *(archive + 3) = v5;
  }

  sub_2215C8340(v5, self->mAST, 0);
  isa = self[1].super.super.isa;
  *(archive + 4) |= 2u;
  *(archive + 8) = isa;
}

@end