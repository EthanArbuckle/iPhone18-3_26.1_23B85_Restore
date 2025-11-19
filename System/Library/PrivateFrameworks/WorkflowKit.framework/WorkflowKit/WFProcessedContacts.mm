@interface WFProcessedContacts
@end

@implementation WFProcessedContacts

void __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke(uint64_t a1, void (**a2)(void))
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    [v3 allowContactsAccessWithCompletionHandler:?];
  }

  else
  {
    v4 = a2;
    v5 = objc_opt_new();
    a2[2](v4);
  }
}

void __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 type])
  {
    if ([v6 type] == 1)
    {
      v8 = [v6 phoneNumber];
      v9 = *(a1 + 32);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_3;
      v22[3] = &unk_1E8377A78;
      v23 = v8;
      v24 = v7;
      v10 = *(v9 + 16);
      v11 = v8;
      v10(v9, v22);

      v12 = v24;
LABEL_8:

      goto LABEL_9;
    }

    if ([v6 type] == 2)
    {
      v15 = [v6 emailAddress];
      v16 = *(a1 + 32);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_4;
      v19[3] = &unk_1E8377A78;
      v20 = v15;
      v21 = v7;
      v17 = *(v16 + 16);
      v11 = v15;
      v17(v16, v19);

      v12 = v21;
      goto LABEL_8;
    }

    if ([v6 type] != 3)
    {
      (*(v7 + 2))(v7, 0, 0);
      goto LABEL_9;
    }

    v13 = [v6 customHandle];
    v14 = [objc_alloc(MEMORY[0x1E696E948]) initWithValue:0 type:0];
    v18 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v14 nameComponents:0 displayName:v13 image:0 contactIdentifier:0 customIdentifier:0];
    (*(v7 + 2))(v7, v18, 0);
  }

  else
  {
    v13 = [v6 contact];
    v14 = [v13 INPersonRepresentation];
    (*(v7 + 2))(v7, v14, 0);
  }

LABEL_9:
}

void __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v13 && ([v13 firstContactWithPhoneNumber:*(a1 + 32)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v9 = [v6 INPersonRepresentation];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696E948]);
      v11 = [*(a1 + 32) normalizedPhoneNumber];
      v7 = [v10 initWithValue:v11 type:2];

      v8 = *(a1 + 40);
      v9 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v7 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    }

    v12 = v9;
    (*(v8 + 16))(v8, v9, 0);
  }
}

void __88__WFProcessedContacts_INPerson__getRecipientsWithPermissionRequestor_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v13 && ([v13 firstContactWithEmailAddress:*(a1 + 32)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v9 = [v6 INPersonRepresentation];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696E948]);
      v11 = [*(a1 + 32) address];
      v7 = [v10 initWithValue:v11 type:1];

      v8 = *(a1 + 40);
      v9 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v7 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    }

    v12 = v9;
    (*(v8 + 16))(v8, v9, 0);
  }
}

@end