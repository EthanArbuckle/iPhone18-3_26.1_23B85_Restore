@interface _TIKeyboardSecureCandidate
- (BOOL)isEqual:(id)a3;
- (_TIKeyboardSecureCandidate)initWithSecureHeader:(id)a3 secureContent:(id)a4 secureFormattedContent:(id)a5 input:(id)a6 truncationSentinel:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)candidateHash;
- (unint64_t)hash;
@end

@implementation _TIKeyboardSecureCandidate

- (unint64_t)hash
{
  v3 = 257 * [(_TIKeyboardSecureCandidate *)self candidateHash];
  v4 = 257 * ([(NSString *)self->_input hash]+ v3);
  return v4 + [(NSString *)self->_truncationSentinel hash];
}

- (unint64_t)candidateHash
{
  v3 = 257 * [(NSString *)self->_secureHeader hash];
  v4 = 257 * ([(NSString *)self->_secureContent hash]+ v3);
  return v4 + [(NSString *)self->_secureFormattedContent hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_TIKeyboardSecureCandidate *)self secureHeader];
  v5 = [v3 stringWithFormat:@"secureHeader(%@)", v4];

  v6 = [(_TIKeyboardSecureCandidate *)self secureContent];
  v7 = [v5 stringByAppendingFormat:@"secureContent(%@)", v6];;

  v8 = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
  v9 = [v7 stringByAppendingFormat:@"secureFormattedContent(%@)", v8];;

  v10 = [(_TIKeyboardSecureCandidate *)self input];
  v11 = [v9 stringByAppendingFormat:@"input(%@)", v10];;

  v12 = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
  v13 = [v11 stringByAppendingFormat:@"truncationSentinel(%@)", v12];;

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(_TIKeyboardSecureCandidate *)self secureHeader];
    v7 = [v5 secureHeader];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(_TIKeyboardSecureCandidate *)self secureHeader];
      v10 = [v5 secureHeader];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(_TIKeyboardSecureCandidate *)self secureContent];
    v14 = [v5 secureContent];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(_TIKeyboardSecureCandidate *)self secureContent];
      v17 = [v5 secureContent];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
    v20 = [v5 secureFormattedContent];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
      v23 = [v5 secureFormattedContent];
      v24 = [v22 isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(_TIKeyboardSecureCandidate *)self input];
    v26 = [v5 input];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(_TIKeyboardSecureCandidate *)self input];
      v29 = [v5 input];
      v30 = [v28 isEqualToString:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
    v32 = [v5 truncationSentinel];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
      v34 = [v5 truncationSentinel];
      v12 = [v33 isEqualToString:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_secureHeader);
    objc_storeStrong(v5 + 2, self->_secureContent);
    objc_storeStrong(v5 + 3, self->_secureFormattedContent);
    objc_storeStrong(v5 + 4, self->_input);
    objc_storeStrong(v5 + 5, self->_truncationSentinel);
  }

  return v5;
}

- (_TIKeyboardSecureCandidate)initWithSecureHeader:(id)a3 secureContent:(id)a4 secureFormattedContent:(id)a5 input:(id)a6 truncationSentinel:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = _TIKeyboardSecureCandidate;
  v17 = [(_TIKeyboardSecureCandidate *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_secureHeader, a3);
    objc_storeStrong(&v18->_secureContent, a4);
    objc_storeStrong(&v18->_secureFormattedContent, a5);
    objc_storeStrong(&v18->_input, a6);
    objc_storeStrong(&v18->_truncationSentinel, a7);
  }

  return v18;
}

@end