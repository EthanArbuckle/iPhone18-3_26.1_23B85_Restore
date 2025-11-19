@interface TSDAttribution
- (BOOL)isEqual:(id)a3;
- (NSURL)authorURL;
- (NSURL)externalURL;
- (TSDAttribution)initWithTitle:(id)a3 descriptionText:(id)a4 externalURL:(id)a5 authorName:(id)a6 authorURL:(id)a7;
- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4;
- (unint64_t)hash;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSDAttribution

- (TSDAttribution)initWithTitle:(id)a3 descriptionText:(id)a4 externalURL:(id)a5 authorName:(id)a6 authorURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = TSDAttribution;
  v19 = [(TSDAttribution *)&v45 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(v12, v17, v18);
    title = v19->_title;
    v19->_title = v20;

    v19->_definedTitle = v19->_title != 0;
    v24 = objc_msgSend_copy(v13, v22, v23);
    descriptionText = v19->_descriptionText;
    v19->_descriptionText = v24;

    v19->_definedDescriptionText = v19->_descriptionText != 0;
    v28 = objc_msgSend_absoluteString(v14, v26, v27);
    v31 = objc_msgSend_copy(v28, v29, v30);
    externalURLString = v19->_externalURLString;
    v19->_externalURLString = v31;

    v19->_definedExternalURLString = v19->_externalURLString != 0;
    v35 = objc_msgSend_copy(v15, v33, v34);
    authorName = v19->_authorName;
    v19->_authorName = v35;

    v19->_definedAuthorName = v19->_authorName != 0;
    v39 = objc_msgSend_absoluteString(v16, v37, v38);
    v42 = objc_msgSend_copy(v39, v40, v41);
    authorURLString = v19->_authorURLString;
    v19->_authorURLString = v42;

    v19->_definedAuthorURLString = v19->_authorURLString != 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = objc_msgSend_title(self, v5, v6);
    v11 = objc_msgSend_title(v7, v9, v10);
    v12 = v8;
    v15 = v11;
    if (v12 | v15 && (v16 = objc_msgSend_isEqual_(v12, v13, v15), v15, v12, !v16))
    {
      isEqual = 0;
    }

    else
    {
      v49 = objc_msgSend_descriptionText(self, v13, v14);
      v19 = objc_msgSend_descriptionText(v7, v17, v18);
      v20 = v49;
      v23 = v19;
      if (v20 | v23 && (v24 = objc_msgSend_isEqual_(v20, v21, v23), v23, v20, !v24))
      {
        isEqual = 0;
      }

      else
      {
        v52 = v23;
        v53 = objc_msgSend_externalURL(self, v21, v22);
        v27 = objc_msgSend_externalURL(v7, v25, v26);
        v28 = v53;
        v54 = v27;
        if (v28 | v54 && (v31 = objc_msgSend_isEqual_(v28, v29, v54), v54, v28, !v31))
        {
          isEqual = 0;
        }

        else
        {
          v51 = v4;
          v50 = objc_msgSend_authorName(self, v29, v30);
          v34 = objc_msgSend_authorName(v7, v32, v33);
          v35 = v50;
          v38 = v34;
          if (v35 | v38 && (v39 = objc_msgSend_isEqual_(v35, v36, v38), v38, v35, !v39))
          {
            isEqual = 0;
          }

          else
          {
            v40 = objc_msgSend_authorURL(self, v36, v37);
            v43 = objc_msgSend_authorURL(v7, v41, v42, v40);
            v44 = v40;
            v46 = v43;
            if (v44 | v46)
            {
              isEqual = objc_msgSend_isEqual_(v44, v45, v46);
            }

            else
            {
              isEqual = 1;
            }
          }

          v4 = v51;
        }

        v23 = v52;
      }
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_title(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_descriptionText(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);
  v16 = objc_msgSend_externalURL(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_authorName(self, v20, v21);
  v25 = objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_authorURL(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v13 ^ v7 ^ v19 ^ v25 ^ v31;
}

- (NSURL)authorURL
{
  if (self->_authorURLString)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v5 = objc_msgSend_initWithString_(v3, v4, self->_authorURLString);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)externalURL
{
  if (self->_externalURLString)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v5 = objc_msgSend_initWithString_(v3, v4, self->_externalURLString);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v30.receiver = self;
  v30.super_class = TSDAttribution;
  v7 = [(TSDAttribution *)&v30 init];
  if (v7)
  {
    v8 = *(a3 + 4);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
      title = v7->_title;
      v7->_title = v11;

      v7->_definedTitle = 1;
      v8 = *(a3 + 4);
    }

    if ((v8 & 2) != 0)
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
      descriptionText = v7->_descriptionText;
      v7->_descriptionText = v15;

      v7->_definedDescriptionText = 1;
      v8 = *(a3 + 4);
    }

    if ((v8 & 4) != 0)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_tsp_initWithProtobufString_(v17, v18, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
      externalURLString = v7->_externalURLString;
      v7->_externalURLString = v19;

      v7->_definedExternalURLString = 1;
      v8 = *(a3 + 4);
    }

    if ((v8 & 8) != 0)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = objc_msgSend_tsp_initWithProtobufString_(v21, v22, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
      authorName = v7->_authorName;
      v7->_authorName = v23;

      v7->_definedAuthorName = 1;
      v8 = *(a3 + 4);
    }

    if ((v8 & 0x10) != 0)
    {
      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v27 = objc_msgSend_tsp_initWithProtobufString_(v25, v26, *(a3 + 7) & 0xFFFFFFFFFFFFFFFELL);
      authorURLString = v7->_authorURLString;
      v7->_authorURLString = v27;

      v7->_definedAuthorURLString = 1;
    }
  }

  return v7;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v8 = a4;
  title = self->_title;
  if (title)
  {
    v10 = objc_msgSend_tsp_protobufString(title, v6, v7);
    *(a3 + 4) |= 1u;
    sub_276658080(__p, v10);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  descriptionText = self->_descriptionText;
  if (descriptionText)
  {
    v12 = objc_msgSend_tsp_protobufString(descriptionText, v6, v7);
    *(a3 + 4) |= 2u;
    sub_276658080(__p, v12);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  externalURLString = self->_externalURLString;
  if (externalURLString)
  {
    v14 = objc_msgSend_tsp_protobufString(externalURLString, v6, v7);
    *(a3 + 4) |= 4u;
    sub_276658080(__p, v14);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  authorName = self->_authorName;
  if (authorName)
  {
    v16 = objc_msgSend_tsp_protobufString(authorName, v6, v7);
    *(a3 + 4) |= 8u;
    sub_276658080(__p, v16);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  authorURLString = self->_authorURLString;
  if (authorURLString)
  {
    v18 = objc_msgSend_tsp_protobufString(authorURLString, v6, v7);
    *(a3 + 4) |= 0x10u;
    sub_276658080(__p, v18);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

@end