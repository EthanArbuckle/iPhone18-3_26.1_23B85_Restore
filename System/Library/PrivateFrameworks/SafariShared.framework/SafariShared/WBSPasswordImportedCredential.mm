@interface WBSPasswordImportedCredential
- (BOOL)isEqual:(id)a3;
- (WBSPasswordImportedCredential)initWithCoder:(id)a3;
- (WBSPasswordImportedCredential)initWithUser:(id)a3 password:(id)a4 url:(id)a5 otpAuthURL:(id)a6 title:(id)a7 notesEntry:(id)a8 lineNumberFromSourceFile:(unint64_t)a9;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSPasswordImportedCredential

- (WBSPasswordImportedCredential)initWithUser:(id)a3 password:(id)a4 url:(id)a5 otpAuthURL:(id)a6 title:(id)a7 notesEntry:(id)a8 lineNumberFromSourceFile:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v36.receiver = self;
  v36.super_class = WBSPasswordImportedCredential;
  v21 = [(WBSPasswordImportedCredential *)&v36 init];
  if (v21)
  {
    v22 = [v15 copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_1F3A5E418;
    }

    objc_storeStrong(&v21->_user, v24);

    v25 = [v16 copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_1F3A5E418;
    }

    objc_storeStrong(&v21->_password, v27);

    objc_storeStrong(&v21->_url, a5);
    v28 = [v18 copy];
    otpAuthURL = v21->_otpAuthURL;
    v21->_otpAuthURL = v28;

    v30 = [v19 copy];
    title = v21->_title;
    v21->_title = v30;

    v32 = [v20 copy];
    notesEntry = v21->_notesEntry;
    v21->_notesEntry = v32;

    v21->_lineNumberFromSourceFile = a9;
    v34 = v21;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSPasswordImportedCredential *)v5 user];
      if (WBSIsEqual())
      {
        v7 = [(WBSPasswordImportedCredential *)v5 otpAuthURL];
        if (WBSIsEqual())
        {
          v8 = [(WBSPasswordImportedCredential *)v5 notesEntry];
          if (WBSIsEqual())
          {
            v9 = [(WBSPasswordImportedCredential *)v5 title];
            if (WBSIsEqual())
            {
              v10 = [(WBSPasswordImportedCredential *)v5 password];
              if (WBSIsEqual())
              {
                v11 = [(WBSPasswordImportedCredential *)v5 url];
                if (WBSIsEqual())
                {
                  lineNumberFromSourceFile = self->_lineNumberFromSourceFile;
                  v13 = lineNumberFromSourceFile == [(WBSPasswordImportedCredential *)v5 lineNumberFromSourceFile];
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSURL *)self->_url hash];
  v6 = v4 ^ v5 ^ [(NSURL *)self->_otpAuthURL hash];
  v7 = [(NSString *)self->_notesEntry hash];
  return v6 ^ v7 ^ [(NSString *)self->_title hash]^ self->_lineNumberFromSourceFile;
}

- (WBSPasswordImportedCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otp"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
  v11 = [v4 decodeIntegerForKey:@"lineNumberFromSourceFile"];

  v12 = [(WBSPasswordImportedCredential *)self initWithUser:v5 password:v6 url:v7 otpAuthURL:v8 title:v9 notesEntry:v10 lineNumberFromSourceFile:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  user = self->_user;
  v5 = a3;
  [v5 encodeObject:user forKey:@"user"];
  [v5 encodeObject:self->_password forKey:@"password"];
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeObject:self->_otpAuthURL forKey:@"otp"];
  [v5 encodeObject:self->_notesEntry forKey:@"notes"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInt:LODWORD(self->_lineNumberFromSourceFile) forKey:@"lineNumberFromSourceFile"];
}

- (int64_t)compare:(id)a3
{
  lineNumberFromSourceFile = self->_lineNumberFromSourceFile;
  v4 = *(a3 + 7);
  v5 = lineNumberFromSourceFile >= v4;
  v6 = lineNumberFromSourceFile > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end