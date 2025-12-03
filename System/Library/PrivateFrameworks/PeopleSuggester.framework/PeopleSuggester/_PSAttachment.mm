@interface _PSAttachment
- (BOOL)isEqual:(id)equal;
- (_PSAttachment)initWithCoder:(id)coder;
- (_PSAttachment)initWithCreationDate:(id)date UTI:(id)i photoLocalIdentifier:(id)identifier identifier:(id)a6 cloudIdentifier:(id)cloudIdentifier contentURL:(id)l contentText:(id)text imageData:(id)self0 photoLocalIdentifiers:(id)self1 suggestedContactIdentifiers:(id)self2 photoSceneDescriptors:(id)self3 peopleInPhoto:(id)self4;
- (id)description;
- (unint64_t)hash;
- (unint64_t)totalHashOfElementsFromArray:(id)array;
- (unsigned)photoAnalysisRequestType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSAttachment

- (unsigned)photoAnalysisRequestType
{
  contentURL = [(_PSAttachment *)self contentURL];
  if ([contentURL isFileURL])
  {
    contentURLSandboxExtension = [(_PSAttachment *)self contentURLSandboxExtension];

    if (contentURLSandboxExtension)
    {
      return 1;
    }
  }

  else
  {
  }

  photoLocalIdentifier = [(_PSAttachment *)self photoLocalIdentifier];
  v7 = photoLocalIdentifier != 0;

  return 2 * v7;
}

- (_PSAttachment)initWithCreationDate:(id)date UTI:(id)i photoLocalIdentifier:(id)identifier identifier:(id)a6 cloudIdentifier:(id)cloudIdentifier contentURL:(id)l contentText:(id)text imageData:(id)self0 photoLocalIdentifiers:(id)self1 suggestedContactIdentifiers:(id)self2 photoSceneDescriptors:(id)self3 peopleInPhoto:(id)self4
{
  dateCopy = date;
  iCopy = i;
  identifierCopy = identifier;
  v19 = a6;
  cloudIdentifierCopy = cloudIdentifier;
  lCopy = l;
  v22 = v19;
  textCopy = text;
  dataCopy = data;
  identifiersCopy = identifiers;
  descriptorsCopy = descriptors;
  photoCopy = photo;
  v48.receiver = self;
  v48.super_class = _PSAttachment;
  v28 = [(_PSAttachment *)&v48 init];
  if (v28)
  {
    v29 = [dateCopy copy];
    creationDate = v28->_creationDate;
    v28->_creationDate = v29;

    v31 = [iCopy copy];
    UTI = v28->_UTI;
    v28->_UTI = v31;

    v33 = [identifierCopy copy];
    photoLocalIdentifier = v28->_photoLocalIdentifier;
    v28->_photoLocalIdentifier = v33;

    v35 = [v22 copy];
    identifier = v28->_identifier;
    v28->_identifier = v35;

    v37 = [cloudIdentifierCopy copy];
    cloudIdentifier = v28->_cloudIdentifier;
    v28->_cloudIdentifier = v37;

    v39 = [lCopy copy];
    contentURL = v28->_contentURL;
    v28->_contentURL = v39;

    v41 = [textCopy copy];
    contentText = v28->_contentText;
    v28->_contentText = v41;

    objc_storeStrong(&v28->_imageData, data);
    objc_storeStrong(&v28->_photoLocalIdentifiers, identifiers);
    objc_storeStrong(&v28->_photoSceneDescriptors, descriptors);
    objc_storeStrong(&v28->_peopleInPhoto, photo);
  }

  return v28;
}

- (_PSAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = _PSAttachment;
  v5 = [(_PSAttachment *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UTI"];
    UTI = v5->_UTI;
    v5->_UTI = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoLocalIdentifier"];
    photoLocalIdentifier = v5->_photoLocalIdentifier;
    v5->_photoLocalIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    cloudIdentifier = v5->_cloudIdentifier;
    v5->_cloudIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    contentURL = v5->_contentURL;
    v5->_contentURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentText"];
    contentText = v5->_contentText;
    v5->_contentText = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"photoLocalIdentifiers"];
    photoLocalIdentifiers = v5->_photoLocalIdentifiers;
    v5->_photoLocalIdentifiers = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"photoSceneDescriptors"];
    photoSceneDescriptors = v5->_photoSceneDescriptors;
    v5->_photoSceneDescriptors = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"peopleInPhoto"];
    peopleInPhoto = v5->_peopleInPhoto;
    v5->_peopleInPhoto = v35;

    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"contentURLSandboxExtension"];
    contentURLSandboxExtension = v5->_contentURLSandboxExtension;
    v5->_contentURLSandboxExtension = v38;

    v40 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creationDate = self->_creationDate;
  coderCopy = coder;
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_UTI forKey:@"UTI"];
  [coderCopy encodeObject:self->_photoLocalIdentifier forKey:@"photoLocalIdentifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_cloudIdentifier forKey:@"cloudIdentifier"];
  [coderCopy encodeObject:self->_contentURL forKey:@"contentURL"];
  [coderCopy encodeObject:self->_contentText forKey:@"contentText"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeObject:self->_photoLocalIdentifiers forKey:@"photoLocalIdentifiers"];
  [coderCopy encodeObject:self->_photoSceneDescriptors forKey:@"photoSceneDescriptors"];
  [coderCopy encodeObject:self->_peopleInPhoto forKey:@"peopleInPhoto"];
  [coderCopy encodeObject:self->_contentURLSandboxExtension forKey:@"contentURLSandboxExtension"];
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  creationDate = [(_PSAttachment *)self creationDate];
  v3 = [(_PSAttachment *)self UTI];
  photoLocalIdentifier = [(_PSAttachment *)self photoLocalIdentifier];
  contentURL = [(_PSAttachment *)self contentURL];
  if (contentURL)
  {
    v6 = MEMORY[0x1E696AD98];
    contentURL2 = [(_PSAttachment *)self contentURL];
    absoluteString = [contentURL2 absoluteString];
    v7 = [v6 numberWithUnsignedInteger:{objc_msgSend(absoluteString, "length")}];
  }

  else
  {
    v7 = @"null";
  }

  contentText = [(_PSAttachment *)self contentText];
  photoLocalIdentifiers = [(_PSAttachment *)self photoLocalIdentifiers];
  v10 = [photoLocalIdentifiers count];
  photoSceneDescriptors = [(_PSAttachment *)self photoSceneDescriptors];
  peopleInPhoto = [(_PSAttachment *)self peopleInPhoto];
  v13 = [v18 stringWithFormat:@"<%@ %p> creationDate: %@, UTI: %@, photoIdentifier: %@, contentURL: %@, contentText: %@ photoLocalIds: %lu, photoSceneDescriptors: %@, peopleInPhoto: %@", v17, self, creationDate, v3, photoLocalIdentifier, v7, contentText, v10, photoSceneDescriptors, peopleInPhoto];

  if (contentURL)
  {
  }

  return v13;
}

- (unint64_t)totalHashOfElementsFromArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
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
  photoLocalIdentifiers = [(_PSAttachment *)self photoLocalIdentifiers];
  v9 = v7 ^ [(_PSAttachment *)self totalHashOfElementsFromArray:photoLocalIdentifiers];

  photoSceneDescriptors = [(_PSAttachment *)self photoSceneDescriptors];
  v11 = v6 ^ v9 ^ [(_PSAttachment *)self totalHashOfElementsFromArray:photoSceneDescriptors];

  peopleInPhoto = [(_PSAttachment *)self peopleInPhoto];
  v13 = [(_PSAttachment *)self totalHashOfElementsFromArray:peopleInPhoto];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v58 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

    photoLocalIdentifier = [(_PSAttachment *)self photoLocalIdentifier];
    if (photoLocalIdentifier)
    {
      v14 = photoLocalIdentifier;
      photoLocalIdentifier2 = [(_PSAttachment *)v6 photoLocalIdentifier];

      if (photoLocalIdentifier2)
      {
        photoLocalIdentifier3 = [(_PSAttachment *)self photoLocalIdentifier];
        photoLocalIdentifier4 = [(_PSAttachment *)v6 photoLocalIdentifier];
        v18 = [photoLocalIdentifier3 isEqualToString:photoLocalIdentifier4];

        if (!v18)
        {
          goto LABEL_27;
        }
      }
    }

    cloudIdentifier = [(_PSAttachment *)self cloudIdentifier];
    if (cloudIdentifier)
    {
      v20 = cloudIdentifier;
      cloudIdentifier2 = [(_PSAttachment *)v6 cloudIdentifier];

      if (cloudIdentifier2)
      {
        cloudIdentifier3 = [(_PSAttachment *)self cloudIdentifier];
        cloudIdentifier4 = [(_PSAttachment *)v6 cloudIdentifier];
        v24 = [cloudIdentifier3 isEqual:cloudIdentifier4];

        if (!v24)
        {
          goto LABEL_27;
        }
      }
    }

    identifier = [(_PSAttachment *)self identifier];
    if (identifier)
    {
      v26 = identifier;
      identifier2 = [(_PSAttachment *)v6 identifier];

      if (identifier2)
      {
        identifier3 = [(_PSAttachment *)self identifier];
        identifier4 = [(_PSAttachment *)v6 identifier];
        v30 = [identifier3 isEqual:identifier4];

        if (!v30)
        {
          goto LABEL_27;
        }
      }
    }

    contentURL = [(_PSAttachment *)self contentURL];
    if (!contentURL)
    {
      goto LABEL_19;
    }

    v32 = contentURL;
    contentURL2 = [(_PSAttachment *)v6 contentURL];

    if (!contentURL2)
    {
      goto LABEL_19;
    }

    contentURL3 = [(_PSAttachment *)self contentURL];
    contentURL4 = [(_PSAttachment *)v6 contentURL];
    v36 = [contentURL3 isEqual:contentURL4];

    if (!v36)
    {
LABEL_27:
      v58 = 0;
    }

    else
    {
LABEL_19:
      v37 = objc_alloc(MEMORY[0x1E695DFA8]);
      photoLocalIdentifiers = [(_PSAttachment *)self photoLocalIdentifiers];
      v39 = [v37 initWithArray:photoLocalIdentifiers];

      v40 = objc_alloc(MEMORY[0x1E695DFA8]);
      photoLocalIdentifiers2 = [(_PSAttachment *)v6 photoLocalIdentifiers];
      v42 = [v40 initWithArray:photoLocalIdentifiers2];

      v43 = [v39 count];
      if (v43 == [v42 count] && objc_msgSend(v39, "isEqualToSet:", v42))
      {
        v44 = objc_alloc(MEMORY[0x1E695DFA8]);
        photoSceneDescriptors = [(_PSAttachment *)self photoSceneDescriptors];
        v46 = [v44 initWithArray:photoSceneDescriptors];

        v47 = objc_alloc(MEMORY[0x1E695DFA8]);
        photoSceneDescriptors2 = [(_PSAttachment *)v6 photoSceneDescriptors];
        v49 = [v47 initWithArray:photoSceneDescriptors2];

        v50 = [v46 count];
        if (v50 == [v49 count] && objc_msgSend(v46, "isEqualToSet:", v49))
        {
          v51 = objc_alloc(MEMORY[0x1E695DFA8]);
          peopleInPhoto = [(_PSAttachment *)self peopleInPhoto];
          v53 = [v51 initWithArray:peopleInPhoto];

          v54 = objc_alloc(MEMORY[0x1E695DFA8]);
          peopleInPhoto2 = [(_PSAttachment *)v6 peopleInPhoto];
          v56 = [v54 initWithArray:peopleInPhoto2];

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