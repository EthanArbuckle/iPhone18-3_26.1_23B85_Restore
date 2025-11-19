@interface TSRemoteUIStyle
- (TSRemoteUIStyle)initWithButton:(id)a3;
- (void)applyToObjectModel:(id)a3;
@end

@implementation TSRemoteUIStyle

- (TSRemoteUIStyle)initWithButton:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSRemoteUIStyle;
  v6 = [(RUIStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_button, a3);
  }

  return v7;
}

- (void)applyToObjectModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 allPages];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 navigationItem];
        [v10 setRightBarButtonItem:self->_button];

        [v9 setModalInPresentation:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end