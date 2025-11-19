@interface TSDArchivedGroupSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSDArchivedGroupSelection

- (void)loadFromUnarchiver:(id)a3
{
  v11 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v11, v4, off_2812F5188[112]);

  v6 = [TSDGroupSelection alloc];
  if (*(v5 + 24))
  {
    v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, *(v5 + 24), v11);
  }

  else
  {
    v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, &TSD::_DrawableSelectionArchive_default_instance_, v11);
  }

  v10 = v8;
  if ((*(v5 + 16) & 2) != 0)
  {
    objc_msgSend_setHasSelectedInfosInNonGroupContainer_(v8, v9, *(v5 + 32));
  }

  objc_msgSend_setSelection_(self, v9, v10);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276791888, off_2812F5188[112]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionArchive>(v8);
    *(v6 + 24) = v7;
  }

  v16.receiver = self;
  v16.super_class = TSDArchivedGroupSelection;
  [(TSDArchivedDrawableSelection *)&v16 saveToArchiver:v4 intoMessage:v7];
  objc_opt_class();
  v11 = objc_msgSend_selection(self, v9, v10);
  v12 = TSUDynamicCast();

  hasSelectedInfosInNonGroupContainer = objc_msgSend_hasSelectedInfosInNonGroupContainer(v12, v13, v14);
  *(v6 + 16) |= 2u;
  *(v6 + 32) = hasSelectedInfosInNonGroupContainer;
}

@end