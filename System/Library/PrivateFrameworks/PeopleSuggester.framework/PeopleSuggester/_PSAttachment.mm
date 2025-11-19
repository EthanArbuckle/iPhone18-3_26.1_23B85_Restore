@interface _PSAttachment
- (BOOL)isEqual:(id)a3;
- (_PSAttachment)initWithCoder:(id)a3;
- (_PSAttachment)initWithCreationDate:(id)a3 UTI:(id)a4 photoLocalIdentifier:(id)a5 identifier:(id)a6 cloudIdentifier:(id)a7 contentURL:(id)a8 contentText:(id)a9 imageData:(id)a10 photoLocalIdentifiers:(id)a11 suggestedContactIdentifiers:(id)a12 photoSceneDescriptors:(id)a13 peopleInPhoto:(id)a14;
- (id)description;
- (unint64_t)hash;
- (unint64_t)totalHashOfElementsFromArray:(id)a3;
- (unsigned)photoAnalysisRequestType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSAttachment

- (unsigned)photoAnalysisRequestType
{
  v3 = [(_PSAttachment *)self contentURL];
  if ([v3 isFileURL])
  {
    v4 = [(_PSAttachment *)self contentURLSandboxExtension];

    if (v4)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = [(_PSAttachment *)self photoLocalIdentifier];
  v7 = v6 != 0;

  return 2 * v7;
}

- (_PSAttachment)initWithCreationDate:(id)a3 UTI:(id)a4 photoLocalIdentifier:(id)a5 identifier:(id)a6 cloudIdentifier:(id)a7 contentURL:(id)a8 contentText:(id)a9 imageData:(id)a10 photoLocalIdentifiers:(id)a11 suggestedContactIdentifiers:(id)a12 photoSceneDescriptors:(id)a13 peopleInPhoto:(id)a14
{
  v47 = a3;
  v46 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v19;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a13;
  v27 = a14;
  v48.receiver = self;
  v48.super_class = _PSAttachment;
  v28 = [(_PSAttachment *)&v48 init];
  if (v28)
  {
    v29 = [v47 copy];
    creationDate = v28->_creationDate;
    v28->_creationDate = v29;

    v31 = [v46 copy];
    UTI = v28->_UTI;
    v28->_UTI = v31;

    v33 = [v18 copy];
    photoLocalIdentifier = v28->_photoLocalIdentifier;
    v28->_photoLocalIdentifier = v33;

    v35 = [v22 copy];
    identifier = v28->_identifier;
    v28->_identifier = v35;

    v37 = [v20 copy];
    cloudIdentifier = v28->_cloudIdentifier;
    v28->_cloudIdentifier = v37;

    v39 = [v21 copy];
    contentURL = v28->_contentURL;
    v28->_contentURL = v39;

    v41 = [v23 copy];
    contentText = v28->_contentText;
    v28->_contentText = v41;

    objc_storeStrong(&v28->_imageData, a10);
    objc_storeStrong(&v28->_photoLocalIdentifiers, a11);
    objc_storeStrong(&v28->_photoSceneDescriptors, a13);
    objc_storeStrong(&v28->_peopleInPhoto, a14);
  }

  return v28;
}

- (_PSAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = _PSAttachment;
  v5 = [(_PSAttachment *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UTI"];
    UTI = v5->_UTI;
    v5->_UTI = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLocalIdentifier"];
    photoLocalIdentifier = v5->_photoLocalIdentifier;
    v5->_photoLocalIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    cloudIdentifier = v5->_cloudIdentifier;
    v5->_cloudIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    contentURL = v5->_contentURL;
    v5->_contentURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentText"];
    contentText = v5->_contentText;
    v5->_contentText = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"photoLocalIdentifiers"];
    photoLocalIdentifiers = v5->_photoLocalIdentifiers;
    v5->_photoLocalIdentifiers = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"photoSceneDescriptors"];
    photoSceneDescriptors = v5->_photoSceneDescriptors;
    v5->_photoSceneDescriptors = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"peopleInPhoto"];
    peopleInPhoto = v5->_peopleInPhoto;
    v5->_peopleInPhoto = v35;

    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"contentURLSandboxExtension"];
    contentURLSandboxExtension = v5->_contentURLSandboxExtension;
    v5->_contentURLSandboxExtension = v38;

    v40 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  creationDate = self->_creationDate;
  v5 = a3;
  [v5 encodeObject:creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_UTI forKey:@"UTI"];
  [v5 encodeObject:self->_photoLocalIdentifier forKey:@"photoLocalIdentifier"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_cloudIdentifier forKey:@"cloudIdentifier"];
  [v5 encodeObject:self->_contentURL forKey:@"contentURL"];
  [v5 encodeObject:self->_contentText forKey:@"contentText"];
  [v5 encodeObject:self->_imageData forKey:@"imageData"];
  [v5 encodeObject:self->_photoLocalIdentifiers forKey:@"photoLocalIdentifiers"];
  [v5 encodeObject:self->_photoSceneDescriptors forKey:@"photoSceneDescriptors"];
  [v5 encodeObject:self->_peopleInPhoto forKey:@"peopleInPhoto"];
  [v5 encodeObject:self->_contentURLSandboxExtension forKey:@"contentURLSandboxExtension"];
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v19 = [(_PSAttachment *)self creationDate];
  v3 = [(_PSAttachment *)self UTI];
  v4 = [(_PSAttachment *)self photoLocalIdentifier];
  v5 = [(_PSAttachment *)self contentURL];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v16 = [(_PSAttachment *)self contentURL];
    v15 = [v16 absoluteString];
    v7 = [v6 numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
  }

  else
  {
    v7 = @"null";
  }

  v8 = [(_PSAttachment *)self contentText];
  v9 = [(_PSAttachment *)self photoLocalIdentifiers];
  v10 = [v9 count];
  v11 = [(_PSAttachment *)self photoSceneDescriptors];
  v12 = [(_PSAttachment *)self peopleInPhoto];
  v13 = [v18 stringWithFormat:@"<%@ %p> creationDate: %@, UTI: %@, photoIdentifier: %@, contentURL: %@, contentText: %@ photoLocalIds: %lu, photoSceneDescriptors: %@, peopleInPhoto: %@", v17, self, v19, v3, v4, v7, v8, v10, v11, v12];

  if (v5)
  {
  }

  return v13;
}

- (unint64_t)totalHashOfElementsFromArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_UTI hash];
  v4 = [(NSString *)self->_photoLocalIdentifier hash]^ v3;
  v5 = [(NSUUID *)self->_identifier hash];
  v6 = v4 ^ v5 ^ [(NSUUID *)self->_cloudIdentifier hash];
  v7 = [(NSURL *)self->_contentURL hash];
  v8 = [(_PSAttachment *)self photoLocalIdentifiers];
  v9 = v7 ^ [(_PSAttachment *)self totalHashOfElementsFromArray:v8];

  v10 = [(_PSAttachment *)self photoSceneDescriptors];
  v11 = v6 ^ v9 ^ [(_PSAttachment *)self totalHashOfElementsFromArray:v10];

  v12 = [(_PSAttachment *)self peopleInPhoto];
  v13 = [(_PSAttachment *)self totalHashOfElementsFromArray:v12];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v58 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_PSAttachment *)self UTI];
    if (v7)
    {
      v8 = v7;
      v9 = [(_PSAttachment *)v6 UTI];

      if (v9)
      {
        v10 = [(_PSAttachment *)self UTI];
        v11 = [(_PSAttachment *)v6 UTI];
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          goto LABEL_27;
        }
      }
    }

    v13 = [(_PSAttachment *)self photoLocalIdentifier];
    if (v13)
    {
      v14 = v13;
      v15 = [(_PSAttachment *)v6 photoLocalIdentifier];

      if (v15)
      {
        v16 = [(_PSAttachment *)self photoLocalIdentifier];
        v17 = [(_PSAttachment *)v6 photoLocalIdentifier];
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_27;
        }
      }
    }

    v19 = [(_PSAttachment *)self cloudIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = [(_PSAttachment *)v6 cloudIdentifier];

      if (v21)
      {
        v22 = [(_PSAttachment *)self cloudIdentifier];
        v23 = [(_PSAttachment *)v6 cloudIdentifier];
        v24 = [v22 isEqual:v23];

        if (!v24)
        {
          goto LABEL_27;
        }
      }
    }

    v25 = [(_PSAttachment *)self identifier];
    if (v25)
    {
      v26 = v25;
      v27 = [(_PSAttachment *)v6 identifier];

      if (v27)
      {
        v28 = [(_PSAttachment *)self identifier];
        v29 = [(_PSAttachment *)v6 identifier];
        v30 = [v28 isEqual:v29];

        if (!v30)
        {
          goto LABEL_27;
        }
      }
    }

    v31 = [(_PSAttachment *)self contentURL];
    if (!v31)
    {
      goto LABEL_19;
    }

    v32 = v31;
    v33 = [(_PSAttachment *)v6 contentURL];

    if (!v33)
    {
      goto LABEL_19;
    }

    v34 = [(_PSAttachment *)self contentURL];
    v35 = [(_PSAttachment *)v6 contentURL];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
LABEL_27:
      v58 = 0;
    }

    else
    {
LABEL_19:
      v37 = objc_alloc(MEMORY[0x1E695DFA8]);
      v38 = [(_PSAttachment *)self photoLocalIdentifiers];
      v39 = [v37 initWithArray:v38];

      v40 = objc_alloc(MEMORY[0x1E695DFA8]);
      v41 = [(_PSAttachment *)v6 photoLocalIdentifiers];
      v42 = [v40 initWithArray:v41];

      v43 = [v39 count];
      if (v43 == [v42 count] && objc_msgSend(v39, "isEqualToSet:", v42))
      {
        v44 = objc_alloc(MEMORY[0x1E695DFA8]);
        v45 = [(_PSAttachment *)self photoSceneDescriptors];
        v46 = [v44 initWithArray:v45];

        v47 = objc_alloc(MEMORY[0x1E695DFA8]);
        v48 = [(_PSAttachment *)v6 photoSceneDescriptors];
        v49 = [v47 initWithArray:v48];

        v50 = [v46 count];
        if (v50 == [v49 count] && objc_msgSend(v46, "isEqualToSet:", v49))
        {
          v51 = objc_alloc(MEMORY[0x1E695DFA8]);
          v52 = [(_PSAttachment *)self peopleInPhoto];
          v53 = [v51 initWithArray:v52];

          v54 = objc_alloc(MEMORY[0x1E695DFA8]);
          v55 = [(_PSAttachment *)v6 peopleInPhoto];
          v56 = [v54 initWithArray:v55];

          v57 = [v53 count];
          if (v57 == [v56 count])
          {
            v58 = [v53 isEqualToSet:v56];
          }

          else
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
        }
      }

      else
      {
        v58 = 0;
      }
    }
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

@end