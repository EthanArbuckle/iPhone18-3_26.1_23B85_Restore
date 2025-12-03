@interface _TIKeyboardSecureCandidate
- (BOOL)isEqual:(id)equal;
- (_TIKeyboardSecureCandidate)initWithSecureHeader:(id)header secureContent:(id)content secureFormattedContent:(id)formattedContent input:(id)input truncationSentinel:(id)sentinel;
- (id)copyWithZone:(_NSZone *)zone;
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
  secureHeader = [(_TIKeyboardSecureCandidate *)self secureHeader];
  v5 = [v3 stringWithFormat:@"secureHeader(%@)", secureHeader];

  secureContent = [(_TIKeyboardSecureCandidate *)self secureContent];
  v7 = [v5 stringByAppendingFormat:@"secureContent(%@)", secureContent];;

  secureFormattedContent = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
  v9 = [v7 stringByAppendingFormat:@"secureFormattedContent(%@)", secureFormattedContent];;

  input = [(_TIKeyboardSecureCandidate *)self input];
  v11 = [v9 stringByAppendingFormat:@"input(%@)", input];;

  truncationSentinel = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
  v13 = [v11 stringByAppendingFormat:@"truncationSentinel(%@)", truncationSentinel];;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    secureHeader = [(_TIKeyboardSecureCandidate *)self secureHeader];
    secureHeader2 = [v5 secureHeader];
    v8 = secureHeader2;
    if (secureHeader == secureHeader2)
    {
    }

    else
    {
      secureHeader3 = [(_TIKeyboardSecureCandidate *)self secureHeader];
      secureHeader4 = [v5 secureHeader];
      v11 = [secureHeader3 isEqualToString:secureHeader4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    secureContent = [(_TIKeyboardSecureCandidate *)self secureContent];
    secureContent2 = [v5 secureContent];
    v15 = secureContent2;
    if (secureContent == secureContent2)
    {
    }

    else
    {
      secureContent3 = [(_TIKeyboardSecureCandidate *)self secureContent];
      secureContent4 = [v5 secureContent];
      v18 = [secureContent3 isEqualToString:secureContent4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    secureFormattedContent = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
    secureFormattedContent2 = [v5 secureFormattedContent];
    v21 = secureFormattedContent2;
    if (secureFormattedContent == secureFormattedContent2)
    {
    }

    else
    {
      secureFormattedContent3 = [(_TIKeyboardSecureCandidate *)self secureFormattedContent];
      secureFormattedContent4 = [v5 secureFormattedContent];
      v24 = [secureFormattedContent3 isEqualToString:secureFormattedContent4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    input = [(_TIKeyboardSecureCandidate *)self input];
    input2 = [v5 input];
    v27 = input2;
    if (input == input2)
    {
    }

    else
    {
      input3 = [(_TIKeyboardSecureCandidate *)self input];
      input4 = [v5 input];
      v30 = [input3 isEqualToString:input4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    truncationSentinel = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
    truncationSentinel2 = [v5 truncationSentinel];
    if (truncationSentinel == truncationSentinel2)
    {
      v12 = 1;
    }

    else
    {
      truncationSentinel3 = [(_TIKeyboardSecureCandidate *)self truncationSentinel];
      truncationSentinel4 = [v5 truncationSentinel];
      v12 = [truncationSentinel3 isEqualToString:truncationSentinel4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (_TIKeyboardSecureCandidate)initWithSecureHeader:(id)header secureContent:(id)content secureFormattedContent:(id)formattedContent input:(id)input truncationSentinel:(id)sentinel
{
  headerCopy = header;
  contentCopy = content;
  formattedContentCopy = formattedContent;
  inputCopy = input;
  sentinelCopy = sentinel;
  v21.receiver = self;
  v21.super_class = _TIKeyboardSecureCandidate;
  v17 = [(_TIKeyboardSecureCandidate *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_secureHeader, header);
    objc_storeStrong(&v18->_secureContent, content);
    objc_storeStrong(&v18->_secureFormattedContent, formattedContent);
    objc_storeStrong(&v18->_input, input);
    objc_storeStrong(&v18->_truncationSentinel, sentinel);
  }

  return v18;
}

@end