@interface REMContactRepresentation
+ (id)representationFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesContactRepresentation:(id)representation;
- (REMContactRepresentation)initWithCoder:(id)coder;
- (REMContactRepresentation)initWithPhones:(id)phones emails:(id)emails;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMContactRepresentation

- (REMContactRepresentation)initWithPhones:(id)phones emails:(id)emails
{
  phonesCopy = phones;
  emailsCopy = emails;
  v14.receiver = self;
  v14.super_class = REMContactRepresentation;
  v8 = [(REMContactRepresentation *)&v14 init];
  if (v8)
  {
    v9 = [phonesCopy copy];
    phones = v8->_phones;
    v8->_phones = v9;

    v11 = [emailsCopy copy];
    emails = v8->_emails;
    v8->_emails = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      phones = [(REMContactRepresentation *)self phones];
      phones2 = [(REMContactRepresentation *)v6 phones];
      v9 = phones2;
      if (phones == phones2)
      {
      }

      else
      {
        phones3 = [(REMContactRepresentation *)self phones];
        phones4 = [(REMContactRepresentation *)v6 phones];
        v12 = [phones3 isEqual:phones4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      emails = [(REMContactRepresentation *)self emails];
      emails2 = [(REMContactRepresentation *)v6 emails];
      if (emails == emails2)
      {
        v13 = 1;
      }

      else
      {
        emails3 = [(REMContactRepresentation *)self emails];
        emails4 = [(REMContactRepresentation *)v6 emails];
        v13 = [emails3 isEqual:emails4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (BOOL)matchesContactRepresentation:(id)representation
{
  v47 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = MEMORY[0x1E695DFD8];
  phones = [(REMContactRepresentation *)self phones];
  v7 = [v5 setWithArray:phones];

  v8 = MEMORY[0x1E695DFD8];
  phones2 = [representationCopy phones];
  v10 = [v8 setWithArray:phones2];

  if ([v7 intersectsSet:v10])
  {
    v11 = 1;
  }

  else
  {
    v12 = MEMORY[0x1E695DFD8];
    emails = [(REMContactRepresentation *)self emails];
    v14 = [v12 setWithArray:emails];

    v15 = MEMORY[0x1E695DFD8];
    emails2 = [representationCopy emails];
    v17 = [v15 setWithArray:emails2];

    if ([v14 intersectsSet:v17])
    {
      v11 = 1;
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v7;
      v32 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v32)
      {
        v19 = *v42;
        v35 = v17;
        v36 = v7;
        v34 = v18;
        v31 = *v42;
        do
        {
          v20 = 0;
          do
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(v18);
            }

            v33 = v20;
            v21 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:*(*(&v41 + 1) + 8 * v20)];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v22 = v10;
            v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v38;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v38 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:*(*(&v37 + 1) + 8 * i)];
                  v28 = [v21 isLikePhoneNumber:v27];

                  if (v28)
                  {

                    v11 = 1;
                    v17 = v35;
                    v7 = v36;
                    v18 = v34;
                    goto LABEL_23;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v20 = v33 + 1;
            v17 = v35;
            v7 = v36;
            v18 = v34;
            v19 = v31;
          }

          while (v33 + 1 != v32);
          v11 = 0;
          v32 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v32);
      }

      else
      {
        v11 = 0;
      }

LABEL_23:
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)hash
{
  phones = [(REMContactRepresentation *)self phones];
  v4 = [phones hash];
  emails = [(REMContactRepresentation *)self emails];
  v6 = [emails hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  phones = [(REMContactRepresentation *)self phones];
  v6 = [phones count];
  emails = [(REMContactRepresentation *)self emails];
  v8 = [v3 stringWithFormat:@"<%@: %p phones.count=%ld emails.count=%ld>", v4, self, v6, objc_msgSend(emails, "count")];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phones = [(REMContactRepresentation *)self phones];
  [coderCopy encodeObject:phones forKey:@"phones"];

  emails = [(REMContactRepresentation *)self emails];
  [coderCopy encodeObject:emails forKey:@"emails"];
}

- (REMContactRepresentation)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"phones"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"emails"];

  v10 = [(REMContactRepresentation *)self initWithPhones:v8 emails:v9];
  return v10;
}

+ (id)representationFromData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v10 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v10];

  v6 = v10;
  if (v6)
  {
    v7 = +[REMLogStore utility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(REMContactRepresentation *)v6 representationFromData:v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (void)representationFromData:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Unable to unarchive data to create REMContactRepresentation: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end