@interface WebUIAlert
- (NSArray)buttonTitles;
- (WebUIAlert)initWithType:(int)a3 title:(id)a4 bodyText:(id)a5 defaultAction:(int)a6 otherAction:(int)a7 tableAction:(int)a8;
- (id)_buttonTitleForAction:(int)a3;
- (id)selectedIdentity;
- (int)actionForButtonTag:(int64_t)a3;
- (void)setIdentities:(id)a3;
@end

@implementation WebUIAlert

- (WebUIAlert)initWithType:(int)a3 title:(id)a4 bodyText:(id)a5 defaultAction:(int)a6 otherAction:(int)a7 tableAction:(int)a8
{
  v14 = a4;
  v15 = a5;
  v23.receiver = self;
  v23.super_class = WebUIAlert;
  v16 = [(WebUIAlert *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    v18 = [v14 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v15 copy];
    bodyText = v17->_bodyText;
    v17->_bodyText = v20;

    v17->_otherAction = a7;
    v17->_defaultAction = a6;
    v17->_tableAction = a8;
    v17->_hideAction = a6;
  }

  return v17;
}

- (id)_buttonTitleForAction:(int)a3
{
  v4 = 0;
  if (a3 > 5)
  {
    if (a3 > 10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3 > 2 || a3 == 1 || a3 == 2)
  {
LABEL_8:
    v4 = _WBSLocalizedString();
  }

LABEL_9:

  return v4;
}

- (NSArray)buttonTitles
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_otherAction)
  {
    v4 = [(WebUIAlert *)self _buttonTitleForAction:?];
    [v3 addObject:v4];
  }

  if (self->_defaultAction)
  {
    v5 = [(WebUIAlert *)self _buttonTitleForAction:?];
    [v3 addObject:v5];
  }

  return v3;
}

- (int)actionForButtonTag:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_defaultAction;
  }

  if (a3)
  {
    return 0;
  }

  otherAction = self->_otherAction;
  if (!otherAction)
  {
    return self->_defaultAction;
  }

  return otherAction;
}

- (void)setIdentities:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  identities = self->_identities;
  self->_identities = v5;

  if ([v4 count] >= 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          certificateRef = 0;
          if (!SecIdentityCopyCertificate(v13, &certificateRef))
          {
            v14 = SecCertificateCopySubjectSummary(certificateRef);
            if (v14)
            {
              v15 = v14;
              [(NSArray *)v7 addObject:v14];
            }

            CFRelease(certificateRef);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    titles = self->_titles;
    self->_titles = v7;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)selectedIdentity
{
  if ([(NSArray *)self->_identities count]== 1)
  {
    v3 = [(NSArray *)self->_identities firstObject];
  }

  else
  {
    indexOfSelectedIdentity = self->_indexOfSelectedIdentity;
    if ((indexOfSelectedIdentity & 0x8000000000000000) != 0 || indexOfSelectedIdentity >= [(NSArray *)self->_identities count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [(NSArray *)self->_identities objectAtIndexedSubscript:self->_indexOfSelectedIdentity];
    }
  }

  return v3;
}

@end