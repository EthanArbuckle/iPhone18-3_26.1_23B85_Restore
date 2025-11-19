void sub_1000E9970(uint64_t a1)
{
  v2 = [*(a1 + 32) uniqueID];
  v3 = [*(*(a1 + 40) + 24) passSharesForPassUniqueIdentifier:v2];
  v4 = [*(*(a1 + 40) + 24) passEntitlementsForPassUniqueIdentifier:v2];
  v5 = v4;
  if (!v3 && !(*(a1 + 48) | v4) && !*(a1 + 56))
  {
    goto LABEL_16;
  }

  if ((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) uniqueID];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *v18 = 138413314;
      *&v18[4] = v7;
      *&v18[12] = 2112;
      *&v18[14] = v8;
      *&v18[22] = 2112;
      v19 = v3;
      *v20 = 2112;
      *&v20[2] = v9;
      *&v20[10] = 2112;
      *&v20[12] = v5;
      v10 = "PDSharingManager: Handling pass update and checking notifications for %@. \n\nOld Shares: %@ \n\nNew Shares: %@ \n\nOld Entitlements: %@ \n\nNew Entitlements: %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v10, v18, 0x34u);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) uniqueID];
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      *v18 = 138413314;
      *&v18[4] = v7;
      *&v18[12] = 2112;
      *&v18[14] = v11;
      *&v18[22] = 2112;
      v19 = v3;
      *v20 = 2112;
      *&v20[2] = v12;
      *&v20[10] = 2112;
      *&v20[12] = v5;
      v10 = "PDSharingManager: Skipped checking notifications for %@. \n\nOld Shares: %@ \n\nNew Shares: %@ \n\nOld Entitlements: %@ \n\nNew Entitlements: %@";
      goto LABEL_10;
    }
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 40) + 40) sendShareChangeNotificationsForPass:*(a1 + 32) oldShares:*(a1 + 48) newShares:v3];
  }

  if (*(a1 + 65) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 40);
    v15 = *(a1 + 56);
    v16 = [*(a1 + 48) count] != 0;
    [v14 sendEntitlementChangeNotificationsForPass:v13 oldEntitlements:v15 newEntitlements:v5 hasExistingShares:{v16, *v18, *&v18[16], v19, *v20, *&v20[16]}];
  }

  v17 = objc_alloc_init(PKMAEntitlementTemplateManager);
  [v17 entitlementTemplates:0];

LABEL_16:
}

void sub_1000E9C68(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 passSharesForPassUniqueIdentifier:v3];

  if (v4 && [v4 count])
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v32 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDSharingManager: removing %{public}lu shares because of pass deletion", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v20 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v25 + 1) + 8 * v8) credentialShares];
          v10 = v9;
          if (v9)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v22;
              do
              {
                v14 = 0;
                do
                {
                  if (*v22 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = [*(*(&v21 + 1) + 8 * v14) channelTransportIdentifier];
                  v16 = [PKSharingRelayChannelDescriptor existingChannelForMailboxIdentifier:v15];

                  v17 = [*(*(a1 + 32) + 136) handleForDescriptor:v16 queue:*(*(a1 + 32) + 88)];
                  sub_1000E3D3C(*(a1 + 32), v17);

                  v14 = v14 + 1;
                }

                while (v12 != v14);
                v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v12);
            }
          }

          v8 = v8 + 1;
        }

        while (v8 != v7);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    v4 = v18;
  }
}

void sub_1000E9FDC(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    v2 = [PKSharingExistingChannelDescriptor existingForTransportIdentifier:?];
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(v3 + 136);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EA17C;
    v7[3] = &unk_10083E490;
    v7[4] = v3;
    v8 = *(a1 + 56);
    [v5 sendMessageToDescriptor:v2 message:v4 completion:v7];
  }

  else
  {
    v6 = *(*(a1 + 48) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EA114;
    block[3] = &unk_10083D648;
    v10 = *(a1 + 56);
    dispatch_async(v6, block);
    v2 = v10;
  }
}

void sub_1000EA114(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PDBasicError();
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000EA17C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA23C;
  block[3] = &unk_1008449D0;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_1000EA3C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA49C;
  block[3] = &unk_10083F490;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000EA684(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 96);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EA78C;
  v15[3] = &unk_10083FD00;
  v16 = v9;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v11;
  v17 = v8;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(v10, v15);
}

void sub_1000EA78C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v4 = objc_alloc_init(PKCarShareAcceptanceResponse);
    [v4 setSubcredential:*(a1 + 40)];
    v3 = [*(a1 + 48) uniqueID];
    [v4 setPassUniqueIdentifier:v3];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000EA850(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v7[12];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EAA20;
    block[3] = &unk_10083C820;
    v21 = *(a1 + 72);
    v20 = v6;
    dispatch_async(v8, block);

    v9 = v21;
  }

  else
  {
    v10 = [*(a1 + 40) transportIdentifier];
    v11 = [v5 keySignRequestMessage];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EAA3C;
    v12[3] = &unk_100844BF8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v18 = *(a1 + 72);
    v15 = v5;
    v16 = *(a1 + 64);
    v17 = *(a1 + 40);
    [v7 sendSharingMessageTo:v10 message:v11 completion:v12];

    v9 = v13;
  }
}

void sub_1000EAA3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAB80;
  block[3] = &unk_100844BD0;
  v14 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = *(a1 + 32);
  v19 = *(a1 + 80);
  v8 = *(a1 + 56);
  *&v9 = v12;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v15 = v10;
  v16 = v9;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v11 = v4;
  dispatch_async(v5, block);
}

void sub_1000EAB80(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to put accept share message!", buf, 2u);
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000EAE30;
    v19[3] = &unk_100844B80;
    v19[4] = *(a1 + 56);
    v20 = *(a1 + 88);
    [v3 rejectInvitation:v4 completion:v19];
    v5 = v20;
  }

  else
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = [*(a1 + 64) localAcceptedShare];
    [v6 userDidEnterActivationCodeForShare:v7 activationCode:*(a1 + 72)];

    if ([*(a1 + 64) shouldWaitForResponse])
    {
      v8 = objc_alloc_init(PDSharingStatefulProvisioningOperation);
      v9 = [*(a1 + 80) transportIdentifier];
      [(PDSharingStatefulProvisioningOperation *)v8 setTransportIdentifier:v9];

      v10 = [*(a1 + 64) localAcceptedShare];
      v11 = [v10 identifier];
      [(PDSharingStatefulProvisioningOperation *)v8 setShareIdentifier:v11];

      [(PDSharingStatefulProvisioningOperation *)v8 setIsForegroundOperation:1];
      [(PDSharingStatefulProvisioningOperation *)v8 setRequiresSenderActivationVerification:1];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000EAF30;
      v16[3] = &unk_100844BA8;
      v18 = *(a1 + 88);
      v17 = *(a1 + 64);
      [(PDSharingStatefulProvisioningOperation *)v8 setCompletion:v16];
      [*(*(a1 + 56) + 8) addOperation:v8];

      return;
    }

    v12 = *(*(a1 + 56) + 96);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EAFBC;
    v13[3] = &unk_10083C820;
    v15 = *(a1 + 88);
    v14 = *(a1 + 64);
    dispatch_async(v12, v13);

    v5 = v15;
  }
}

void sub_1000EAE30(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAEC0;
  block[3] = &unk_10083D648;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_1000EAEC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError pkSharingError:6];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_1000EAF30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 subcredential];
  (*(v4 + 16))(v4, v7, v8, v6);
}

void sub_1000EAFBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) subcredential];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void sub_1000EB020(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (v5)
  {
    v7 = [v5 devicePrimaryPaymentApplication];
    v8 = [v7 subcredentials];
    v9 = [v8 anyObject];
    (*(v6 + 16))(v6, v10, v9, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, a3);
  }
}

void sub_1000EB0E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 8);
    v4 = [*(a1 + 48) transportIdentifier];
    [v3 didReceiverActivationCodeFailureForShare:v2 attemptsRemaining:1 transportIdentifier:v4];
  }
}

uint64_t sub_1000EB2F0(uint64_t a1, void *a2)
{
  v3 = [a2 shareIdentifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

void sub_1000EB3BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Failed to fetch embedded invite on remote device with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) activationOptions];
    v10 = [v9 activationCode];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EB524;
    v11[3] = &unk_100844D20;
    v12 = *(a1 + 32);
    [v8 acceptCarKeyShareForMessage:v5 activationCode:v10 completion:v11];

    v7 = v12;
  }
}

void sub_1000EB524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Yes";
    if (!a2)
    {
      v6 = @"No";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Finished accepting remote share with success: %@ %@", &v7, 0x16u);
  }
}

void sub_1000EB694(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(*(a1 + 32) + 8) pendingShares];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) subcredentialIdentifier];
        if (v8)
        {
          v9 = [[PKAppletSubcredential alloc] initWithIdentifier:v8];
          [v9 setState:2];
          [v2 addObject:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  if ([v2 count])
  {
    v11 = [v2 copy];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v10, 0);
  }
}

void sub_1000EB8FC(uint64_t a1)
{
  v1 = a1;
  [*(*(a1 + 32) + 8) pendingShares];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v2 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v2)
  {
LABEL_15:

    goto LABEL_21;
  }

  v3 = v2;
  v4 = *v39;
  v5 = PKAccountWebServicePaymentsRequest_ptr;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v39 != v4)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v38 + 1) + 8 * v6);
    v8 = *(v1 + 32);
    v9 = [v7 identifier];
    v16 = sub_1005BA68C(v8, v9, v10, v11, v12, v13, v14, v15, v30, v31, obj, v34, v35, v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), buf, *(&buf + 1), v43[0], v43[1]);

    v17 = [v16 originalInvitation];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v18 = v4;
    v19 = v5;
    v20 = v1;
    v21 = *(v1 + 40);
    v22 = [v17 readerIdentifier];
    v23 = v21;
    v24 = v22;
    v25 = v24;
    if (v23 == v24)
    {
      break;
    }

    if (v23 && v24)
    {
      v32 = [v23 isEqualToString:v24];

      v5 = v19;
      v1 = v20;
      v4 = v18;
      if (v32)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v5 = v19;
      v1 = v20;
      v4 = v18;
    }

LABEL_13:

    if (v3 == ++v6)
    {
      v3 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v3)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  v1 = v20;
LABEL_17:
  v26 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v7 identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Revoking share %@ to allow for new provisioning.", &buf, 0xCu);
  }

  v28 = [v7 subcredentialIdentifier];
  [*(*(v1 + 32) + 8) userDidTerminatePendingShareActivationForShare:v7];

  if (v28)
  {
    v29 = *(*(v1 + 32) + 56);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1000EBC34;
    *&v37 = &unk_10083E3C8;
    *(&v37 + 1) = *(v1 + 48);
    [v29 revokeSubcredentialForIdentifier:v28 withCompletion:&v34];

    goto LABEL_22;
  }

LABEL_21:
  (*(*(v1 + 48) + 16))();
LABEL_22:
}

void sub_1000EBFAC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSharingLoggableMailboxAddress();
    v4 = *(a1 + 40);
    *buf = 138412547;
    v19 = v3;
    v20 = 2113;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Handling outstanding message on %@ \n\n %{private}@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EC360;
  v15[3] = &unk_100844D48;
  v16 = *(a1 + 32);
  v12 = *(a1 + 40);
  v5 = v12.i64[0];
  v17 = vextq_s8(v12, v12, 8uLL);
  v6 = objc_retainBlock(v15);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 40);
    v8 = [v7 type];
    if (v8 <= 7 && ((1 << v8) & 0xB4) != 0)
    {
      v9 = sub_1005B99FC(*(a1 + 48), v7);
      if (v9)
      {
        v10 = [*(*(a1 + 48) + 24) passShareForTransportIdentifier:*(a1 + 32)];
        if (v10)
        {
          v11 = *(a1 + 32);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1000EC490;
          v13[3] = &unk_10083E3C8;
          v14 = v6;
          [v9 handleIncomingMessage:v7 transportIdentifier:v11 share:v10 completion:v13];
        }

        else
        {
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Unable to find active share for message. Ignoring.", buf, 2u);
          }

          (v6[2])(v6, 1);
        }
      }

      else
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Unable to find viable management service for message", buf, 2u);
        }

        (v6[2])(v6, 1);
      }
    }

    else
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Ignoring message because it is not a friend to owner message", buf, 2u);
      }

      (v6[2])(v6, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Message is not a generic sharing message. It should not have been processed", buf, 2u);
    }

    (v6[2])(v6, 1);
  }
}

void sub_1000EC360(void *a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PKSharingLoggableMailboxAddress();
    v6 = v5;
    v7 = @"N";
    if (a2)
    {
      v7 = @"Y";
    }

    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Handled outstanding message on %@ shouldDelete %@.", buf, 0x16u);
  }

  if (a2)
  {
    v8 = *(a1[5] + 24);
    v10 = a1[6];
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 insertOrUpdateSharingMessages:v9 storePayloads:0 transportIdentifier:a1[4]];
  }
}

void sub_1000EC4A0(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSharingLoggableMailboxAddress();
    v4 = *(a1 + 40);
    *buf = 138412547;
    *&buf[4] = v3;
    *&buf[12] = 2113;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Handling outstanding invitation request message on %@ \n\n %{private}@", buf, 0x16u);
  }

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000ECCA4;
  v67[3] = &unk_100844D48;
  v68 = *(a1 + 32);
  v29 = *(a1 + 40);
  v5 = v29.i64[0];
  v69 = vextq_s8(v29, v29, 8uLL);
  v6 = objc_retainBlock(v67);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 48) + 24);
    v9 = [v7 passTypeIdentifier];
    v10 = [v7 passSerialNumber];
    v11 = [v8 passWithPassTypeID:v9 serialNumber:v10];

    if (v11)
    {
      v12 = sub_1005B9A68(*(a1 + 48), v11);
      if (v12)
      {
        v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v71 = sub_100005AA0;
        v72 = sub_10000B15C;
        v73 = 0;
        v14 = objc_alloc_init(LAContext);
        v15 = [PKSharedPassSharesController alloc];
        v16 = [*(*(a1 + 48) + 16) sharedWebService];
        v17 = [v15 initWithPass:v11 webService:v16 paymentServiceProvider:0 queue:*(*(a1 + 48) + 88)];

        v65[0] = 0;
        v65[1] = v65;
        v65[2] = 0x3032000000;
        v65[3] = sub_100005AA0;
        v65[4] = sub_10000B15C;
        v66 = 0;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000ECDD4;
        v61[3] = &unk_10083EAD8;
        v18 = v17;
        v62 = v18;
        v64 = v65;
        v19 = v11;
        v63 = v19;
        [v13 addOperation:v61];
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x3032000000;
        v59[3] = sub_100005AA0;
        v59[4] = sub_10000B15C;
        v60 = 0;
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000ECF70;
        v55[3] = &unk_100844D98;
        v20 = v14;
        v56 = v20;
        v57 = buf;
        v58 = v59;
        [v13 addOperation:v55];
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x3032000000;
        v53[3] = sub_100005AA0;
        v53[4] = sub_10000B15C;
        v54 = 0;
        v51[0] = 0;
        v51[1] = v51;
        v51[2] = 0x3032000000;
        v51[3] = sub_100005AA0;
        v51[4] = sub_10000B15C;
        v52 = 0;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000ED1E8;
        v43[3] = &unk_100844DE8;
        v46 = v65;
        v44 = v12;
        v21 = v19;
        v45 = v21;
        v47 = v59;
        v48 = v51;
        v49 = v53;
        v50 = buf;
        [v13 addOperation:v43];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000ED464;
        v38[3] = &unk_10083C8C0;
        v22 = *(a1 + 32);
        v23 = *(a1 + 48);
        v39 = v22;
        v40 = v23;
        v41 = buf;
        v42 = v51;
        [v13 addOperation:v38];
        v24 = +[NSNull null];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000ED70C;
        v30[3] = &unk_100844E38;
        v25 = v20;
        v31 = v25;
        v26 = v6;
        v35 = buf;
        v36 = v53;
        v27 = *(a1 + 48);
        v34 = v26;
        v32 = v27;
        v33 = v21;
        v37 = v51;
        v28 = [v13 evaluateWithInput:v24 completion:v30];

        _Block_object_dispose(v51, 8);
        _Block_object_dispose(v53, 8);

        _Block_object_dispose(v59, 8);
        _Block_object_dispose(v65, 8);

        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Unable to find viable management service for message", buf, 2u);
        }

        (v6[2])(v6, 1);
      }
    }

    else
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Unable to find pass for invitation request", buf, 2u);
      }

      (v6[2])(v6, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Message is not a generic sharing message. It should not have been processed", buf, 2u);
    }

    (v6[2])(v6, 1);
  }
}

void sub_1000ECC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose((v63 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000ECCA4(void *a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PKSharingLoggableMailboxAddress();
    v6 = v5;
    v7 = @"N";
    if (a2)
    {
      v7 = @"Y";
    }

    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Handled outstanding message on %@ shouldDelete %@.", buf, 0x16u);
  }

  if (a2)
  {
    v8 = *(a1[5] + 24);
    v10 = a1[6];
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 insertOrUpdateSharingMessages:v9 storePayloads:0 transportIdentifier:a1[4]];
  }
}

void sub_1000ECDD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000ECEC8;
  v12[3] = &unk_10083E920;
  v17 = *(a1 + 48);
  v13 = v8;
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v14 = v9;
  v10 = v6;
  v11 = v7;
  [v13 updateSharesWithCompletion:v12];
}

uint64_t sub_1000ECEC8(uint64_t a1)
{
  v2 = [PKPartialShareInvitation alloc];
  v3 = [*(a1 + 32) baseShareForPassTransferWithIsForCompanion:0];
  v4 = [v2 initWithShare:v3 pass:*(a1 + 40)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 64) + 8) + 40) setSharingInvitationFlow:5];
  v7 = *(*(a1 + 56) + 16);

  return v7();
}

void sub_1000ECF70(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v19[0] = &off_1008A29C0;
  v8 = PKLocalizedShareableCredentialString(@"LOCAL_AUTHENTICATION_REASON");
  v20[0] = v8;
  v19[1] = &off_1008A29D8;
  v9 = PKLocalizedString(@"WALLET");
  v20[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v11 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ED100;
  v14[3] = &unk_100844D70;
  v16 = v6;
  v17 = v7;
  v15 = v11;
  v18 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  [v15 evaluatePolicy:1005 options:v10 reply:v14];
}

void sub_1000ED100(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13 && !v5 && ([*(a1 + 32) externalizedContext], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
    v9 = v6;

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = PDBasicError();
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000ED1E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Attempting to create share for %@", buf, 0xCu);
  }

  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(*(*(a1 + 56) + 8) + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000ED378;
  v16[3] = &unk_100844DC0;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v17 = v6;
  v18 = v7;
  v14 = v6;
  v15 = v7;
  [v11 createShareInvitationFromShare:v10 forPass:v12 authorization:v13 completion:v16];
}

void sub_1000ED378(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[8] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[8] + 8) + 40) != 0);
}

void sub_1000ED464(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Sending invitation for invitation request", buf, 2u);
  }

  v11 = [PKSharingExistingChannelDescriptor existingForTransportIdentifier:*(a1 + 32)];
  v12 = [*(*(a1 + 40) + 136) handleForDescriptor:v11 queue:*(*(a1 + 40) + 88)];
  if (v12)
  {
    v13 = [*(*(*(a1 + 56) + 8) + 40) primaryInvite];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000ED660;
    v18[3] = &unk_100844E10;
    v23 = *(a1 + 48);
    v19 = v12;
    v20 = v13;
    v22 = v9;
    v21 = v8;
    v14 = v13;
    [v19 sendMessage:v14 completion:v18];
  }

  else
  {
    v15 = PDBasicError();
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    (*(v9 + 2))(v9, v8, *(*(*(a1 + 48) + 8) + 40) != 0);
  }
}

void sub_1000ED660(void *a1, int a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(a1[8] + 8) + 40), a3);
  if (!v6 && a2)
  {
    [*(*(a1[9] + 8) + 40) setHandle:a1[4] forInvite:a1[5]];
  }

  (*(a1[7] + 16))(a1[7], a1[6], *(*(a1[8] + 8) + 40) != 0);
}

void sub_1000ED70C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 56) + 16))();
  if (*(*(*(a1 + 64) + 8) + 40) || [v5 isCanceled])
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Failed to send invitation with error: %@", buf, 0xCu);
    }

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) uniqueID];
      v10 = *(*(*(a1 + 72) + 8) + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000ED8D8;
      v11[3] = &unk_10083C7F8;
      v12 = *(a1 + 56);
      [v8 revokeShareForPassIdentifier:v9 share:v10 shouldCascade:0 completion:v11];
    }
  }

  else if (*(*(*(a1 + 72) + 8) + 40))
  {
    sub_1005BFB70(a1, a1 + 72);
  }
}

void sub_1000ED8EC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = PKSharingLoggableMailboxAddress();
    v4 = *(a1 + 40);
    *buf = 138412547;
    *&buf[4] = v3;
    *&buf[12] = 2113;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "PDSharingManager: Handling outstanding invitation request message on %@ \n\n %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v90 = sub_100005AA0;
  v91 = sub_10000B15C;
  v92 = 0;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1000EE23C;
  v85[3] = &unk_100844E60;
  v86 = *(a1 + 32);
  v39 = *(a1 + 40);
  v5 = v39.i64[0];
  v87 = vextq_s8(v39, v39, 8uLL);
  v88 = buf;
  v6 = objc_retainBlock(v85);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 48) + 24);
    v9 = [v7 sharingSessionIdentifier];
    v10 = [v8 passShareForIdentifier:v9];

    v11 = objc_alloc_init(NSMutableArray);
    if (v10)
    {
      v12 = *(*(a1 + 48) + 24);
      v13 = [v10 identifier];
      v14 = [v12 passIdentifierForPassShareIdentifier:v13];

      v15 = [*(*(a1 + 48) + 24) passWithUniqueIdentifier:v14];
      v16 = v15;
      if (v15 && ([v15 isCarKeyPass] & 1) != 0)
      {
        v17 = sub_1005B9A68(*(a1 + 48), v16);
        if (sub_1005BFC2C(v17, v2))
        {
          v38 = [PKSharingExistingChannelDescriptor existingForTransportIdentifier:*(a1 + 32)];
          v18 = [*(*(a1 + 48) + 136) handleForDescriptor:v38 queue:*(*(a1 + 48) + 88)];
          v19 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v18;

          if (*(*&buf[8] + 40))
          {
            v20 = objc_alloc_init(PKAsyncUnaryOperationComposer);
            v83[0] = 0;
            v83[1] = v83;
            v83[2] = 0x3032000000;
            v83[3] = sub_100005AA0;
            v83[4] = sub_10000B15C;
            v84 = 0;
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_1000EE37C;
            v76[3] = &unk_100842968;
            v34 = v10;
            v77 = v34;
            v32 = v17;
            v33 = v11;
            v78 = v33;
            v36 = v17;
            v79 = v36;
            v21 = v16;
            v22 = *(a1 + 48);
            v80 = v21;
            v81 = v22;
            v82 = v14;
            [v20 addOperation:v76];
            v40 = v20;
            v74[0] = 0;
            v74[1] = v74;
            v74[2] = 0x3032000000;
            v74[3] = sub_100005AA0;
            v74[4] = sub_10000B15C;
            v75 = 0;
            v71 = 0;
            v72[0] = 0;
            v72[1] = v72;
            v72[2] = 0x3032000000;
            v72[3] = sub_100005AA0;
            v72[4] = sub_10000B15C;
            v73 = 0;
            v70[0] = 0;
            v70[1] = v70;
            v70[2] = 0x3032000000;
            v70[3] = sub_100005AA0;
            v70[4] = sub_10000B15C;
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_1000EE664;
            v61[3] = &unk_100844F00;
            v66 = v72;
            v35 = v34;
            v62 = v35;
            v67 = v74;
            v23 = v21;
            v63 = v23;
            v24 = v36;
            v68 = v70;
            v69 = v83;
            v25 = *(a1 + 48);
            v37 = v24;
            v64 = v24;
            v65 = v25;
            [v20 addOperation:v61];
            v59[0] = 0;
            v59[1] = v59;
            v59[2] = 0x3032000000;
            v59[3] = sub_100005AA0;
            v59[4] = sub_10000B15C;
            v60 = 0;
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1005BAD58;
            v53[3] = &unk_10083F7B0;
            v26 = v23;
            v27 = *(a1 + 48);
            v54 = v26;
            v55 = v27;
            v56 = v70;
            v57 = v59;
            v58 = v83;
            [v20 addOperation:v53];
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_1000EEB98;
            v52[3] = &unk_100844F78;
            v52[6] = buf;
            v52[7] = v83;
            v52[4] = *(a1 + 48);
            v52[5] = v59;
            [v20 addOperation:v52];
            v28 = +[NSNull null];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1000EEDEC;
            v41[3] = &unk_100844FF0;
            v48 = v83;
            v49 = buf;
            v50 = v72;
            v42 = v33;
            v43 = v37;
            v44 = v26;
            v29 = v6;
            v30 = *(a1 + 48);
            v47 = v29;
            v45 = v30;
            v46 = v35;
            v51 = v70;
            v31 = [v40 evaluateWithInput:v28 completion:v41];

            v17 = v32;
            _Block_object_dispose(v59, 8);

            _Block_object_dispose(v70, 8);
            _Block_object_dispose(v72, 8);

            _Block_object_dispose(v74, 8);
            _Block_object_dispose(v83, 8);
          }

          else
          {
            if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
            {
              sub_1005BFCA4();
            }

            (v6[2])(v6, 1);
          }
        }

        else
        {

          (v6[2])(v6, 1);
        }
      }

      else
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_1005BFCD8();
        }

        (v6[2])(v6, 1);
      }
    }

    else
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1005BFD0C();
      }

      (v6[2])(v6, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1005BFBF8();
    }

    (v6[2])(v6, 1);
  }

  _Block_object_dispose(buf, 8);
}

void sub_1000EE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose((v67 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_1000EE23C(void *a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = PKSharingLoggableMailboxAddress();
    v6 = v5;
    v7 = @"N";
    if (a2)
    {
      v7 = @"Y";
    }

    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PDSharingManager: Handled outstanding message on %@ shouldDelete %@.", buf, 0x16u);
  }

  if (a2)
  {
    v8 = *(a1[5] + 24);
    v11 = a1[6];
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v8 insertOrUpdateSharingMessages:v9 storePayloads:0 transportIdentifier:a1[4]];
  }

  return [*(*(a1[7] + 8) + 40) invalidate];
}

void sub_1000EE37C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [*(a1 + 32) credentialShares];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        [v14 status];
        IsPending = PKShareStatusIsPending();
        v16 = v8;
        if ((IsPending & 1) == 0)
        {
          v16 = *(a1 + 40);
        }

        [v16 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [*(a1 + 32) copy];
    [v17 setCredentialShares:v8];
    v18 = *(a1 + 48);
    v35 = v17;
    v19 = [NSArray arrayWithObjects:&v35 count:1];
    v20 = *(a1 + 56);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000EE608;
    v26[3] = &unk_100844E88;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v25 = *(a1 + 64);
    v23 = *(&v25 + 1);
    *&v24 = v21;
    *(&v24 + 1) = v22;
    v27 = v24;
    v28 = v25;
    v30 = v7;
    v29 = v6;
    [v18 revokeShares:v19 forPass:v20 shouldCascade:0 completion:v26];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t sub_1000EE608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    [*(a1 + 32) setCredentialShares:*(a1 + 40)];
    [*(*(a1 + 48) + 24) addPassShare:*(a1 + 32) forPassUniqueIdentifier:*(a1 + 56)];
  }

  v5 = *(*(a1 + 72) + 16);

  return v5();
}

void sub_1000EE664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PKPassCredentialShare);
  [v8 setTargetDevice:2];
  [v8 setStatus:2];
  v9 = [*(a1 + 32) copy];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 64) + 8) + 40);
  v36 = v8;
  v13 = [NSArray arrayWithObjects:&v36 count:1];
  [v12 setCredentialShares:v13];

  v14 = [[PKPartialShareInvitation alloc] initWithShare:*(*(*(a1 + 64) + 8) + 40) pass:*(a1 + 40)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [*(*(*(a1 + 72) + 8) + 40) setSharingInvitationFlow:4];
  [*(*(*(a1 + 72) + 8) + 40) setRequestSource:2];
  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412290;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PDSharingManager: Attempting to create share for %@", buf, 0xCu);
  }

  v19 = *(a1 + 64);
  v20 = *(*(*(a1 + 72) + 8) + 40);
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000EE8C8;
  v28[3] = &unk_100844ED8;
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 56);
  v32 = v19;
  v33 = v24;
  v30 = v7;
  v31 = v23;
  v28[4] = v25;
  v29 = v6;
  v26 = v6;
  v27 = v7;
  [v21 createShareInvitationFromShare:v20 forPass:v22 authorization:0 completion:v28];
}

void sub_1000EE8C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
  v15 = v8;

  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  v19 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EEA08;
  block[3] = &unk_100844EB0;
  v24 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = *(a1 + 72);
  v23 = v20;
  v25 = v21;
  dispatch_async(v19, block);
}

void sub_1000EEA30(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    [*(*(*(a1 + 80) + 8) + 40) setHandle:*(a1 + 32) forInvite:*(a1 + 40)];
  }

  else
  {
    v9 = v7;
    if (!v7)
    {
      v9 = PDBasicError();
    }

    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v9);
    if (!v8)
    {
    }
  }

  v10 = *(*(a1 + 48) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EEB70;
  block[3] = &unk_100844EB0;
  v15 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = *(a1 + 88);
  v14 = v11;
  v16 = v12;
  dispatch_async(v10, block);
}

void sub_1000EEB98(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDSharingManager: Sending invitation for invitation request", buf, 2u);
  }

  v9 = [[PKSharingURLMessage alloc] initWithURL:*(*(a1[5] + 8) + 40)];
  v10 = *(*(a1[6] + 8) + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EECE8;
  v15[3] = &unk_100844F50;
  v11 = a1[7];
  v12 = a1[4];
  v17 = v7;
  v18 = v11;
  v15[4] = v12;
  v16 = v6;
  v13 = v6;
  v14 = v7;
  [v10 sendMessage:v9 completion:v15];
}

void sub_1000EECE8(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  v6 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EEDC4;
  block[3] = &unk_100844EB0;
  v11 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v10 = v7;
  v12 = v8;
  dispatch_async(v6, block);
}

void sub_1000EEDEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!*(*(*(a1 + 80) + 8) + 40) && ([v7 isCanceled] & 1) == 0 && !objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "isInvalid"))
  {
    if (*(*(*(a1 + 96) + 8) + 40))
    {
      sub_1005BFD40(a1, a1 + 96);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1005BFE14(a1 + 80, v9);
  }

  [*(*(*(a1 + 88) + 8) + 40) closeWithCompletion:0];
  if (!*(*(*(a1 + 96) + 8) + 40))
  {
LABEL_12:
    (*(*(a1 + 72) + 16))();
    goto LABEL_13;
  }

  if ([*(a1 + 32) count])
  {
    v10 = *(a1 + 40);
    v24 = *(*(*(a1 + 96) + 8) + 40);
    v11 = [NSArray arrayWithObjects:&v24 count:1];
    v12 = *(a1 + 48);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000EF07C;
    v21[3] = &unk_100844FA0;
    v23 = *(a1 + 96);
    v22 = *(a1 + 72);
    [v10 revokeShares:v11 forPass:v12 shouldCascade:0 completion:v21];

    v13 = v22;
  }

  else
  {
    v14 = *(a1 + 56);
    v15 = [*(a1 + 48) uniqueID];
    v16 = *(a1 + 96);
    v17 = *(*(v16 + 8) + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EF124;
    v18[3] = &unk_100844FC8;
    v20 = v16;
    v19 = *(a1 + 72);
    [v14 revokeShareForPassIdentifier:v15 share:v17 shouldCascade:0 completion:v18];

    v13 = v19;
  }

LABEL_13:
}

void sub_1000EF07C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1005BFE98();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000EF124(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1005BFF00();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000EF248(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7 && (*(a1 + 56) & 1) != 0)
    {
      [*(a1 + 32) didCreateAndStoreShare:*(a1 + 40) forCredentialShare:v7 pass:*(a1 + 48) transportIdentifier:v8];
    }

    [v7 setChannelTransportIdentifier:v8];
  }
}

void sub_1000EF2F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Device list: %@", buf, 0xCu);
  }

  v8 = PKSerialNumber();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Serial Number: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EF594;
  v11[3] = &unk_100845040;
  v9 = v8;
  v12 = v9;
  v10 = [v5 pk_objectsPassingTest:v11];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Remote Device List: %@", buf, 0xCu);
  }

  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Failed to check for paired watch with error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (![v10 count])
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Found paired watch on account", buf, 2u);
    }
  }

LABEL_15:
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000EF594(uint64_t a1, void *a2)
{
  v3 = [a2 serialNumber];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6] ^ 1;
    }
  }

  return v8;
}

void sub_1000EF708(uint64_t a1)
{
  if ([*(a1 + 32) count] > 1)
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v308 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [*(a1 + 32) count];
    if (v5 >= 3)
    {
      v6 = v5;
      v7 = 2;
      do
      {
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v7];
        if ([v8 hasPrefix:@"-"])
        {
          v9 = [v8 substringFromIndex:1];
          ++v7;
          v10 = @"1";
          if (v7 < v6)
          {
            v10 = [*(a1 + 32) objectAtIndexedSubscript:v7];
            if ([(__CFString *)v10 hasPrefix:@"-"])
            {

              v10 = @"1";
            }
          }

          [v4 setObject:v10 forKeyedSubscript:v9];
        }

        else
        {
          ++v7;
        }
      }

      while (v7 != v6);
    }

    v11 = [v4 objectForKeyedSubscript:@"pid"];
    v12 = v11;
    if (v11 == @"*" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"*"], v12, (v13 & 1) != 0))
    {
      *v312 = 0u;
      v313 = 0u;
      *v310 = 0u;
      v311 = 0u;
      v14 = [*(*(a1 + 40) + 24) passesOfType:1];
      v15 = [v14 countByEnumeratingWithState:v310 objects:&v314 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v311;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v311 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(v310[1] + 8 * i);
            if (([v19 supportsFeatureForCurrentDevice:1] & 1) != 0 || objc_msgSend(v19, "isCarKeyPass"))
            {
              v20 = [v19 uniqueID];

              v12 = v20;
              goto LABEL_28;
            }
          }

          v16 = [v14 countByEnumeratingWithState:v310 objects:&v314 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_28:
    }

    v21 = v308;
    v22 = v3;
    v23 = v22;
    if (v22 == @"mailbox")
    {
      goto LABEL_32;
    }

    if (!v22)
    {
      goto LABEL_125;
    }

    v24 = [(__CFString *)v22 isEqualToString:@"mailbox"];

    if (v24)
    {
LABEL_32:
      v25 = v308;
      if (v25 == @"list")
      {
        goto LABEL_96;
      }

      v32 = v25;
      if (!v25)
      {
LABEL_47:
        if (!PKEqualObjects())
        {
          v58 = v32;
          if (v58 == @"ping")
          {
            goto LABEL_102;
          }

          if (v32)
          {
            v59 = v58;
            v60 = [(__CFString *)v58 isEqualToString:@"ping"];

            if (!v60)
            {
              v61 = v59;
              if (v61 == @"pushToken" || (v62 = v61, v63 = [(__CFString *)v61 isEqualToString:@"pushToken"], v62, v63))
              {
                v64 = *(a1 + 40);
                v65 = [v4 objectForKeyedSubscript:@"env"];
                sub_1005BBBCC(v64, v65, *(a1 + 48), v66, v67, v68, v69, v70, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
LABEL_160:

                goto LABEL_161;
              }

              goto LABEL_125;
            }

LABEL_102:
            v65 = [v4 objectForKeyedSubscript:@"id"];
            sub_1005BBAE8();
            goto LABEL_160;
          }

          goto LABEL_125;
        }

        sub_1005BB8CC(*(a1 + 40), *(a1 + 48));
LABEL_161:

        return;
      }

      v33 = [(__CFString *)v25 isEqualToString:@"list"];

      if (v33)
      {
LABEL_96:
        sub_1005BAF04(*(a1 + 40), *(a1 + 48), v26, v27, v28, v29, v30, v31, v291, v292, v293, v295);
        goto LABEL_161;
      }

      v34 = v32;
      if (v34 == @"create" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"create"], v35, v36))
      {
        v137 = *(a1 + 40);
        v138 = [v4 objectForKeyedSubscript:@"type"];
        v139 = [v4 objectForKeyedSubscript:@"payload"];
        v140 = [v4 objectForKeyedSubscript:@"stateful"];
        v141 = [v4 objectForKeyedSubscript:@"region"];
        sub_1005BB060(v137, v138, v139, v140 != 0, v141, *(a1 + 48));

LABEL_101:
        v21 = v308;
        goto LABEL_161;
      }

      v37 = v35;
      if (v37 != @"store")
      {
        v38 = v37;
        v39 = [(__CFString *)v37 isEqualToString:@"store"];

        if (!v39)
        {
          v40 = v38;
          v21 = v308;
          if (v40 == @"get" || (v41 = v40, v42 = [(__CFString *)v40 isEqualToString:@"get"], v41, v42))
          {
            v149 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"id"];
            sub_1005BB420(v149, v65, *(a1 + 48), v150, v151, v152, v153, v154, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
            goto LABEL_160;
          }

          v43 = v41;
          if (v43 == @"relinquish" || (v44 = v43, v45 = [(__CFString *)v43 isEqualToString:@"relinquish"], v44, v45))
          {
            v155 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"id"];
            sub_1005BB548(v155, v65, *(a1 + 48), v156, v157, v158, v159, v160, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
            goto LABEL_160;
          }

          v46 = v44;
          if (v46 == @"delete" || (v47 = v46, v48 = [(__CFString *)v46 isEqualToString:@"delete"], v47, v48))
          {
            v161 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"id"];
            sub_1005BB664(v161, v65, *(a1 + 48));
            goto LABEL_160;
          }

          v49 = v47;
          if (v49 == @"delete_all" || (v56 = v49, v57 = [(__CFString *)v49 isEqualToString:@"delete_all"], v56, v57))
          {
            sub_1005BB7A4(*(a1 + 40), *(a1 + 48), v50, v51, v52, v53, v54, v55, v291, v292, v293, v295);
            goto LABEL_161;
          }

          goto LABEL_47;
        }
      }

      v142 = *(a1 + 40);
      v143 = [v4 objectForKeyedSubscript:@"id"];
      v144 = [v4 objectForKeyedSubscript:@"payload"];
      sub_1005BB258(v142, v143, v144, *(a1 + 48), v145, v146, v147, v148, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1], v313, *(&v313 + 1), v314, v315);
      goto LABEL_99;
    }

    v71 = v23;
    if (v71 == @"ids" || (v72 = v71, v73 = [(__CFString *)v71 isEqualToString:@"ids"], v72, v73))
    {
      v74 = v308;
      if (v74 == @"devices" || (v75 = v74) != 0 && (v76 = [(__CFString *)v74 isEqualToString:@"devices"], v75, v76))
      {
        sub_1005BBCB8(*(a1 + 40), *(a1 + 48));
        goto LABEL_161;
      }

      if (PKEqualObjects())
      {
        sub_1005BBD48(*(a1 + 40), *(a1 + 48), v77, v78, v79, v80, v81, v82, v291, v292, v293, v295);
        goto LABEL_161;
      }

      v83 = v75;
      if (v83 != @"store")
      {
        if (!v75)
        {
          goto LABEL_125;
        }

        v84 = v83;
        v85 = [(__CFString *)v83 isEqualToString:@"store"];

        if (!v85)
        {
          v86 = v84;
          if (v86 != @"listen")
          {
            v87 = v86;
            v88 = [(__CFString *)v86 isEqualToString:@"listen"];

            if (!v88)
            {
              v89 = v87;
              if (v89 == @"close" || (v90 = v89, v91 = [(__CFString *)v89 isEqualToString:@"close"], v90, v91))
              {
                v92 = *(a1 + 40);
                v65 = [v4 objectForKeyedSubscript:@"sid"];
                sub_1005BC278(v92, v65, *(a1 + 48), v93, v94, v95, v96, v97, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
                goto LABEL_160;
              }

              goto LABEL_125;
            }
          }

          v65 = [v4 objectForKeyedSubscript:@"sid"];
          v185 = [v4 objectForKeyedSubscript:@"timeout"];
          sub_1005BC0E8();
          goto LABEL_159;
        }
      }

      v65 = [v4 objectForKeyedSubscript:@"id"];
      v185 = [v4 objectForKeyedSubscript:@"sid"];
      v186 = [v4 objectForKeyedSubscript:@"payload"];
      sub_1005BBEA4();
LABEL_129:

      v21 = v308;
      goto LABEL_159;
    }

    v98 = v72;
    if (v98 == @"share" || (v99 = v98, v100 = [(__CFString *)v98 isEqualToString:@"share"], v99, v100))
    {
      v101 = v308;
      if (v101 == @"get")
      {
        goto LABEL_140;
      }

      v102 = v101;
      if (!v101)
      {
        goto LABEL_125;
      }

      v103 = [(__CFString *)v101 isEqualToString:@"get"];

      if (v103)
      {
LABEL_140:
        v202 = *(a1 + 40);
        v65 = [v4 objectForKeyedSubscript:@"mid"];
        v185 = [v4 objectForKeyedSubscript:@"key"];
        sub_1005BC398(v202, v65, v185, *(a1 + 48), v203, v204, v205, v206, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
        goto LABEL_159;
      }

      v104 = v102;
      if (v104 == @"prewarm" || (v105 = v104, v106 = [(__CFString *)v104 isEqualToString:@"prewarm"], v105, v106))
      {
        sub_1005BC46C(*(a1 + 40), v12);
        goto LABEL_161;
      }

      v107 = v105;
      if (v107 == @"create" || (v108 = v107, v109 = [(__CFString *)v107 isEqualToString:@"create"], v108, v109))
      {
        v65 = [v4 objectForKeyedSubscript:@"n"];
        v185 = [v4 objectForKeyedSubscript:@"car"];
        sub_1005BC518();
        goto LABEL_159;
      }

      v110 = v108;
      if (v110 == @"createMockEmbedded" || (v111 = v110, v112 = [(__CFString *)v110 isEqualToString:@"createMockEmbedded"], v111, v112))
      {
        sub_1005BC890(*(a1 + 40), v12, *(a1 + 48));
        goto LABEL_161;
      }

      v113 = v111;
      if (v113 == @"update" || (v114 = v113, v115 = [(__CFString *)v113 isEqualToString:@"update"], v114, v115))
      {
        v213 = *(a1 + 40);
        v65 = [v4 objectForKeyedSubscript:@"sid"];
        sub_1005BC9F4(v213, v12, v65, *(a1 + 48), v214, v215, v216, v217, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
        goto LABEL_160;
      }

      v116 = v114;
      if (v116 == @"revoke" || (v117 = v116, v118 = [(__CFString *)v116 isEqualToString:@"revoke"], v117, v118))
      {
        v218 = *(a1 + 40);
        v65 = [v4 objectForKeyedSubscript:@"sid"];
        sub_1005BCB34(v218, v12, v65, *(a1 + 48), v219, v220, v221, v222, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
        goto LABEL_160;
      }

      v119 = v117;
      if (v119 != @"createSingleUse")
      {
        v120 = v119;
        v121 = [(__CFString *)v119 isEqualToString:@"createSingleUse"];

        if (!v121)
        {
          v122 = v120;
          if (v122 == @"accept" || (v123 = v122, v124 = [(__CFString *)v122 isEqualToString:@"accept"], v123, v124))
          {
            v306 = *(a1 + 40);
            v303 = [v4 objectForKeyedSubscript:@"url"];
            v225 = [v4 objectForKeyedSubscript:@"background"];
            v300 = [v225 BOOLValue];
            v226 = [v4 objectForKeyedSubscript:@"resolve"];
            v227 = [v226 BOOLValue];
            v228 = [v4 objectForKeyedSubscript:@"activationCode"];
            v229 = [v4 objectForKeyedSubscript:@"activationType"];
            v230 = [v4 objectForKeyedSubscript:@"salt"];
            v231 = *(a1 + 48);
            v184 = v303;
            sub_1005BCDCC(v306, v303, v300, v227, v228, v229, v230, v231, v291, v292, v293, v295, v296, v297, v300, v303, v306, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1], v313, *(&v313 + 1), v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);

            v21 = v309;
            goto LABEL_126;
          }

          v125 = v123;
          if (v125 == @"reject" || (v126 = v125, v127 = [(__CFString *)v125 isEqualToString:@"reject"], v126, v127))
          {
            v232 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"url"];
            sub_1005BD118(v232, v65, *(a1 + 48));
            goto LABEL_160;
          }

          v128 = v126;
          if (v128 == @"deviceCheck" || (v129 = v128, v130 = [(__CFString *)v128 isEqualToString:@"deviceCheck"], v129, v130))
          {
            v233 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"type"];
            sub_1005BD18C(v233, v65);
            goto LABEL_160;
          }

          v131 = v129;
          if (v131 != @"requestInvitation")
          {
            v132 = v131;
            v133 = [(__CFString *)v131 isEqualToString:@"requestInvitation"];

            if (!v133)
            {
              v134 = v132;
              if (v134 != @"requestLateInvitation")
              {
                v135 = v134;
                v136 = [(__CFString *)v134 isEqualToString:@"requestLateInvitation"];

                if (!v136)
                {
                  goto LABEL_125;
                }
              }

              sub_1005BD3E4(*(a1 + 40), v12, *(a1 + 48));
              goto LABEL_161;
            }
          }

          v235 = *(a1 + 40);
          v65 = [v4 objectForKeyedSubscript:@"from"];
          v185 = [v4 objectForKeyedSubscript:@"type"];
          v186 = [v4 objectForKeyedSubscript:@"serial"];
          v236 = [v4 objectForKeyedSubscript:@"vehicle"];
          sub_1005BD254(v235, v65, v185, v186, v236, *(a1 + 48));

          goto LABEL_129;
        }
      }

      v223 = *(a1 + 40);
      v143 = [v4 objectForKeyedSubscript:@"payload"];
      v144 = [v4 objectForKeyedSubscript:@"title"];
      v224 = [v4 objectForKeyedSubscript:@"ttl"];
      if (v224)
      {
        v243 = [v4 objectForKeyedSubscript:@"ttl"];
        sub_1005BCC60(v223, v143, v144, [v243 integerValue], *(a1 + 48));
      }

      else
      {
        sub_1005BCC60(v223, v143, v144, 604800, *(a1 + 48));
      }

LABEL_99:
LABEL_100:

      goto LABEL_101;
    }

    v162 = v99;
    if (v162 == @"shares" || (v163 = v162, v164 = [(__CFString *)v162 isEqualToString:@"shares"], v163, v164))
    {
      v165 = v308;
      if (v165 == @"list")
      {
        goto LABEL_155;
      }

      v166 = v165;
      if (!v165)
      {
LABEL_117:
        if (PKEqualObjects())
        {
          sub_1005BE150(*(a1 + 40), v12);
          goto LABEL_161;
        }

        v174 = v166;
        if (v174 != @"check")
        {
          if (!v166)
          {
            goto LABEL_125;
          }

          v175 = v174;
          v176 = [(__CFString *)v174 isEqualToString:@"check"];

          if (!v176)
          {
            v177 = v175;
            if (v177 == @"exist" || (v178 = v177, v179 = [(__CFString *)v177 isEqualToString:@"exist"], v178, v179))
            {
              sub_1005BE41C(*(a1 + 40), *(a1 + 48));
              goto LABEL_161;
            }

            v180 = v178;
            if (v180 == @"set" || (v181 = v180, v182 = [(__CFString *)v180 isEqualToString:@"set"], v181, v182))
            {
              v261 = *(a1 + 40);
              v65 = [v4 objectForKeyedSubscript:@"limit"];
              sub_1005BE4BC(v261, v12, [v65 integerValue], *(a1 + 48));
              goto LABEL_160;
            }

            goto LABEL_125;
          }
        }

        v234 = *(a1 + 40);
        v65 = [v4 objectForKeyedSubscript:@"mid"];
        v185 = [v4 objectForKeyedSubscript:@"force"];
        sub_1005BE29C(v234, v65, (v185 != 0), *(a1 + 48));
LABEL_159:

        goto LABEL_160;
      }

      v167 = [(__CFString *)v165 isEqualToString:@"list"];

      if (v167)
      {
LABEL_155:
        sub_1005BD65C(*(a1 + 40), v12);
        goto LABEL_161;
      }

      v168 = v166;
      if (v168 == @"mockPassUpdate" || (v169 = v168, v170 = [(__CFString *)v168 isEqualToString:@"mockPassUpdate"], v169, v170))
      {
        v237 = *(a1 + 40);
        v301 = [v4 objectForKeyedSubscript:@"status"];
        v298 = [v4 objectForKeyedSubscript:@"entitlement"];
        v307 = [v4 objectForKeyedSubscript:@"add"];
        v304 = [v4 objectForKeyedSubscript:@"remove"];
        v238 = [v4 objectForKeyedSubscript:@"sid"];
        v239 = [v4 objectForKeyedSubscript:@"count"];
        v240 = [v239 integerValue];
        v241 = [v4 objectForKeyedSubscript:@"name"];
        v242 = [v4 objectForKeyedSubscript:@"role"];
        v294 = *(a1 + 48);
        v184 = v301;
        sub_1005BD75C(v237, v12, v301, v298, v307 != 0, v304 != 0, v238, v240, v241, v242, v294);

        v21 = v308;
        goto LABEL_126;
      }

      v171 = v169;
      if (v171 != @"listPending")
      {
        v172 = v171;
        v173 = [(__CFString *)v171 isEqualToString:@"listPending"];

        if (!v173)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v187 = v163;
      if (v187 == @"entitlements" || (v188 = v187, v189 = [(__CFString *)v187 isEqualToString:@"entitlements"], v188, v189))
      {
        v190 = v308;
        if (v190 == @"list")
        {
          goto LABEL_180;
        }

        v196 = v190;
        if (!v190)
        {
          goto LABEL_161;
        }

        v197 = [(__CFString *)v190 isEqualToString:@"list"];

        if (v197)
        {
LABEL_180:
          sub_1005BE6FC(*(a1 + 40), v12, *(a1 + 48), v191, v192, v193, v194, v195, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1], v313, *(&v313 + 1), v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
          goto LABEL_161;
        }

        v198 = v196;
        if (v198 != @"role")
        {
          v199 = v198;
          v200 = [(__CFString *)v198 isEqualToString:@"role"];

          if (!v200)
          {
            goto LABEL_161;
          }
        }

        v201 = *(a1 + 40);
        v65 = [v4 objectForKeyedSubscript:@"hex"];
        v185 = [v4 objectForKeyedSubscript:@"int"];
        sub_1005BE874(v201, v65, v185, *(a1 + 48));
        goto LABEL_159;
      }

      v207 = v188;
      if (v207 == @"monitor" || (v208 = v207, v209 = [(__CFString *)v207 isEqualToString:@"monitor"], v208, v209))
      {
        v210 = v308;
        if (v210 == @"disable" || (v211 = v210) != 0 && (v212 = [(__CFString *)v210 isEqualToString:@"disable"], v211, v212))
        {
          sub_1005BED80(*(a1 + 40), *(a1 + 48));
          goto LABEL_161;
        }

        goto LABEL_125;
      }

      v244 = v208;
      if (v244 != @"activation")
      {
        v245 = v244;
        v246 = [(__CFString *)v244 isEqualToString:@"activation"];

        if (!v246)
        {
          v262 = v245;
          if (v262 == @"coms" || (v263 = v262, v264 = [(__CFString *)v262 isEqualToString:@"coms"], v263, v264))
          {
            v265 = v308;
            if (v265 == @"entitlementChange" || (v266 = v265) != 0 && (v267 = [(__CFString *)v265 isEqualToString:@"entitlementChange"], v266, v267))
            {
              sub_1005BF0A4(*(a1 + 40), v12, *(a1 + 48));
              goto LABEL_161;
            }

            goto LABEL_125;
          }

          v268 = v263;
          if (v268 != @"ltpk")
          {
            v269 = v268;
            v270 = [(__CFString *)v268 isEqualToString:@"ltpk"];

            if (!v270)
            {
LABEL_125:
              v183 = *(a1 + 48);
              (*(v183 + 16))(v183, v184);
LABEL_126:

              goto LABEL_161;
            }
          }

          v271 = v308;
          if (v271 == @"create")
          {
            goto LABEL_202;
          }

          v272 = v271;
          v21 = v308;
          if (!v271)
          {
            goto LABEL_125;
          }

          v273 = [(__CFString *)v271 isEqualToString:@"create"];

          if (v273)
          {
LABEL_202:
            v287 = *(a1 + 40);
            v143 = [v4 objectForKeyedSubscript:@"groupId"];
            sub_1005BF198(v287, v143);
            goto LABEL_100;
          }

          v274 = v272;
          if (v274 == @"list" || (v275 = v274, v276 = [(__CFString *)v274 isEqualToString:@"list"], v275, v276))
          {
            v143 = [v4 objectForKeyedSubscript:@"groupId"];
            v144 = [v4 objectForKeyedSubscript:@"keyId"];
            sub_1005BF260();
          }

          else
          {
            v277 = v275;
            if (v277 == @"encrypt" || (v278 = v277, v279 = [(__CFString *)v277 isEqualToString:@"encrypt"], v278, v279))
            {
              v288 = *(a1 + 40);
              v143 = [v4 objectForKeyedSubscript:@"scheme"];
              v144 = [v4 objectForKeyedSubscript:@"key"];
              v289 = [v4 objectForKeyedSubscript:@"data"];
              sub_1005BF5F0(v288, v143, v144, v289, *(a1 + 48));
            }

            else
            {
              v280 = v278;
              if (v280 != @"decrypt")
              {
                v281 = v280;
                v282 = [(__CFString *)v280 isEqualToString:@"decrypt"];

                if (!v282)
                {
                  v283 = v281;
                  v21 = v308;
                  if (v283 == @"invalidate" || (v284 = v283, v285 = [(__CFString *)v283 isEqualToString:@"invalidate"], v284, v285))
                  {
                    sub_1005BF9A8(*(a1 + 40), v12, *(a1 + 48));
                    goto LABEL_161;
                  }

                  goto LABEL_125;
                }
              }

              v290 = *(a1 + 40);
              v143 = [v4 objectForKeyedSubscript:@"data"];
              v144 = [v4 objectForKeyedSubscript:@"groupIdentifier"];
              sub_1005BF7A8(v290, v143, v144, *(a1 + 48));
            }
          }

          goto LABEL_99;
        }
      }

      v247 = v308;
      if (v247 != @"list")
      {
        v248 = v247;
        if (!v247)
        {
          goto LABEL_125;
        }

        v249 = [(__CFString *)v247 isEqualToString:@"list"];

        if (!v249)
        {
          v250 = v248;
          if (v250 == @"get" || (v251 = v250, v252 = [(__CFString *)v250 isEqualToString:@"get"], v251, v252))
          {
            v286 = *(a1 + 40);
            v65 = [v4 objectForKeyedSubscript:@"sid"];
            sub_1005BEF00(v286, v65);
            goto LABEL_160;
          }

          v253 = v251;
          if (v253 != @"enter")
          {
            v254 = v253;
            v255 = [(__CFString *)v253 isEqualToString:@"enter"];

            if (!v255)
            {
              goto LABEL_125;
            }
          }

          v256 = *(a1 + 40);
          v65 = [v4 objectForKeyedSubscript:@"sid"];
          v185 = [v4 objectForKeyedSubscript:@"code"];
          sub_1005BEFBC(v256, v65, v185, *(a1 + 48), v257, v258, v259, v260, v291, v292, v293, v295, v296, v297, v299, v302, v305, v308, v310[0], v310[1], v311, *(&v311 + 1), v312[0], v312[1]);
          goto LABEL_159;
        }
      }
    }

    sub_1005BE0BC(*(a1 + 40), *(a1 + 48));
    goto LABEL_161;
  }

  v2 = *(*(a1 + 48) + 16);

  v2();
}

void sub_1000F0FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSMutableString alloc];
  v6 = [*(a1 + 32) transportIdentifier];
  v7 = [v5 initWithFormat:@"Mailbox %@ created for message: \n%@", v6, *(a1 + 40)];

  if (v4)
  {
    [v7 appendFormat:@"\nError: %@", v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(PDShareURLDecorationConfiguration);
    v9 = v8;
    v10 = *(a1 + 56);
    v11 = 1;
    if (v10 == 4)
    {
      v11 = 2;
    }

    if (v10 == 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = v11;
    }

    [(PDShareURLDecorationConfiguration *)v8 setVertical:v12];
    v13 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F1114;
    v14[3] = &unk_100844980;
    v15 = v7;
    v16 = *(a1 + 48);
    [v13 universalShareURLWithDecoration:v9 completion:v14];
  }
}

uint64_t sub_1000F1114(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendFormat:@"\n\nSuccess! Share url: %@", a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000F116C(void *a1, int a2, uint64_t a3)
{
  v3 = a1[6];
  v4 = @"N";
  if (a2)
  {
    v4 = @"Y";
  }

  v5 = [NSString stringWithFormat:@"Message sent to mailbox %@\nMessage: %@\nResult: Success %@ Error: %@", a1[4], a1[5], v4, a3];
  (*(v3 + 16))(v3, v5);
}

void sub_1000F1200(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = [NSString stringWithFormat:@"Fetches messages from mailbox %@ \nError: %@", *(a1 + 32), a3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F1308;
    v7[3] = &unk_1008450B8;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 32);
    [v4 handleOutstandingMessage:v7];
  }
}

void sub_1000F1308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [NSString stringWithFormat:@"Fetches messages from mailbox %@ \nMessage: %@", *(a1 + 32), a2];
  (*(v2 + 16))(v2, v3);
}

void sub_1000F137C(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3 || (a2 & 1) == 0)
  {
    [NSString stringWithFormat:@"Failed to relinquish mailbox %@ \nError: %@", v3, a3];
  }

  else
  {
    [NSString stringWithFormat:@"Relinquished mailbox %@", v3, v5];
  }
  v6 = ;
  (*(v4 + 16))(v4);
}

void sub_1000F1408(void *a1, int a2, uint64_t a3)
{
  v4 = a1[7];
  v5 = @"N";
  if (a2)
  {
    v5 = @"Y";
  }

  v6 = [NSString stringWithFormat:@"Mailbox %@ deleted\n\nResult: Success %@ Error: %@", a1[4], v5, a3];
  (*(v4 + 16))(v4, v6);

  v7 = a1[6];
  v8 = *(a1[5] + 8);
  v9 = [v7 transportIdentifier];
  [v8 channelEndpointWasTerminatedRemotely:v9];
}

void sub_1000F14CC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = @"No";
  if (a2)
  {
    v4 = @"Yes";
  }

  v5 = [NSString stringWithFormat:@"\nPinged endpoint '%@'\n\nSucces: %@\nError: %@\n\n", *(a1 + 32), v4, a3];
  (*(v3 + 16))(v3, v5);
}

void sub_1000F155C(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 hexEncoding];
  v7 = [[NSMutableString alloc] initWithString:@"\nGenerated Push Token\n"];
  if (a1[6])
  {
    v8 = PKSharingRelayServerEnvironmentToString();
    [v7 appendFormat:@"Environment: %@\n", v8];
  }

  else
  {
    v8 = PKSharingRelayServerEnvironmentToString();
    PKSharingResolvedRelayServerEnvironment();
    v9 = PKSharingRelayServerEnvironmentToString();
    [v7 appendFormat:@"Environment: %@ (%@)\n", v8, v9];
  }

  [v7 appendFormat:@"Topic: %@\n\n", a1[4]];
  if (v6)
  {
    [v7 appendFormat:@"Hex Token: %@\n", v6];
    v10 = [v11 base64EncodedStringWithOptions:0];
    [v7 appendFormat:@"Base64 Token: %@\n", v10];
  }

  else
  {
    [v7 appendFormat:@"Error: %@\n", v5];
  }

  [v7 appendFormat:@"\n"];
  (*(a1[5] + 16))();
}

void sub_1000F16F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[NSMutableString alloc] initWithString:@"\nDevices:\n"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) name];
          v11 = IDSCopyIDForDevice();
          [v4 appendFormat:@"Device: %@ \n\tDestination: '%@'\n\n", v10, v11, v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000F1884(void *a1, int a2, uint64_t a3)
{
  v3 = a1[6];
  v4 = @"N";
  if (a2)
  {
    v4 = @"Y";
  }

  v5 = [NSString stringWithFormat:@"Message sent to IDS device %@\nMessage: %@\nResult: Success %@ Error: %@", a1[4], a1[5], v4, a3];
  (*(v3 + 16))(v3, v5);
}

void sub_1000F1918(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSString alloc] initWithFormat:@"\nReceived message: %@\n", v6];

  (*(*(a1 + 32) + 16))();
  v5[2](v5, 1, 1);
}

uint64_t sub_1000F19C8(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = @"Handle timed out waiting for message";
  }

  else
  {
    v3 = @"Handle was invalidated";
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_1000F19F0(uint64_t a1, int a2)
{
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 40);
  v5 = @"No";
  if (a2)
  {
    v5 = @"Yes";
  }

  v6 = [NSString stringWithFormat:@"Closed session: %@", v5];
  (*(v4 + 16))(v4, v6);
}

void sub_1000F1A88(uint64_t a1)
{
  v2 = [PKSharingRelayChannelDescriptor existingChannelForMailboxIdentifier:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 136) handleForDescriptor:v2 queue:*(*(a1 + 40) + 88)];
  if (v3)
  {
    sub_1005BFF68((a1 + 40), &v4, a1, v3);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000F1B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [NSString stringWithFormat:@"Found valid invitation: %@", a2];
  }

  else
  {
    [NSString stringWithFormat:@"Unable to find valid invitation. Error: %@", a3];
  }
  v4 = ;
  (*(v3 + 16))(v3);
}

void sub_1000F1BAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = @"Failure";
  if (a2)
  {
    v3 = @"Success";
  }

  v4 = [NSString stringWithFormat:@"\nFinished prewarming create share with result: %@\n", v3];
  (*(v2 + 16))(v2, v4);
}

void sub_1000F1C34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  v6 = [v4 passWithUniqueIdentifier:v3];
  v7 = [v6 secureElementPass];

  v8 = [[PKPartialShareInvitation alloc] initWithShare:*(a1 + 48) pass:v7];
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F1D4C;
  v10[3] = &unk_1008451E8;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v9 createShareForPartialShareInvitation:v8 authorization:v5 completion:v10];
}

void sub_1000F1D4C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v6 = [NSString stringWithFormat:@"Unable to create share error: %@", a3];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = [a2 url];
    v5 = [NSString stringWithFormat:@"Created share for %@\n\n%@", v4, v6];
    (*(v3 + 16))(v3, v5);
  }
}

void sub_1000F1E14(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && !v5 && ([*(a1 + 32) externalizedContext], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    v9 = *(a1 + 40);
    v7 = [NSString stringWithFormat:@"Unable to get auth with error: %@", v5];
    v8 = *(v9 + 16);
  }

  v8();
}

id sub_1000F1EDC()
{
  v0 = [PKSharingMessageDisplayInformation alloc];
  v1 = [[NSURL alloc] initWithString:@"https://cdn.macsfera.com/wp-content/uploads/2017/09/14170027/Keynote-Lets-meet-at-our-place.jpg"];
  v2 = [v0 initWithTitle:@"Car Key" subtitle:@"Car Key" imageURL:v1];

  v3 = [PKSharingCarKeyInvitation alloc];
  v4 = [@"AAAA" pk_decodeHexadecimal];
  v5 = objc_alloc_init(NSUUID);
  v6 = [v5 UUIDString];
  v7 = [v3 initWithRawInvite:v4 shareIdentifier:v6 radioTechnology:3 vehicleModel:@"CarModel" vehicleIssuer:@"CarMake" readerIdentifier:@"AAAAA" partnerIdentifier:@"V.MOCK.USM" brandIdentifier:@"BRND" carKeySharingDict:&__NSDictionary0__struct proprietaryData:0 activationOptions:0 displayInformation:v2];

  return v7;
}

void sub_1000F2014(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v6 = [NSString stringWithFormat:@"Failed to create embedded share url: %@", a3];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = [a2 url];
    v5 = [NSString stringWithFormat:@"Created mock share for %@\n\n\n%@", v4, v6];
    (*(v3 + 16))(v3, v5);
  }
}

void sub_1000F20DC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  if (a3)
  {
    [NSString stringWithFormat:@"Unable to edit share error: %@", a3, v4];
  }

  else
  {
    [NSString stringWithFormat:@"Updated share for %@ to: %@", a1[4], a1[5]];
  }
  v5 = ;
  (*(v3 + 16))(v3);
}

void sub_1000F2168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    [NSString stringWithFormat:@"Unable to revoke share error: %@", a3];
  }

  else
  {
    [NSString stringWithFormat:@"Revoked share for %@", *(a1 + 32)];
  }
  v4 = ;
  (*(v3 + 16))(v3);
}

void sub_1000F21F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = [NSString stringWithFormat:@"Message:%@\n\nshareURL: %@\nerror:%@", *(a1 + 32), a2, a3];
  (*(v3 + 16))(v3, v4);
}

void sub_1000F226C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 88) == 1)
    {
      v7 = [[PKPendingStatefulTransferProvisioning alloc] initWithTransportIdentifier:*(a1 + 32) invitation:v5 share:*(a1 + 40)];
      [v7 setOriginalShareURL:*(a1 + 48)];
      [v7 setAccountAttestationAnonymizationSalt:*(a1 + 56)];
      [v7 setShouldAutoProvision:1];
      v8 = *(a1 + 64);
      v20 = v7;
      v9 = [NSArray arrayWithObjects:&v20 count:1];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000F248C;
      v17[3] = &unk_10083F350;
      v10 = *(a1 + 80);
      v18 = v7;
      v19 = v10;
      v11 = v7;
      [v8 addPendingProvisionings:v9 completion:v17];
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000F254C;
      v15[3] = &unk_100845288;
      v14 = *(a1 + 72);
      v16 = *(a1 + 80);
      [v14 acceptCarKeyShareForMessage:v5 activationCode:0 completion:v15];
    }
  }

  else
  {
    v12 = *(a1 + 80);
    v13 = [NSString stringWithFormat:@"Unable to retrieve share, %@", v6];
    (*(v12 + 16))(v12, v13);
  }
}

void sub_1000F248C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = [NSString stringWithFormat:@"Failed to queue pending provisioning with error: %@", a2];
    (*(v2 + 16))(v2);
  }

  else
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v3 = [NSString stringWithFormat:@"Queued pending provisioning with identifier: %@", v4];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1000F254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"Accepted share response: %@, error: %@", a2, a3];
  (*(v3 + 16))(v3, v4);
}

void sub_1000F25BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = [NSString stringWithFormat:@"Failed to queue pending provisioning with error: %@", a2];
    (*(v2 + 16))(v2);
  }

  else
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v3 = [NSString stringWithFormat:@"Queued pending provisioning with identifier: %@", v4];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1000F267C(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    v3 = *(a1 + 40);
    v4 = [[NSString alloc] initWithFormat:*(&off_100845560 + a2), *(a1 + 32)];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1000F2710(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSString stringWithFormat:@"Failed to send message with error %@", a3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F2844;
    v7[3] = &unk_10083DCB8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v4 = objc_retainBlock(v7);
    if ([*(a1 + 32) hasOutstandingMessage])
    {
      (v4[2])(v4);
    }

    else
    {
      [*(a1 + 32) setMessageReceivedHandler:v4];
    }
  }
}

void sub_1000F2844(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F28E4;
  v3[3] = &unk_1008450B8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 handleOutstandingMessage:v3];
}

id sub_1000F28E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a2;
  v5(a3, 1);
  v7 = *(a1 + 40);
  v8 = [NSString stringWithFormat:@"Received invitation %@", v6];

  (*(v7 + 16))(v7, v8);
  v9 = *(a1 + 32);

  return [v9 invalidate];
}

void sub_1000F2990(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [NSString stringWithFormat:@"Failed to send message with error %@", a3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F2AFC;
    v10[3] = &unk_100845198;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F2BA8;
    v7[3] = &unk_10083FAD0;
    v9 = *(a1 + 40);
    v8 = *(a1 + 32);
    [v4 waitForMessageWithTimeout:v10 messageHandler:v7 invalidationHandler:300.0];
  }
}

void sub_1000F2AFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a2;
  v5(a3, 1, 1);
  v7 = *(a1 + 32);
  v8 = [NSString stringWithFormat:@"\n\nReceived invitation: %@\n", v6];

  (*(v7 + 16))(v7, v8);
}

uint64_t sub_1000F2BA8(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = @"\nTimed out waiting for response\n";
  }

  else
  {
    v3 = @"\nHandle invalidated\n";
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_1000F2BD0(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 32);
  v4 = @"nil";
  if (a2)
  {
    v4 = a2;
  }

  [v3 appendFormat:@"%@", v4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2CB8;
  v7[3] = &unk_100844A68;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v5 displayableEntitlementsForPassIdentifier:v6 completion:v7];
}

uint64_t sub_1000F2CB8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 appendFormat:@"\n\nEntitlements for %@:\n", v4];
  v6 = a1[4];
  v7 = [v5 description];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"nil";
  }

  [v6 appendString:v8];

  v9 = *(a1[6] + 16);

  return v9();
}

uint64_t sub_1000F2D5C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6] ^ 1;
    }
  }

  return v8;
}

void sub_1000F2DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDSharingManager CLI: Revoked %@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 24) updatePassSharesForPassUniqueIdentifier:*(a1 + 48) passShares:0];
  v7 = *(a1 + 56);
  if (v7)
  {
    [*(a1 + 40) passUpdated:v7 oldShares:*(a1 + 32)];
  }

  v8 = *(a1 + 64);
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Removed %lu shares on pass %@", [*(a1 + 32) count], *(a1 + 48));
  (*(v8 + 16))(v8, v9);
}

void sub_1000F2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 48);
    v5 = [NSString stringWithFormat:@"Fetches messages from mailbox %@ \nError: %@", *(a1 + 32), a3];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F3014;
    v6[3] = &unk_100845378;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 handleOutstandingMessage:v6];
  }
}

void sub_1000F3014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3, 1);
  v5 = *(a1 + 32);
  v6 = @"YES";
  if (!a2)
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"Handling message: %@", v6];
  (*(v5 + 16))(v5, v7);
}

void sub_1000F30C0(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Enabling monitor", v5, 2u);
  }

  v3 = [*(*(a1 + 32) + 136) monitor];
  [v3 setDisabled:0];

  v4 = [*(*(a1 + 32) + 136) monitor];
  [v4 checkForNewSharingMessagesWithShouldCheckAllEndpoint:1 completion:&stru_1008453D8];
}

void sub_1000F317C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = [a2 originalInvitation];
    [v3 acceptCarKeyShareForMessage:v4 activationCode:a1[6] completion:&stru_100845440];

    v5 = *(a1[7] + 16);

    v5();
  }

  else
  {
    v6 = a1[7];
    v7 = [NSString stringWithFormat:@"Unable to find pending activation for share '%@'\n", a1[4]];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_1000F326C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [NSString stringWithFormat:@"Pending activation for share '%@': \n\n %@ \n", *(a1 + 32), a2];
  (*(v2 + 16))(v2, v3);
}

void sub_1000F32E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = [a2 hexEncoding];
    v3 = [NSString stringWithFormat:@"Created long term privacy key: %@", v6];
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(a1 + 32);

    v4(v5, @"Failed to create long term privacy key");
  }
}

void sub_1000F33A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F3490;
  v15[3] = &unk_1008454E0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v16 = v11;
  v17 = v12;
  v18 = v6;
  v19 = v7;
  v13 = v6;
  v14 = v7;
  [v8 longTermPrivacyKeysForCredentialGroupIdentifier:v9 privacyKeyIdentifier:v10 completion:v15];
}

void sub_1000F3490(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v5)
  {
    if ([*(a1 + 32) length])
    {
      v7 = @"========================\n\n";
    }

    else
    {
      v7 = @"\n";
    }

    [v6 appendString:v7];
    v8 = *(a1 + 32);
    v9 = [NSString stringWithFormat:@"GroupID: '%@'\n", *(a1 + 40)];
    [v8 appendString:v9];

    v10 = *(a1 + 32);
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Found %lu keys\n\n", [v5 count]);
    [v10 appendString:v11];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v18 = [v16 keyIdentifier];
          v19 = [NSString stringWithFormat:@"KeyID: %@\n", v18];
          [v17 appendString:v19];

          v20 = [v16 publicKey];
          v21 = [v20 base64EncodedStringWithOptions:0];

          v22 = *(a1 + 32);
          v23 = [NSString stringWithFormat:@"Public Key: %@\n", v21];
          [v22 appendString:v23];

          v24 = *(a1 + 32);
          v25 = [v16 creationDate];
          v26 = [NSString stringWithFormat:@"Created: %@\n\n", v25];
          [v24 appendString:v26];
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v5 = v28;
  }

  else
  {
    v27 = [NSString stringWithFormat:@"Failed to get long term privacy keys: %@", a3];
    [v6 appendString:v27];
  }

  (*(*(a1 + 56) + 16))();
}

Class sub_1000F38AC()
{
  if (qword_100924240 != -1)
  {
    sub_1005BFFFC();
  }

  result = objc_getClass("NPKSharedWebServiceProvider");
  qword_100924230 = result;
  off_10091E7A0 = sub_1000F3900;
  return result;
}

void sub_1000F39BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

id sub_1000F39D8()
{

  return [v0 appendFormat:v1];
}

id sub_1000F3A10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_1000F3A4C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = a1;
  a16 = v16;

  dispatch_async(v17, &block);
}

id sub_1000F3A68(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1000F3AA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void sub_1000F3AB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

id sub_1000F3AE8(void *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

BOOL sub_1000F3BCC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_1000F3CC8(id a1)
{
  IsAvailable = PKSecureElementIsAvailable();
  v2 = +[PKDAManager isSupported];
  v3 = v2 & (PKIsSRD() ^ 1);
  if (!IsAvailable)
  {
    LOBYTE(v3) = 0;
  }

  byte_100924248 = v3;
}

void sub_1000F5050(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  v7 = a3;
  v6 = *a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) pk_safelyAddObject:v6];
    }
  }
}

void sub_1000F56C0(id a1, PKPeerPaymentEncryptionCertificatesVersions *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentEncryptionCertificatesVersions setRecipientData:](v4, "setRecipientData:", [a3 integerValue]);
}

void sub_1000F580C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

uint64_t sub_1000F5978(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_alloc(*(a1 + 48));
        v9 = [*(a1 + 48) _propertyValuesForPassRelevancyDates:v7 passPID:{*(a1 + 56), v13}];
        v10 = [v8 initWithPropertyValues:v9 inDatabase:*(a1 + 40)];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

void sub_1000F5E30(uint64_t a1)
{
  v8 = _DateForSQLValue();
  v2 = _DateForSQLValue();
  v3 = _DateForSQLValue();
  v4 = [PKPassRelevantDate alloc];
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [v4 initWithRelevantDate:v8];
  }

  else
  {
    v6 = [v4 initWithEffectiveStartDate:v2 effectiveEndDate:v3];
  }

  v7 = v6;
  [*(a1 + 32) safelyAddObject:v6];
}

int64_t sub_1000F5EE8(id a1, PKPassRelevantDate *a2, PKPassRelevantDate *a3)
{
  v4 = a3;
  v5 = [(PKPassRelevantDate *)a2 relevantDateWithPriority:0];
  v6 = [(PKPassRelevantDate *)v4 relevantDateWithPriority:0];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000F64D0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = +[NSNull null];
  if (v6 != v7)
  {
    v9 = v7;
    v8 = *a4;

    if (!v8)
    {
      return;
    }

    [*(a1 + 32) addObject:v8];
    v7 = v8;
  }
}

uint64_t sub_1000F66D8(uint64_t a1)
{
  [*(a1 + 56) deleteSupportedCountryCodes:1 forPaymentApplication:*(a1 + 32) inDatabase:*(a1 + 40)];
  v2 = [*(a1 + 56) insertCountryCodes:*(a1 + 48) supported:1 withPaymentApplication:*(a1 + 32) inDatabase:*(a1 + 40)];
  return 1;
}

uint64_t sub_1000F6808(uint64_t a1)
{
  [*(a1 + 56) deleteSupportedCountryCodes:0 forPaymentApplication:*(a1 + 32) inDatabase:*(a1 + 40)];
  v2 = [*(a1 + 56) insertCountryCodes:*(a1 + 48) supported:0 withPaymentApplication:*(a1 + 32) inDatabase:*(a1 + 40)];
  return 1;
}

void sub_1000F7180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F71B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    v6 = objc_retainBlock(*&v5[14]._os_unfair_lock_opaque);
    v7 = *&v5[14]._os_unfair_lock_opaque;
    *&v5[14]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v5 + 6);
    if (v3)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to start proximity advertising with error: %@", &v10, 0xCu);
      }

      if (v6)
      {
        v6[2](v6, v3);
      }

      v9 = objc_loadWeakRetained((a1 + 32));
      [v9 _invalidateWithShouldNotify:1];
    }

    else if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

void sub_1000F7304(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    v8 = objc_retainBlock(*&v7[10]._os_unfair_lock_opaque);
    v9 = *&v7[10]._os_unfair_lock_opaque;
    *&v7[10]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v7 + 6);
    if (v8)
    {
      v10 = PKLogFacilityTypeGetObject();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (a4)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Verified proximity verification", buf, 2u);
        }

        v12 = objc_alloc_init(PKContinuityProximityBLEVerification);
        v8[2](v8, v12);
      }

      else
      {
        if (v11)
        {
          v14[0] = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to verify proximity verification", v14, 2u);
        }

        v8[2](v8, 0);
      }
    }

    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 _invalidateWithShouldNotify:1];
  }
}

void sub_1000F7458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _invalidateWithShouldNotify:1];
  }
}

void sub_1000F871C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_alloc_init(PKAccountPendingFamilyMember);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v6 values:a4];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:?];
    v7 = v8;
  }
}

void sub_1000F8890(id a1, PKAccountPendingFamilyMember *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPendingFamilyMember *)v3 setInviteDate:v4];
}

void sub_1000F88F8(id a1, PKAccountPendingFamilyMember *a2, id a3)
{
  v4 = a2;
  -[PKAccountPendingFamilyMember setDisplayedNotification:](v4, "setDisplayedNotification:", [a3 BOOLValue]);
}

void sub_1000F8D34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000F8EE8(id a1, _TtC5passd27PDRateLimitTokens_Prototype *a2, id a3)
{
  v4 = a2;
  v5 = [a3 stringValue];
  [(PDRateLimitTokens_Prototype *)v4 setBundleIdentifier:v5];
}

void sub_1000F8F4C(id a1, _TtC5passd27PDRateLimitTokens_Prototype *a2, id a3)
{
  v4 = a2;
  -[PDRateLimitTokens_Prototype setOperation:](v4, "setOperation:", [a3 integerValue]);
}

void sub_1000F8FA4(id a1, _TtC5passd27PDRateLimitTokens_Prototype *a2, id a3)
{
  v4 = a2;
  -[PDRateLimitTokens_Prototype setTokenCount:](v4, "setTokenCount:", [a3 integerValue]);
}

void sub_1000F8FFC(id a1, _TtC5passd27PDRateLimitTokens_Prototype *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDRateLimitTokens_Prototype *)v3 setLastRefillDate:v4];
}

void sub_1000F9C54(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[CreditRecoveryPaymentPlan alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(CreditRecoveryPaymentPlan *)v5 creditRecoveryPaymentPlan];
  [v3 addObject:v4];
}

uint64_t sub_1000F9E84(uint64_t a1)
{
  [CreditRecoveryPaymentPlan deleteCreditRecoveryPaymentPlansForAccountIdentifier:*(a1 + 32) inDatabase:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [CreditRecoveryPaymentPlan _insertPaymentPlan:*(*(&v11 + 1) + 8 * v6) forAccountIdentifier:*(a1 + 32) inDatabase:*(a1 + 40), v11];
        v8 = *(a1 + 56);
        v9 = [v7 creditRecoveryPaymentPlan];
        [v8 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_1000FA2F8(id a1, PKCreditRecoveryPaymentPlan *a2, id a3)
{
  v4 = a2;
  -[PKCreditRecoveryPaymentPlan setEnrolled:](v4, "setEnrolled:", [a3 BOOLValue]);
}

void sub_1000FA360(id a1, PKCreditRecoveryPaymentPlan *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditRecoveryPaymentPlan *)v3 setEnrollmentDate:v4];
}

void sub_1000FA4B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000FA86C(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA93C;
  block[3] = &unk_100845870;
  v9 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t sub_1000FA93C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 49);
  }

  return (*(v2 + 16))(v2, v3 & 1, *(a1 + 32));
}

void sub_1000FAC5C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000FAC80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 80);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FAD48;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 updateWebServiceConfigurationWithCompletion:v11];
}

void sub_1000FAD60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 80);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000FAE40;
  v13[3] = &unk_1008458E8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v7;
  v17 = v10;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 performHandlerOnSharedWebServiceQueue:v13];
}

void sub_1000FAE40(uint64_t a1, void *a2)
{
  v3 = [a2 targetDevice];
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FAF10;
  v7[3] = &unk_1008458C0;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 40);
  [v3 meetsProvisioningRequirements:v4 completion:v7];
}

uint64_t sub_1000FAF10(uint64_t a1, char a2, void *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  [a3 containsNotManagedAccount];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000FAF64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) shareablePassConfiguration];
  v9 = v8;
  if (v8 && [v8 primaryAction] == 1)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000FB0A0;
    v13[3] = &unk_100845938;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v14 = v11;
    v18 = v12;
    v17 = v7;
    v15 = v6;
    v16 = *(a1 + 56);
    [v10 _webServiceForTargetDevice:2 completion:v13];
  }
}

void sub_1000FB0A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 targetDevice];
  if (objc_opt_respondsToSelector() & 1) != 0 && [v7 supportsCheckingProvisioningRequirements] && (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000FB274;
    v20[3] = &unk_1008458C0;
    v9 = &v22;
    v14 = *(a1 + 56);
    v10 = v14;
    v22 = v14;
    v11 = &v21;
    v21 = *(a1 + 40);
    [v7 meetsProvisioningRequirements:v8 completion:v20];
  }

  else
  {
    v12 = *(a1 + 48);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FB298;
    v16[3] = &unk_100845910;
    v9 = &v18;
    v18 = v6;
    v11 = &v19;
    v15 = *(a1 + 56);
    v13 = v15;
    v19 = v15;
    v17 = *(a1 + 40);
    [v7 paymentWebService:v5 canAddSecureElementPassWithConfiguration:v12 completion:v16];
  }
}

uint64_t sub_1000FB298(void *a1, char a2)
{
  (*(a1[5] + 16))();
  *(*(a1[7] + 8) + 24) = a2;
  v4 = *(a1[6] + 16);

  return v4();
}

void sub_1000FB2FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1[5] + 8) + 24);
  if (v8 & 1) != 0 || (*(*(a1[6] + 8) + 24))
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"N";
      if (v8)
      {
        v11 = @"Y";
      }

      else
      {
        v11 = @"N";
      }

      if (*(*(a1[6] + 8) + 24))
      {
        v10 = @"Y";
      }

      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Push provisioning: _isPushProvisioningSupportedForConfiguration returning currentDeviceSupported: %@ companionDeviceSupported: %@", &v15, 0x16u);
    }

    (*(a1[4] + 16))();
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Push provisioning: Device nor watch supports push provisioning.", &v15, 2u);
    }

    v13 = a1[4];
    v14 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:4 userInfo:0];
    (*(v13 + 16))(v13, 0, 0, v14);
  }
}

void sub_1000FB748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKPaymentPushProvisioningSharingIdentifiersRequest);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FB804;
  v5[3] = &unk_1008459B0;
  v6 = *(a1 + 32);
  [v3 pushProvisioningSharingIdentifiersWithRequest:v4 completion:v5];
}

void sub_1000FB804(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 sharedCredentials];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_1000FBA80(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FBC08;
  v12[3] = &unk_100845A28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v7 = objc_retainBlock(v12);
  if ([v3 needsRegistration])
  {
    v8 = [*(*(a1 + 40) + 80) deviceRegistrationServiceCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FC034;
    v9[3] = &unk_100845A50;
    v9[4] = *(a1 + 40);
    v10 = v7;
    v11 = *(a1 + 48);
    [v8 performDeviceRegistrationForReason:@"Shareable Credential Status" brokerURL:0 action:1 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v9];
  }

  else
  {
    (v7[2])(v7, v3);
  }
}

void sub_1000FBC08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100005AB0;
  v29[4] = sub_10000B164;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = [v8 encryptedPushProvisioningTarget];

        if (v9)
        {
          v10 = [PKPaymentPushProvisioningSharingStatusRequest alloc];
          v11 = [v8 encryptedPushProvisioningTarget];
          v12 = [v10 initWithEncryptedProvisioningTarget:v11];
        }

        else
        {
          v13 = [PKPaymentPushProvisioningSharingStatusRequest alloc];
          v11 = [v8 sharingInstanceIdentifier];
          v14 = [v8 cardConfigurationIdentifier];
          v12 = [v13 initWithProvisioningSharingIdentifier:v11 cardCardConfigurationIdentifer:v14];
        }

        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000FBF4C;
        v22[3] = &unk_100845A00;
        v24 = v29;
        v22[4] = v8;
        v23 = v4;
        [v3 pushProvisioningSharingStatusRequest:v12 completion:v22];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v15 = *(*(v16 + 40) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FBFDC;
  block[3] = &unk_100844EB0;
  v20 = *(v16 + 48);
  v19 = *(v16 + 32);
  v21 = v29;
  dispatch_group_notify(v4, v15, block);

  _Block_object_dispose(v29, 8);
}

void sub_1000FBF4C(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v8 = obj;
  v6 = a2;
  v7 = [v6 sharingStatus];

  [*(a1 + 32) setStatus:v7];
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1000FBFDC(void *a1)
{
  v2 = a1[5];
  v3 = PKAggregateSharingStatusForShareableCredentials();
  v4 = a1[4];
  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(v2 + 16);

  return v6(v2, v3, v4, v5);
}

void sub_1000FC034(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 0x10) != 0)
  {
    v10 = *(*(a1 + 32) + 80);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000FC15C;
    v12[3] = &unk_1008459D8;
    v13 = *(a1 + 40);
    [v10 performHandlerOnSharedWebServiceQueue:v12];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broker register failed. Returning unknown status for credentials", v11, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000FC250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest alloc] initWithEncryptedPushProvisioningTarget:*(a1 + 32) sharingInstanceIdentifier:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FC314;
  v5[3] = &unk_100845A78;
  v6 = *(a1 + 48);
  [v3 provideEncryptedPushProvisioningTargetWithRequest:v4 completion:v5];
}

void sub_1000FC3CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = +[NSMutableArray array];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100005AB0;
  v17[4] = sub_10000B164;
  v18 = 0;
  if (*(a1 + 48))
  {
    v6 = 0;
    do
    {
      dispatch_group_enter(v4);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000FC5D8;
      v13[3] = &unk_100845AC8;
      v13[4] = *(a1 + 32);
      v14 = v5;
      v16 = v17;
      v15 = v4;
      [v3 paymentProvisioningNonceOfType:0 completion:v13];

      ++v6;
    }

    while (v6 < *(a1 + 48));
  }

  v7 = *(*(a1 + 32) + 24);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FC760;
  v9[3] = &unk_100845AF0;
  v11 = *(a1 + 40);
  v12 = v17;
  v10 = v5;
  v8 = v5;
  dispatch_group_notify(v4, v7, v9);

  _Block_object_dispose(v17, 8);
}

void sub_1000FC5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FC5D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FC6D4;
  block[3] = &unk_100845AA0;
  v13 = v5;
  v14 = *(a1 + 40);
  v15 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000FC6D4(uint64_t a1)
{
  v2 = [*(a1 + 32) nonce];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) nonce];
    [v3 addObject:v4];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  }

  v6 = *(a1 + 56);

  dispatch_group_leave(v6);
}

void sub_1000FC760(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v3 = *(v1 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0);
    }

    else
    {
      v5 = [*(a1 + 32) copy];
      (*(v1 + 16))(v1, v5, *(*(*(a1 + 48) + 8) + 40));
    }
  }
}

void sub_1000FCCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a72, 8);
  _Unwind_Resume(a1);
}

void sub_1000FCCFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  v7 = [[_TtC5passd41PDIdentityProvisioningRequirementsChecker alloc] initWithDatabaseManager:*(*(a1 + 32) + 64)];
  v8 = [*(a1 + 40) identityDocumentConfiguration];
  v9 = [(PDIdentityProvisioningRequirementsChecker *)v7 canConfigureWithConfiguration:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:1 userInfo:0];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v6[2](v6, v13, *(*(*(a1 + 48) + 8) + 40) != 0);
}

void sub_1000FCE08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 120);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FCEF0;
  v12[3] = &unk_100845B40;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 performDeviceRegistrationForReason:@"push provisioning nonces" brokerURL:0 action:1 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v12];
}

void sub_1000FCEF0(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if ((a2 & 0x10) == 0 && v8)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Push provisioning: configurePushProvisioningConfiguration failed registration with error: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
}

void sub_1000FD008(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FD0E8;
  v12[3] = &unk_100845B68;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v8 _isPushProvisioningSupportedForConfiguration:v9 completion:v12];
}

void sub_1000FD0E8(void *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"N";
    if (a2)
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    if (a3)
    {
      v9 = @"Y";
    }

    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning: currentDeviceSupported: %@ companionDeviceSupported: %@", &v14, 0x16u);
  }

  *(*(a1[6] + 8) + 24) = a2;
  *(*(a1[7] + 8) + 24) = a3;
  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  (*(a1[5] + 16))(a1[5], a1[4], v13 != 0);
}

void sub_1000FD22C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000FD45C;
  v24[3] = &unk_100845B90;
  v28 = *(a1 + 80);
  v27 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v25 = v8;
  v26 = v9;
  v10 = sub_1000FD45C(v24);
  [*(a1 + 32) setTargetDevice:v10];
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithUnsignedInteger:v10];
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Push provisioning: TargetDevice: %@", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000FD550;
  v17[3] = &unk_100845BE0;
  v23 = *(a1 + 80);
  v22 = *(a1 + 72);
  v13 = *(a1 + 40);
  v18 = *(a1 + 48);
  v14 = *(a1 + 32);
  v20 = v6;
  v21 = v7;
  v19 = v14;
  v15 = v6;
  v16 = v7;
  [v13 _webServiceForTargetDevice:v10 completion:v17];
}

uint64_t sub_1000FD45C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      return 1;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24))
  {
    return 2;
  }

  v3 = [*(a1 + 32) provisioningCredentialIdentifier];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [v4 SHA256Hash];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [*(a1 + 40) _hasProvisionedPassForCredentialHash:v6];
  v8 = [*(a1 + 40) _companionHasProvisionedPassForCredentialHash:v6];
  v9 = 1;
  if (!(v8 & 1 | ((v7 & 1) == 0)))
  {
    v9 = 2;
  }

  if (v7 & 1 | ((v8 & 1) == 0))
  {
    v1 = v9;
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

void sub_1000FD550(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FD658;
  v7[3] = &unk_100845BB8;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v6 = v5;
  [a2 paymentProvisioningNonceOfType:0 completion:v7];
}

void sub_1000FD658(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 nonce];
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 80))
    {
      v8 = PKAddSecureElementPassErrorDomain;
      v13 = NSUnderlyingErrorKey;
      v14 = v5;
      v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      goto LABEL_4;
    }

LABEL_10:
    [*(a1 + 32) setRequiresNonceValidityChecks:0];
    goto LABEL_11;
  }

  if ([v6 length])
  {
    [*(a1 + 40) setNonce:v7];
    goto LABEL_11;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v8 = PKAddSecureElementPassErrorDomain;
LABEL_4:
  v10 = [NSError errorWithDomain:v8 code:4 userInfo:v9];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v5)
  {
  }

LABEL_11:
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 48), *(*(*(a1 + 72) + 8) + 40) != 0);
}

void sub_1000FD7E8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: configurePushProvisioningConfiguration return configuration: %@ error: %@", buf, 0x16u);
  }

  v5 = *(*(a1 + 40) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FD938;
  block[3] = &unk_100845C30;
  v7 = *(a1 + 48);
  v6 = v7;
  v10 = v7;
  v9 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t sub_1000FD938(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

void sub_1000FDD00(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 40) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 42);
  *(v4 + 42) = 0;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Push provisioning: Finished background provision sharing identifiers", buf, 2u);
    }

    v8 = *(a1 + 32);
    if ((v5 & 1) != 0 || v8[41] == 1)
    {
      [v8 _queue_performBackgroundPushProvisioningWithTransaction:*(a1 + 40)];
    }
  }

  else
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Push provisioning: failed to background provision sharing identifiers", v9, 2u);
    }
  }
}

void sub_1000FE078(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FE144;
  v12[3] = &unk_100845CD0;
  v13 = v6;
  v14 = v7;
  v12[4] = v8;
  v10 = v6;
  v11 = v7;
  [v9 performHandlerOnSharedWebServiceQueue:v12];
}

void sub_1000FE144(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) deviceRegistrationServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FE214;
  v3[3] = &unk_100845CA8;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 performDeviceRegistrationForReason:@"background push provisioning" brokerURL:0 action:1 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v3];
}

void sub_1000FE22C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FE2F4;
  v12[3] = &unk_100845D20;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v12[4] = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 pushProvisioningSharingIdentifiers:v12];
}

void sub_1000FE2F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE3F8;
  block[3] = &unk_100845CF8;
  v13 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v17 = v11;
  v14 = *(a1 + 40);
  v15 = v5;
  v16 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_1000FE3F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v9 = v7;
    v10 = *v23;
    *&v8 = 138412546;
    v21 = v8;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = [v12 type];
      if (v13 == 2)
      {
        v15 = [PKPendingAccountCredential alloc];
        v16 = [v12 accountIdentifier];
        v17 = [v12 feature];
        v18 = [v12 sharingInstanceIdentifier];
        v14 = [v15 initWithAccountIdentifier:v16 feature:v17 sharingInstanceIdentifier:v18];

        if (!v14)
        {
          goto LABEL_15;
        }
      }

      else if (v13 != 1 || (v14 = [[PKPendingShareableCredential alloc] initWithSharedCredential:v12]) == 0)
      {
LABEL_15:
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 type]);
          *buf = v21;
          v27 = v12;
          v28 = 2112;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Push provisioning: failed to parse credential %@ \n\n type: %@", buf, 0x16u);
        }

        goto LABEL_17;
      }

      [v14 setShouldAutoProvision:1];
      [*(*(a1 + 56) + 136) storePendingProvisioning:v14];
LABEL_17:

      if (v9 == ++v11)
      {
        v9 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_7;
      }
    }
  }

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Push provisioning: failed to get shared credentials, error: %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 72) + 8);
  v5 = *(a1 + 32);
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;
LABEL_19:

  return (*(*(a1 + 64) + 16))();
}

void sub_1000FE6C8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE764;
  block[3] = &unk_100845D48;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(v1, block);
}

uint64_t sub_1000FE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

void sub_1000FEC58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000FECAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FED74;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_1000FED8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(a1 + 56))
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 104);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FEE94;
    v14[3] = &unk_100845DE8;
    v14[4] = v10;
    v12 = v9;
    v13 = *(a1 + 48);
    v15 = v12;
    v18 = v13;
    v17 = v8;
    v16 = v6;
    [v11 familyMembersWithCachePolicy:0 completion:v14];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1000FEE94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEF84;
  block[3] = &unk_100845DC0;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 56);
  v5 = v7;
  v12 = v7;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000FEF84(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: Retrived %lu family members", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = *(a1 + 32);
  v27 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v27)
  {

    v7 = 0;
    v6 = 0;
    goto LABEL_36;
  }

  v6 = 0;
  v7 = 0;
  v26 = *v29;
  *&v5 = 138412546;
  v24 = v5;
  v8 = a1;
  obj = v4;
  while (2)
  {
    for (i = 0; i != v27; i = i + 1)
    {
      if (*v29 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 40) appleIdentifier];
        v12 = PKIDSNormalizedAddress();
        v13 = [v10 appleID];
        v14 = PKIDSNormalizedAddress();
        *buf = v24;
        v33 = v12;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: Attempting to match recipient: %@ to familyMember: %@", buf, 0x16u);

        a1 = v8;
      }

      v15 = [v10 appleID];
      v16 = PKIDSNormalizedAddress();
      v17 = [*(a1 + 40) appleIdentifier];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        v19 = v10;

        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: Found family member with matching Apple Account", buf, 2u);
        }

        v6 = v19;
      }

      a1 = v8;
      if ([v10 isMe])
      {
        v20 = v10;

        v7 = v20;
      }

      if (v6 && v7)
      {

LABEL_23:
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: Found family member with matching Apple Account", buf, 2u);
        }

        if (([v6 memberType] == 1 || objc_msgSend(v6, "memberType") == 2) && ((objc_msgSend(v7, "isOrganizer") & 1) != 0 || objc_msgSend(v7, "isParent")))
        {
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: recipient is child member of iCloud family and sender is an organizer or parent. Updating provisioning target", buf, 2u);
          }

          v21 = *(v8 + 40);
          v22 = [v6 dsid];
          v23 = [v22 stringValue];
          [v21 setAppleIdentifier:v23];

          [*(v8 + 40) setAppleIdentifierType:3];
          *(*(*(v8 + 64) + 8) + 24) = 1;
        }

        else
        {
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Push provisioning: Family member is not an adult or sender is not a parent or organizer.", buf, 2u);
          }
        }

        goto LABEL_36;
      }
    }

    v27 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

  if (v6)
  {
    goto LABEL_23;
  }

LABEL_36:
  (*(*(a1 + 56) + 16))();
}

void sub_1000FF3E0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000FF4B8;
  v13[3] = &unk_100845E38;
  v10 = a1[4];
  v9 = a1[5];
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v10 _webServiceForTargetDevice:v8 completion:v13];
}

void sub_1000FF4B8(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v7 = a2;
  v6 = a3;
  v6[2]();

  (*(*(a1 + 40) + 16))();
}

void sub_1000FF548(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) nonce];

  if (v8)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000FF664;
    v12[3] = &unk_100845E88;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v13 = v10;
    v16 = v11;
    v15 = v7;
    v14 = v6;
    [v9 paymentProvisioningNonceOfType:0 completion:v12];
  }
}

void sub_1000FF664(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [a2 nonce];
  [v7 setNonce:v8];

  if (v6 || ([*(a1 + 32) nonce], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Push provisioning: Failed to set fetch nonce with error: %@ from target: %@", &v13, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

void sub_1000FF7BC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1[6] + 8) + 40) context];
  v9 = [v8 primaryRegion];
  v10 = [v9 certificates];

  if (v10)
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = [*(*(a1[6] + 8) + 40) context];
    v14 = [v13 devSigned];
    v15 = *(a1[8] + 8);
    obj = *(v15 + 40);
    v16 = [v11 _encryptProvisioningTarget:v12 devSigned:v14 certificateChain:v10 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(a1[7] + 8) + 40) setTargetDevice:a1[10]];
    if (*(*(a1[9] + 8) + 24) == 1 && !*(*(a1[8] + 8) + 40))
    {
      v23 = [PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest alloc];
      v24 = *(*(a1[7] + 8) + 40);
      v25 = [a1[5] sharingInstanceIdentifier];
      v26 = [v23 initWithEncryptedPushProvisioningTarget:v24 sharingInstanceIdentifier:v25];

      v27 = *(*(a1[6] + 8) + 40);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000FFA74;
      v29[3] = &unk_10083E6B0;
      v32 = a1[8];
      v31 = v7;
      v30 = v6;
      [v27 provideEncryptedPushProvisioningTargetWithRequest:v26 completion:v29];
    }

    else
    {
      (*(v7 + 2))(v7, v6, 0);
    }
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Push provisioning: Certificate chain is missing! Not encrypting provisioning target", v28, 2u);
    }

    v20 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
    v21 = *(a1[8] + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

void sub_1000FFA74(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_1000FFAE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[9];
    v10 = *(*(a1[6] + 8) + 40);
    *buf = 134218242;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning: Created encryptedProvisioningTarget for targetType: %lu error: %@", buf, 0x16u);
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = *(a1[4] + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000FFC48;
    v13[3] = &unk_100845ED8;
    v14 = v11;
    v15 = *(a1 + 3);
    v16 = a1[8];
    dispatch_async(v12, v13);
  }
}

uint64_t sub_1000FFC48(void *a1)
{
  v2 = a1[4];
  if (*(*(a1[5] + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1[6] + 8) + 40);
  }

  return (*(v2 + 16))(v2, v3, *(*(a1[7] + 8) + 24));
}

void sub_100100050(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[PKPaymentProvisioningController alloc] initWithWebService:v6 localPaymentService:0];

  v8 = [*(a1 + 32) externalizedAuth];
  [v7 storeExternalizedAuth:v8];

  [v7 setCloudStoreCoordinator:*(*(a1 + 40) + 112)];
  v9 = [[PKProvisioningContext alloc] initWithEnvironment:0 provisioningController:v7 groupsController:0];
  [v9 setIsBackground:{objc_msgSend(*(a1 + 32), "isBackgroundProvisioning")}];
  v10 = [[PKProvisioningBackgroundCoordinator alloc] initWithSetupContext:v9 credential:*(a1 + 32) previouslyAcceptedTerms:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001001F0;
  v13[3] = &unk_100845F28;
  v14 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v5;
  v15 = v10;
  v11 = v10;
  v12 = v5;
  [v11 startWithCompletion:v13];
}

void sub_1001001F0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 secureElementPass];
  v8 = [v7 paymentPass];

  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = a1[4];
      v12 = [v8 uniqueID];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): Successfully provisioned pass %@", &v14, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = a1[4];
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): failed with error: %@", &v14, 0x16u);
  }

  (*(a1[6] + 16))();
  (*(a1[7] + 16))();
}

uint64_t sub_100100504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

uint64_t sub_1001006AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

void sub_100100A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 88));
  objc_destroyWeak(&a33);
  _Block_object_dispose((v34 - 160), 8);
  objc_destroyWeak((v34 - 168));
  _Unwind_Resume(a1);
}

void sub_100100A8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = WeakRetained == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v6 = WeakRetained;
    [WeakRetained[1] invalidateAssertionOfType:1 withIdentifier:? handler:?];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    WeakRetained = v6;
  }
}

uint64_t sub_100100B10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_100100B60(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): Unable to acquire provisioning in progress assertion with id %@; Continuing anyway...", buf, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) encryptedProvisioningTarget];
  v8 = [v7 targetDevice];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100100D54;
  v11[3] = &unk_100846040;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = *(a1 + 48);
  objc_copyWeak(&v17, (a1 + 88));
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  [v6 _webServiceForTargetDevice:v8 completion:v11];

  objc_destroyWeak(&v17);
}

void sub_100100D54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[PKPaymentProvisioningController alloc] initWithWebService:v5 localPaymentService:0];
  [v7 setCloudStoreCoordinator:*(*(a1 + 32) + 112)];
  v8 = [[PKPaymentEligibilityRequest alloc] initWithPaymentCredential:*(a1 + 40)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100100EF8;
  v11[3] = &unk_100846018;
  v12 = *(a1 + 40);
  v9 = v6;
  v14 = v9;
  v15 = *(a1 + 48);
  objc_copyWeak(&v19, (a1 + 80));
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v10 = v7;
  v13 = v10;
  v18 = *(a1 + 72);
  [v10 requestEligibility:v8 withCompletionHandler:v11];

  objc_destroyWeak(&v19);
}

void sub_100100EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 eligibilityStatus];
  if (v6)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): eligibility request failed with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = v7;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = @"OS";
        v13 = *(a1 + 32);
        if (v10 == 5)
        {
          v12 = @"hardware";
        }

        *buf = 138412546;
        v31 = v13;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): device %@ not supported", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 88));
      [WeakRetained _handleUnsupportedDeviceResponse:v5 completion:*(a1 + 64)];
    }

    else if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 3)
    {
      (*(*(a1 + 72) + 16))();
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      [WeakRetained _handleExpectedPassUpdateForEligibilityResponse:v5 completion:*(a1 + 64)];
    }

    else if (v7 == 1)
    {
      [*(a1 + 40) passcodeUpgradeCompleted:1];
      [*(a1 + 40) acceptTerms];
      WeakRetained = (*(*(a1 + 80) + 16))();
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) externalizedAuth];
      [v15 storeExternalizedAuth:v16];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001012D0;
      v27[3] = &unk_100845FF0;
      v17 = *(a1 + 40);
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = *(a1 + 40);
      *&v22 = v18;
      *(&v22 + 1) = v21;
      *&v23 = v19;
      *(&v23 + 1) = v20;
      v28 = v22;
      v29 = v23;
      [v17 requestProvisioning:WeakRetained withCompletion:v27];
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        *buf = 138412546;
        v31 = v25;
        v32 = 1024;
        LODWORD(v33) = [v5 eligibilityStatus];
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): got eligibility status %d", buf, 0x12u);
      }

      (*(*(a1 + 48) + 16))();
      v26 = *(a1 + 56);
      WeakRetained = PKDisplayableErrorForCommonType();
      (*(v26 + 16))(v26, 0, 0, 0, WeakRetained);
    }
  }
}

void sub_1001012D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Push provisioning (%@): failed with error: %@", &v14, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  v12 = *(a1 + 56);
  v13 = [*(a1 + 40) moreInfoItems];
  (*(v12 + 16))(v12, v7 != 0, v7, v13, v9);
}

void sub_1001018AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101988;
  block[3] = &unk_10083D320;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_100101988(void *a1)
{
  if (a1[4])
  {
    v2 = a1[6];
LABEL_3:
    v3 = *(v2 + 16);

    v3(v2, 0, 0, 0);
    return;
  }

  v4 = a1[5];
  v2 = a1[6];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [v4 paymentPass];
  (*(v2 + 16))(v2, 1, v5, 0, a1[4]);
}

void sub_100101A44(void *a1)
{
  v2 = [*(a1[4] + 64) paymentApplicationWithDPANIdentifier:a1[5]];
  v3 = [*(a1[4] + 64) passWithPaymentApplication:v2];
  v4 = [v3 secureElementPass];

  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push provisioning: Found pass being updated for DPAN. Returning it.", &v10, 2u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (v6)
    {
      v7 = a1[5];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push provisioning: Unable to find pass on device for DPAN identifier '%@'", &v10, 0xCu);
    }

    v8 = a1[6];
    v9 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:2 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }
}

BOOL sub_100101D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 secureElementPass];
  if (v4)
  {
    v5 = [v3 provisioningCredentialHash];
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (!v7 || !v8)
      {

LABEL_11:
        v11 = 0;
        goto LABEL_12;
      }

      v10 = [v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = [v4 passActivationState] != 4;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

void sub_100101F54(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  --*(*(a1 + 32) + 48);
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 44));
}

Class sub_100102184()
{
  if (qword_100924268 != -1)
  {
    sub_1005C0024();
  }

  result = objc_getClass("NPKSharedWebServiceProvider");
  qword_100924258 = result;
  off_10091E988 = sub_1001021D8;
  return result;
}

void sub_100102958(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKSavingsAccountDetails *)v3 setLastUpdatedDate:v4];
}

void sub_1001029B8(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKSavingsAccountDetails *)v3 setCreatedDate:v4];
}

void sub_100102A28(id a1, PKSavingsAccountDetails *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = [NSTimeZone timeZoneWithName:a3];
    [(PKSavingsAccountDetails *)v4 setProductTimeZone:v5];
  }
}

void sub_100102AA8(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKSavingsAccountDetails setMoreInfoRequired:](v4, "setMoreInfoRequired:", [a3 BOOLValue]);
}

void sub_100102B00(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKSavingsAccountDetails setTermsAcceptanceRequired:](v4, "setTermsAcceptanceRequired:", [a3 BOOLValue]);
}

void sub_100102B60(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKSavingsAccountDetails *)v3 setPrivacyPolicyURL:v4];
}

void sub_100102BC8(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKSavingsAccountDetails *)v3 setContactWebsite:v4];
}

void sub_100102C40(id a1, PKSavingsAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKSavingsAccountDetails setFccStepUpRequired:](v4, "setFccStepUpRequired:", [a3 BOOLValue]);
}

void sub_100102E2C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

id sub_100103180(void *a1)
{
  v1 = [a1 pk_mutableArrayCopy];
  [v1 sortUsingComparator:&stru_100846468];
  v2 = [v1 copy];

  return v2;
}

void *sub_100103248(void *a1, void *a2)
{
  result = a2;
  v4 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v9.receiver = a1;
    v9.super_class = PDSECredentialPass;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v5 = [v4 copy];
      v6 = a1[2];
      a1[2] = v5;

      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = a1[1];
      a1[1] = v7;
    }

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

void sub_1001032DC(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (!v7 || !v5)
    {
      __break(1u);
      return;
    }

    sub_1005C1934(a1, v7, v5);
  }
}

void sub_100103350(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010343C;
    v6[3] = &unk_100846348;
    v6[4] = a1;
    v7 = v3;
    v8 = v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_100103424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010343C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100103520;
  v12[3] = &unk_100846320;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v12[4] = v9;
  v10 = v7;
  v11 = *(a1 + 48);
  v13 = v10;
  v15 = v11;
  [a3 enumerateObjectsUsingBlock:v12];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t sub_100103520(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 48) + 16))();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1001035C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4 || !v5)
  {
    __break(1u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v6)
  {
    v28 = 1;
    goto LABEL_33;
  }

  v7 = v6;
  v8 = &selRef_idsCorrelationIdentifier;
  v9 = *v33;
  do
  {
    v10 = 0;
    v11 = v8[74];
    do
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v32 + 1) + 8 * v10);
      v13 = [v12 objectForKeyedSubscript:@"reason"];
      v14 = v13;
      if (!v13)
      {
        v28 = 0;
        v19 = 0;
        goto LABEL_32;
      }

      v15 = v13;
      v16 = v15;
      if (v15 == @"conflict" || (v17 = [(__CFString *)v15 isEqualToString:@"conflict"], v16, (v17 & 1) != 0))
      {

        v18 = [v12 objectForKeyedSubscript:@"passID"];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = [v12 objectForKeyedSubscript:@"PassUniqueID"];
          if (!v19)
          {
            goto LABEL_31;
          }
        }

        v22 = 0;
      }

      else
      {

        v20 = v16;
        v19 = v20;
        if (v20 != @"suppressed")
        {
          v21 = [(__CFString *)v20 isEqualToString:?];

          if ((v21 & 1) == 0)
          {

LABEL_31:
            v28 = 0;
LABEL_32:

            goto LABEL_33;
          }
        }

        v19 = 0;
        v22 = 1;
      }

      v31 = 0;
      v23 = [PDSECredentialConflict alloc];
      if (v23)
      {
        v36.receiver = v23;
        v36.super_class = PDSECredentialConflict;
        v24 = objc_msgSendSuper2(&v36, v11);
        v25 = v24;
        if (v24)
        {
          *(v24 + 1) = v22;
        }
      }

      else
      {
        v25 = 0;
      }

      v5[2](v5, v25, v19, &v31);
      v26 = v31;

      if (v26)
      {
        v28 = 1;
        goto LABEL_32;
      }

      v10 = v10 + 1;
    }

    while (v7 != v10);
    v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    v7 = v27;
    v28 = 1;
    v8 = &selRef_idsCorrelationIdentifier;
  }

  while (v27);
LABEL_33:

  return v28;
}

BOOL sub_10010389C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v19 = objc_opt_self();
  if (!v4 || (v20 = v5) == 0)
  {
    __break(1u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = *v31;
    v18 = v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"passID", v18}];
        if (!v11)
        {
          v11 = [v10 objectForKeyedSubscript:@"PassUniqueID"];
          if (!v11)
          {
            v16 = 0;
            goto LABEL_24;
          }
        }

        v12 = [v10 objectForKeyedSubscript:@"conflicts"];
        v13 = v12;
        if (v12 && [v12 count])
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v22[0] = sub_100103B64;
          v22[1] = &unk_100846370;
          v24 = v20;
          v14 = v11;
          v23 = v14;
          v25 = &v26;
          if (sub_1001035C4(v19, v13, v21))
          {
            if (*(v27 + 24))
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 1;
          }

          _Block_object_dispose(&v26, 8);
          if (v15)
          {
            v16 = (v15 & 1) == 0;
            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_24:

  return v16;
}

void sub_100103B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100103B64(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[5];
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a1[4];
  }

  result = (*(v6 + 16))(v6, a2, a1[4], v7, *(a1[6] + 8) + 24);
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100103C8C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (v1 == 1)
      {
        return 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100103CB4()
{
  objc_opt_self();
  v0 = [PDSECredentialNode alloc];

  return sub_1005C12D0(v0);
}

id sub_100103D04(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    v8 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005C14AC;
    v11[3] = &unk_100846398;
    v9 = v5;
    v12 = v9;
    v7 = [v8 pk_firstObjectPassingTest:v11];
    if (!v7 && a3)
    {
      v7 = sub_1005C1340([PDSECredentialNode alloc], v9);
      [*(a1 + 8) addObject:v7];
      *(a1 + 24) = 0;
    }
  }

  return v7;
}

uint64_t sub_100103E10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    if (*(a1 + 32))
    {
LABEL_4:
      v5 = 0;
      goto LABEL_16;
    }

    v6 = [PDSECredentialConflict alloc];
    if (v6)
    {
      v17.receiver = v6;
      v17.super_class = PDSECredentialConflict;
      v7 = objc_msgSendSuper2(&v17, "init");
      v8 = v7;
      if (v7)
      {
        *(v7 + 1) = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v8 = 0;
LABEL_8:
  v17.receiver = 0;
  v17.super_class = &v17;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = [[NSMutableArray alloc] initWithObjects:{a1, 0}];
  while ([v9 count])
  {
    v10 = [v9 lastObject];
    [v9 removeLastObject];
    v11 = v10[2];
    if (v11)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100103FF4;
      v13[3] = &unk_100846348;
      v15 = v4;
      v14 = v8;
      v16 = &v17;
      [v11 enumerateKeysAndObjectsUsingBlock:v13];
    }

    if (v10[1])
    {
      [v9 addObjectsFromArray:?];
    }
  }

  _Block_object_dispose(&v17, 8);
  v5 = 1;
LABEL_16:

  return v5;
}

void sub_100103FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100103FF4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001040E4;
  v10[3] = &unk_100846400;
  v13 = *(a1 + 40);
  v11 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 48);
  v12 = v8;
  v14 = v9;
  [a3 enumerateObjectsUsingBlock:v10];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t sub_1001040E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 48) + 16))();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_100104144(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = 0;
  v11 = 0;
  if ([PKExpressPassInformation extractApplicationIdentifier:&v11 subcredentialIdentifier:&v10 fromIdentifiers:a2])
  {
    v6 = *(a1 + 32);
    if (!v6 || v11 && ([v6 appletWithIdentifier:?], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(v7, "lifecycleState"), v8, v9 == 15))
    {
      sub_1005C199C(&v11, &v10, v5, a1);
    }
  }
}

int64_t sub_10010425C(id a1, NSData *a2, NSData *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSData *)v4 length];
  v7 = [(NSData *)v5 length];
  if (v6 | v7)
  {
    if (v6 >= v7)
    {
      if (v6 > v7)
      {
        v8 = 1;
      }

      else
      {
        v10 = memcmp([(NSData *)v4 bytes], [(NSData *)v5 bytes], v6);
        if (v10 < 0)
        {
          v8 = -1;
        }

        else
        {
          v8 = v10 != 0;
        }
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100104864(id a1, PKAppleBalanceAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAppleBalanceAccountDetails *)v3 setLastUpdatedDate:v4];
}

void sub_1001048C4(id a1, PKAppleBalanceAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAppleBalanceAccountDetails *)v3 setCreatedDate:v4];
}

void sub_10010494C(id a1, PKAppleBalanceAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKAppleBalanceAccountDetails setCardType:](v4, "setCardType:", [a3 integerValue]);
}

void sub_100104B04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

id _SQLValueForIntegerArray(void *a1)
{
  if (a1)
  {
    [a1 componentsJoinedByString:{@", "}];
  }

  else
  {
    +[NSNull null];
  }
  v1 = ;

  return v1;
}

id _IntegerArrayForSQLValue(void *a1)
{
  if (a1)
  {
    v1 = [a1 componentsSeparatedByString:{@", "}];
    v2 = [v1 pk_arrayByApplyingBlock:&stru_1008465E0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100104EC0(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 integerValue];

  return [NSNumber numberWithInteger:v2];
}

void sub_100105360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKPassShareTimeSchedule);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) safelyAddObject:v7];
}

void sub_1001054E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100105804(id a1, PKPassShareTimeSchedule *a2, id a3)
{
  v4 = a2;
  v5 = _IntegerArrayForSQLValue(a3);
  [(PKPassShareTimeSchedule *)v4 setHoursOfDay:v5];
}

void sub_100105868(id a1, PKPassShareTimeSchedule *a2, id a3)
{
  v4 = a2;
  v5 = _IntegerArrayForSQLValue(a3);
  [(PKPassShareTimeSchedule *)v4 setDaysOfWeek:v5];
}

void sub_1001058CC(id a1, PKPassShareTimeSchedule *a2, id a3)
{
  v4 = a2;
  v5 = _IntegerArrayForSQLValue(a3);
  [(PKPassShareTimeSchedule *)v4 setDaysOfMonth:v5];
}

void sub_100105930(id a1, PKPassShareTimeSchedule *a2, id a3)
{
  v4 = a2;
  -[PKPassShareTimeSchedule setInterval:](v4, "setInterval:", [a3 unsignedIntegerValue]);
}

void sub_100105988(id a1, PKPassShareTimeSchedule *a2, id a3)
{
  v3 = a2;
  [(PKPassShareTimeSchedule *)v3 setFrequency:PKPassShareTimeScheduleFrequencyFromString()];
}

uint64_t sub_100106650(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_alloc(*(a1 + 56));
        v10 = [v9 initWithLocation:v8 source:*(a1 + 40) inDatabase:{*(a1 + 48), v13}];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  objc_autoreleasePoolPop(v2);
  return v11;
}

void sub_1001068C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKLocation);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_100106F8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v10 = objc_alloc_init(PKPaymentTransactionToDeleteFromFinance);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v10 withProperties:v7 values:a4];

  v8 = *(a1 + 40);
  v9 = [NSNumber numberWithLongLong:a2];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

void sub_100107B40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = objc_alloc_init(PKPassShareTimeConfiguration);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v9 withProperties:v7 values:a4];

  v8 = [PassShareTimeSchedule passShareTimeSchedulesForTimeConfigurationPID:a2 inDatabase:*(a1 + 40)];
  [v9 setSchedules:v8];

  [*(a1 + 48) safelyAddObject:v9];
}

void sub_100107D3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100108028(id a1, PKPassShareTimeConfiguration *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPassShareTimeConfiguration *)v3 setStartDate:v4];
}

void sub_100108088(id a1, PKPassShareTimeConfiguration *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPassShareTimeConfiguration *)v3 setExpirationDate:v4];
}

void sub_1001080E8(id a1, PKPassShareTimeConfiguration *a2, id a3)
{
  v3 = a2;
  [(PKPassShareTimeConfiguration *)v3 setSupport:PKPassShareTimeConfigurationSupportFromString()];
}

void sub_100108450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100108474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = a3;
  v10 = objc_alloc_init(PKPaymentBalanceReminder);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:*(*(*(a1 + 40) + 8) + 40) withProperties:v9 values:a4];
  *a6 = 1;
}

void sub_1001087B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001087D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = [(SQLiteEntity *)[BalanceReminder alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a6 = 1;
}

void sub_100108FF8(id a1, PKPaymentBalanceReminder *a2, id a3)
{
  v4 = a2;
  v5 = [NSDecimalNumber decimalNumberWithString:a3];
  [(PKPaymentBalanceReminder *)v4 setThreshold:v5];
}

void sub_100109070(id a1, PKPaymentBalanceReminder *a2, id a3)
{
  v4 = a2;
  -[PKPaymentBalanceReminder setEnabled:](v4, "setEnabled:", [a3 BOOLValue]);
}

id sub_100109260(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 56));
  objc_storeStrong((*(a1 + 32) + 208), *(a1 + 64));
  v2 = objc_alloc_init(NSMutableSet);
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  v5 = objc_alloc_init(NSMutableSet);
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = v5;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  v11 = [[PDCandidateRelevantPassFactory alloc] initWithDatabaseManager:*(a1 + 40)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 216);
  *(v12 + 216) = v11;

  v14 = *(*(a1 + 32) + 208);

  return [v14 registerConsumer:?];
}

void sub_10010943C(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDRelevantPassProvider");
  v3 = PKPassRelevancyBundle();
  v4 = [v3 bundlePath];

  v5 = PKPassKitCoreBundle();
  v6 = [v5 bundlePath];

  v7 = [CLLocationManager alloc];
  v8 = *(a1 + 32);
  v9 = PDDefaultQueue();
  v10 = [v7 initWithEffectiveBundlePath:v4 delegate:v8 onQueue:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = v10;

  v13 = [CLLocationManager alloc];
  v14 = *(a1 + 32);
  v15 = PDDefaultQueue();
  v16 = [v13 initWithEffectiveBundlePath:v6 delegate:v14 onQueue:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v16;

  PDScheduledActivityClientRegister();
  v19 = *(a1 + 32);
  v20 = *(v19 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001095F0;
  block[3] = &unk_10083C4C0;
  block[4] = v19;
  v24 = v4;
  v25 = v6;
  v21 = v6;
  v22 = v4;
  dispatch_sync(v20, block);
}

id sub_1001095F0(void *a1)
{
  *(a1[4] + 64) = [CLLocationManager authorizationStatusForBundlePath:a1[5]];
  result = [CLLocationManager authorizationStatusForBundlePath:a1[6]];
  *(a1[4] + 80) = result;
  *(a1[4] + 40) = 1;
  return result;
}

void sub_1001096BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
  v3 = [WeakRetained relevantPassProvider:*(a1 + 32) canRecomputeWithSearchMode:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40) != 0;

    [v4 _startCardSearchUpdatingWithCachedProximity:v5 refreshingProximity:1 searchMode:?];
  }
}

uint64_t sub_1001098C8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100109A04(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void *sub_100109AC4(void *result)
{
  v1 = result[4];
  if (!*(v1 + 80))
  {
    return [*(v1 + 72) requestWhenInUseAuthorization];
  }

  return result;
}

id sub_100109E38(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 49);
    v5 = *(a1 + 40);
    v7 = 134218496;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delaying relevance update %ld, %ld, %ld", &v7, 0x20u);
  }

  return [*(a1 + 32) _reallyStartCardSearchUpdatingWithCachedProximity:*(a1 + 48) refreshingProximity:*(a1 + 49) searchMode:*(a1 + 40)];
}

void sub_10010A1B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 176) removeAllObjects];
  [*(*(a1 + 32) + 184) removeAllObjects];
  for (i = 0; i != 13; ++i)
  {
    [*(a1 + 32) _addDateRelevantAndLocationPendingCardsForStyle:i locationAvailable:*(a1 + 40)];
  }

  if (![*(*(a1 + 32) + 184) count])
  {
    [*(a1 + 32) _clearPersistedProximityInfo];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10010A730(void *a1)
{
  v6 = a1;
  if (v6)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v3 = sub_10010EC10();
    [v2 writeToFile:v3 atomically:1];

    objc_autoreleasePoolPop(v1);
  }

  else
  {
    v4 = +[NSFileManager defaultManager];
    v5 = sub_10010EC10();
    [v4 removeItemAtPath:v5 error:0];
  }
}

void sub_10010A80C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v9[0] = @"beacons";
    v9[1] = @"timestamp";
    v10[0] = v1;
    v3 = +[NSDate date];
    v10[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    v6 = sub_10010EC64();
    [v5 writeToFile:v6 atomically:1];

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    v8 = sub_10010EC64();
    [v7 removeItemAtPath:v8 error:0];
  }
}

id sub_10010B93C(uint64_t a1)
{
  [*(a1 + 32) _clearLocationSearchTimer];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 96);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Search timer expired. Using %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _handleNewLocation:*(*(a1 + 32) + 96) forceAcceptance:1 from:@"Expired Search Timer"];
}

void sub_10010BEBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beacon search timer fired; stopping beacon search.", v4, 2u);
    }

    [*(a1 + 32) _handleNewBeacons:0];
  }
}

double *sub_10010C404(double *result, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  if (a4 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a4;
  }

  if (a4 <= a6)
  {
    a4 = a6;
  }

  if (a5 >= a7)
  {
    v8 = a7;
  }

  else
  {
    v8 = a5;
  }

  if (a5 <= a7)
  {
    a5 = a7;
  }

  if (v7 >= a4)
  {
    if (result)
    {
      *result = 0.0;
      result[1] = 0.0;
    }
  }

  else if (result)
  {
    if (a4 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = a4;
    }

    *result = v7;
    result[1] = v9;
  }

  if (a4 >= v8)
  {
    if (a2)
    {
      *a2 = 0.0;
      a2[1] = 0.0;
    }
  }

  else if (a2)
  {
    *a2 = a4;
    a2[1] = v8;
  }

  if (v8 >= a5)
  {
    if (a3)
    {
      *a3 = 0.0;
      a3[1] = 0.0;
    }
  }

  else if (a3)
  {
    if (a4 <= v8)
    {
      a4 = v8;
    }

    *a3 = a4;
    a3[1] = a5;
  }

  return result;
}

void sub_10010CA30(uint64_t a1)
{
  [*(a1 + 32) _unscheduleEagerRecalculation];
  v2 = [[PDRelevantPassCatalog alloc] initWithDatabaseManager:*(*(a1 + 32) + 8) cardFileManager:*(*(a1 + 32) + 16)];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v51 = a1;
  v3 = *(*(a1 + 32) + 176);
  v4 = [v3 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v58;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        v9 = [v8 matchedRelevantDate];
        [(PDRelevantPassCatalog *)v2 insertPass:v8 forDate:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v5);
  }

  v10 = v51;
  if ([*(*(v51 + 32) + 184) count])
  {
    v11 = [CLCircularRegion alloc];
    [*(*(v51 + 32) + 88) coordinate];
    v13 = v12;
    v15 = v14;
    v16 = 0.0;
    v17 = 13;
    v18 = &unk_10068E1A0;
    do
    {
      v19 = *(v18 - 1);
      if (v19 <= *v18)
      {
        v19 = *v18;
      }

      if (v16 <= v19)
      {
        v16 = v19;
      }

      v18 += 8;
      --v17;
    }

    while (v17);
    [*(*(v51 + 32) + 88) horizontalAccuracy];
    v21 = [v11 initWithCenter:@"nearby-pass-search" radius:v13 identifier:{v15, v16 + v20}];
    v22 = [*(*(v51 + 32) + 8) locationsByUniqueIDInBoundingBoxOfRegion:v21];
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Nearby pass locations: %@", buf, 0xCu);
    }
  }

  else
  {
    v22 = 0;
  }

  v49 = objc_alloc_init(NSMutableSet);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *(*(v51 + 32) + 184);
  v24 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v24)
  {
    v25 = 0;
    v26 = *v54;
    v27 = 1.79769313e308;
    while (1)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v53 + 1) + 8 * j);
        v30 = (&__PassStyleMatchConditions + 64 * [v29 style]);
        v31 = v30 + 2;
        v32 = v30 + 3;
        v33 = v30[4];
        v34 = v30[5];
        v35 = v30[6];
        v36 = v30[7];
        v37 = [v29 matchedRelevantDate];
        if (v37)
        {
          v38 = v32;
        }

        else
        {
          v38 = v31;
        }

        v39 = *v38;
        *buf = 0;
        v52 = 0;
        v40 = [*(v51 + 32) _findMatchingLocation:buf beacon:&v52 forCandidatePass:v29 passStyleRadius:v22 usingNearbyLocations:v39] ^ 1;
        if (v37)
        {
          v41 = 0;
        }

        else
        {
          v41 = v40 == 0;
        }

        if (v41)
        {
          goto LABEL_41;
        }

        if (v37)
        {
          v42 = v40;
        }

        else
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          v43 = +[NSDate date];
          IsWithinWindowAroundReferenceDate = PDDateIsWithinWindowAroundReferenceDate(v43, v37, v33, v34);

          if (!IsWithinWindowAroundReferenceDate)
          {
            goto LABEL_48;
          }

LABEL_41:
          if (*buf)
          {
            [(PDRelevantPassCatalog *)v2 insertPass:v29 forLocation:?];
            ++v25;
            if (v27 >= v39)
            {
              v27 = v39;
            }
          }

          else if (v52)
          {
            [(PDRelevantPassCatalog *)v2 insertPass:v29 forBeacon:?];
            v48 = [v52 proximityUUID];
            [v49 addObject:v48];
          }

          else
          {
            [(PDRelevantPassCatalog *)v2 insertPass:v29 forDate:v37];
          }

          goto LABEL_48;
        }

        v45 = v40 ^ 1;
        if (!v37)
        {
          v45 = 1;
        }

        if ((v45 & 1) == 0)
        {
          v46 = +[NSDate date];
          v47 = PDDateIsWithinWindowAroundReferenceDate(v46, v37, v35, v36);

          if (v47)
          {
            goto LABEL_41;
          }
        }

LABEL_48:
      }

      v24 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (!v24)
      {
        v24 = v25 != 0;
        v10 = v51;
        goto LABEL_52;
      }
    }
  }

  v27 = 1.79769313e308;
LABEL_52:

  [*(v10 + 32) _processStateChangesFromCatalog:v2];
  [*(v10 + 32) _sendCatalog:v2];
  if ([*(v10 + 32) _shouldScheduleEagerRecalculation])
  {
    [*(v10 + 32) _scheduleEagerRecalculationWithCatalog:v2 fenceLocation:v24 minRadius:v49 beaconUUIDs:v27];
  }
}

void sub_10010D56C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [a1[4] proximityUUID];
  v6 = [v4 isEqual:v5];

  if (!v6)
  {
    v12 = @"NO";
    v13 = @"N/A";
    v14 = @"N/A";
    goto LABEL_11;
  }

  v7 = [a1[4] major];

  if (v7)
  {
    v8 = [v3 major];
    v9 = [v8 unsignedShortValue];
    v10 = [a1[4] major];
    v11 = [v10 unsignedShortValue];

    v12 = @"YES";
    if (v9 != v11)
    {
      v14 = @"N/A";
      v13 = @"NO";
LABEL_11:
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [a1[6] passTypeIdentifier];
        v22 = [a1[6] serialNumber];
        v23 = a1[4];
        v26 = 138413570;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        v32 = 2112;
        v33 = v12;
        v34 = 2112;
        v35 = v13;
        v36 = 2112;
        v37 = v14;
        v24 = "   %@:%@ card beacon %@ DOES NOT match - UUID: %@ Major: %@ Minor: %@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v24, &v26, 0x3Eu);

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v13 = @"YES";
  }

  else
  {
    v13 = @"N/A";
  }

  v15 = [a1[4] minor];

  if (v15)
  {
    v16 = [v3 minor];
    v17 = [v16 unsignedShortValue];
    v18 = [a1[4] minor];
    v19 = [v18 unsignedShortValue];

    v12 = @"YES";
    if (v17 != v19)
    {
      v14 = @"NO";
      goto LABEL_11;
    }
  }

  else
  {
    v12 = @"N/A";
  }

  [a1[5] addObject:a1[4]];
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [a1[6] passTypeIdentifier];
    v22 = [a1[6] serialNumber];
    v25 = a1[4];
    v26 = 138413570;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    v30 = 2112;
    v31 = v25;
    v32 = 2112;
    v33 = @"YES";
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v12;
    v24 = "   %@:%@ card beacon %@ MATCHES - UUID: %@ Major: %@ Minor: %@";
    goto LABEL_16;
  }

LABEL_17:
}

int64_t sub_10010D874(id a1, PKBeacon *a2, PKBeacon *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(PKBeacon *)v4 major];
  v7 = v6 != 0;

  v8 = [(PKBeacon *)v5 major];
  v9 = v8 != 0;

  v10 = [(PKBeacon *)v4 minor];
  v11 = v10 != 0;

  v12 = v11 | (2 * v7);
  v13 = [(PKBeacon *)v5 minor];
  v14 = v13 != 0;

  v15 = v14 | (2 * v9);
  if (v12 <= v15)
  {
    if (v12 >= v15)
    {
      v17 = [(PKBeacon *)v4 relevantText];
      v18 = [(PKBeacon *)v5 relevantText];
      v19 = v18;
      if (v17 | v18)
      {
        if (!v17 || v18)
        {
          if (v17 || !v18)
          {
            v16 = [v17 compare:v18];
          }

          else
          {
            v16 = 1;
          }
        }

        else
        {
          v16 = -1;
        }
      }

      else
      {
        v20 = [(PKBeacon *)v4 proximityUUIDAsString];
        v21 = [(PKBeacon *)v5 proximityUUIDAsString];
        v16 = [v20 compare:v21];
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

uint64_t sub_10010DA98(uint64_t a1)
{
  v2 = sub_1005CE718(*(*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = sub_1005CE8C4(*(*(a1 + 32) + 8), 0, *(*(&v11 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(*(a1 + 32) + 24);
  v9 = [v2 allObjects];
  [v8 setDidUpdateDynamicStatesForPassUniqueIDs:v9];

  return 1;
}

uint64_t sub_10010DC68(uint64_t a1)
{
  v2 = sub_1005CE718(*(*(a1 + 32) + 8));
  v3 = [*(a1 + 40) allPassUniqueIdentifiers];
  v4 = [[NSMutableSet alloc] initWithSet:v2];
  [v4 unionSet:v3];
  v5 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v2 containsObject:{v11, v16}];
        v13 = [v3 containsObject:v11];
        if (v12 != v13)
        {
          v14 = sub_1005CE8C4(*(*(a1 + 32) + 8), v13, v11);
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 24) setDidUpdateDynamicStatesForPassUniqueIDs:v5];
  return 1;
}

id sub_10010DFD8(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:PDDarwinNotificationEventDisplayStatusChanged])
  {
    v2 = *(a1 + 40);

    return [v2 recomputeRelevantPassesWithSearchMode:?];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:PDDarwinNotificationEventSignificantTimeChanged];
    if (result)
    {
      v3 = *(a1 + 40);

      return [v3 handleSignificantTimeChangedEvent];
    }
  }

  return result;
}

id sub_10010E1D4(uint64_t a1)
{
  result = [*(a1 + 32) _isDoingLocationSearch];
  if (result && *(a1 + 40) == *(*(a1 + 32) + 56))
  {
    v3 = [*(a1 + 48) lastObject];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [*(a1 + 32) _handleNewLocation:v3 forceAcceptance:0 from:@"CLLocationManager Delegate"];
      v4 = v5;
    }

    return _objc_release_x1(v3, v4);
  }

  return result;
}

void *sub_10010E330(void *result)
{
  if (result[4] == *(result[5] + 56))
  {
    v1 = result;
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1005C19EC(v1, v2);
    }

    return [*(v1 + 40) _startCardSearchUpdatingWithCachedProximity:0 refreshingProximity:1];
  }

  return result;
}

void *sub_10010E46C(uint64_t a1)
{
  result = [*(a1 + 32) _isDoingBeaconSearch];
  if (result)
  {
    result = *(a1 + 32);
    if (*(a1 + 40) == result[7])
    {
      v3 = *(a1 + 48);

      return [result _handleNewBeacons:v3];
    }
  }

  return result;
}

void sub_10010E58C(void *a1)
{
  if (a1[4] == *(a1[5] + 56))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Location manager ranging beacons failed with error: %@", &v4, 0xCu);
    }
  }
}

void *sub_10010E7B4(void *result)
{
  if (result[4] == *(result[5] + 56))
  {
    v1 = result;
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[6];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Location manager failed with error: %@", &v6, 0xCu);
    }

    v4 = v1[5];
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;

    return [v1[5] _startCardSearchUpdatingWithCachedProximity:1 refreshingProximity:0];
  }

  return result;
}

void sub_10010E93C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 56) == v3)
  {
    v5 = *(a1 + 48);
    if (*(v2 + 64) != v5)
    {
      *(v2 + 64) = v5;
      goto LABEL_8;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

  if (*(v2 + 72) != v3)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 48);
  if (*(v2 + 80) == v4)
  {
    goto LABEL_6;
  }

  *(v2 + 80) = v4;
LABEL_8:
  v6 = 1;
LABEL_9:
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    v11 = *(v9 + 80);
    v12 = 138543874;
    v13 = v8;
    v14 = 2048;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Change detected %{public}@, Relevancy auth status: %ld, Passbook auth status: %ld", &v12, 0x20u);
  }

  if (v6)
  {
    if ((PKRelevancyLocationServicesEnabled() & 1) == 0)
    {
      [*(a1 + 32) _stopLocationSearch];
      [*(a1 + 32) _stopBeaconSearch];
    }

    [*(a1 + 32) _startCardSearchUpdatingWithCachedProximity:0 refreshingProximity:1 searchMode:1];
  }
}

id sub_10010EC10()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"LastLocation.archive"];

  return v1;
}

id sub_10010EC64()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"LastBeacons.archive"];

  return v1;
}

uint64_t sub_10010ED98(uint64_t a1)
{
  [*(a1 + 48) deleteDynamicContentForTablePID:*(a1 + 56) type:*(a1 + 64) inDatabase:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [NSNumber numberWithLongLong:*(a1 + 56)];
    [v2 safelySetObject:v3 forKey:@"table_pid"];

    v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    [v2 safelySetObject:v4 forKey:@"type"];

    v5 = [objc_alloc(*(a1 + 48)) initWithPropertyValues:v2 inDatabase:*(a1 + 32)];
    v6 = [v5 persistentID];
    v7 = [*(a1 + 40) contentByPageType];
    v8 = [v7 allValues];
    [PaymentOfferDynamicContentPage insertOrUpdateDynamicContentPages:v8 forDynamicContentPID:v6 inDatabase:*(a1 + 32)];
  }

  return 1;
}

void sub_10010F7E0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionSourceIdentifier];
  v3 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v4 = [*(a1 + 40) uniqueID];
  v5 = [*(*(a1 + 48) + 24) applePayContainer];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100005AE0;
  v22[4] = sub_10000B17C;
  v23 = 0;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = v4;
    v26 = 2112;
    v27 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "A payment application was added for pass with uniqueID %{public}@ and transactionSourceIdentifier %@", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10010FAD4;
  v18[3] = &unk_100846BE8;
  v18[4] = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = v22;
  [v3 addOperation:v18];
  v7 = +[NSNull null];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010FDC0;
  v11[3] = &unk_100846C38;
  v11[4] = *(a1 + 48);
  v16 = v22;
  v8 = v5;
  v12 = v8;
  v9 = v4;
  v13 = v9;
  v17 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v10 = [v3 evaluateWithInput:v7 completion:v11];

  _Block_object_dispose(v22, 8);
}

void sub_10010FAD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010FBC8;
  v15[3] = &unk_1008420F8;
  v15[4] = v9;
  v16 = v8;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v19 = v7;
  v20 = v12;
  v17 = v11;
  v18 = v6;
  v13 = v6;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_10010FBC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010FC90;
  v7[3] = &unk_100846BC0;
  v7[4] = v2;
  v6 = *(a1 + 64);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 56);
  [v2 _queue_relevantTransactionSourceIdentifiersToSyncForPaymentApplication:v3 onPaymentPass:v4 completion:v7];
}

void sub_10010FC90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FD6C;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_10010FD6C(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10010FDC0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FECC;
  block[3] = &unk_100846C10;
  v14 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = *v2;
  v13 = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v3, block);
}

id sub_10010FECC(uint64_t a1)
{
  v2 = [*(*(*(a1 + 72) + 8) + 40) count];
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController will sync transactions for transaction source identifiers %@", buf, 0xCu);
    }

    [*(a1 + 32) fetchAndStoreRecordsForPassUniqueID:*(a1 + 40) transactionSourceIdentifiers:*(*(*(a1 + 72) + 8) + 40) fullFetchIgnoringChangeToken:1 ignoreExistingRecordHash:*(a1 + 80) groupName:PKCloudStoreOperationGroupUserActionExplicit groupNameSuffix:*(a1 + 48) completion:*(a1 + 64)];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController will not sync transactions for pass %{public}@ since there are no relevant transaction source identifiers.", buf, 0xCu);
    }
  }

  return [*(a1 + 56) _updateScheduledActivityIfNeccessary];
}

void sub_10011019C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100110238;
  v3[3] = &unk_100846CB0;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _queue_performDailyTransactionSyncFromDate:v2 returnRecords:1 formReport:1 completion:v3];
}

void sub_100110238(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 transactionSyncReportItemsByAccountIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100110308;
  v9[3] = &unk_100846C88;
  v9[4] = *(a1 + 32);
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

void sub_100110308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [[PKAccountTransactionSyncReport alloc] initWithItems:v6 accountIdentifier:v5];
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending account report to PDAccountManager: %@", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 32) sendAccountReport:v7 trigger:1 completion:0];
  }
}

void sub_100110584(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) passWithUniqueIdentifier:*(a1 + 40)];
  v4 = [v2 paymentPass];

  v3 = [v4 devicePrimaryPaymentApplication];
  [*(a1 + 32) didAddPaymentApplication:v3 forPaymentPass:v4 groupNameSuffix:0 ignoreExistingRecordHash:1 completion:*(a1 + 48)];
}

void sub_1001106AC(uint64_t a1)
{
  [*(a1 + 32) _updateScheduledActivityIfNeccessary];
  v2 = [*(a1 + 40) transactionSourceIdentifier];
  v3 = [*(a1 + 40) associatedPassUniqueID];
  v4 = [*(*(a1 + 32) + 8) passWithUniqueIdentifier:v3];
  v5 = [v4 paymentPass];

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "An account was added for pass with uniqueID %{public}@ while the pass was already here, trigger fetch to recover account events", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v5 devicePrimaryPaymentApplication];
    [v7 didAddPaymentApplication:v8 forPaymentPass:v5 groupNameSuffix:PKCloudStoreOperationGroupSuffixAccountAdded ignoreExistingRecordHash:0 completion:0];
  }

  if (v2)
  {
    v9 = [*(*(a1 + 32) + 24) applePayContainer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001108A4;
    v11[3] = &unk_100844D48;
    v12 = *(a1 + 40);
    v13 = v2;
    v14 = v9;
    v10 = v9;
    [v10 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v13 completion:v11];
  }
}

void sub_1001108A4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v7 = *(a1 + 40);
    v8 = @"account";
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v3 fetchAndStoreRecordsForPassUniqueID:0 transactionSourceIdentifiers:v4 fullFetchIgnoringChangeToken:1 ignoreExistingRecordHash:0 groupName:PKCloudStoreOperationGroupUserActionExplicit groupNameSuffix:PKCloudStoreOperationGroupSuffixAccountAdded completion:0];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) accountIdentifier];
      v6 = *(a1 + 40);
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController will not sync transaction from CloudKit for account identifier %@ and transactionSourceIdentifier %@", buf, 0x16u);
    }
  }
}

void sub_100110F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting last transaction record sync date to %{public}@", buf, 0xCu);
  }

  PDSetCloudStoreTransactionSourceControllerLastSync();
  v6 = [v3 transactionSyncReportItemsByAccountIdentifier];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001110D0;
  v10[3] = &unk_100846C88;
  v10[4] = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100111294;
  v9[3] = &unk_10083C470;
  v9[4] = v7;
  dispatch_async(v8, v9);
}

void sub_1001110D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011119C;
  block[3] = &unk_10083C4C0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_10011119C(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  if ([*(a1 + 40) count])
  {
    v2 = [[PKAccountTransactionSyncReport alloc] initWithItems:*(a1 + 40) accountIdentifier:*(a1 + 48)];
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending account report to PDAccountManager: %@", &v4, 0xCu);
    }

    [*(*(a1 + 32) + 32) sendAccountReport:v2 trigger:3 completion:0];
  }
}

void sub_10011129C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111310;
  block[3] = &unk_10083C470;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_100111610(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_100111630(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100111700;
  v13[3] = &unk_100846CD8;
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v10;
  v13[4] = v8;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_async(v9, v13);
}

void sub_100111700(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001117B4;
  v5[3] = &unk_100846BC0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _queue_allRelevantTransactionSourceIdentifiersWithCompletion:v5];
}

void sub_1001117B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111890;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100111890(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001118E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001119D0;
  block[3] = &unk_100846D00;
  v12 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v13 = *(a1 + 72);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(v2, block);
}

void sub_1001119D0(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController will sync recently modified transactions for %@", buf, 0xCu);
  }

  v4 = [*(*(*(a1 + 64) + 8) + 40) allKeys];
  v5 = [NSSet setWithArray:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100111B54;
  v11[3] = &unk_100846CB0;
  v10 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v10;
  [v6 backgroundModifiedRecordSyncForTranasctionSourceIdentifiers:v5 fromDate:v7 returnRecords:v8 formReport:v9 completion:v11];
}

void sub_100111B54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111C30;
  block[3] = &unk_10083F490;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100111C30(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_100111EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100111F14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100111FE4;
  v13[3] = &unk_100846CD8;
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v10;
  v13[4] = v8;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_async(v9, v13);
}

void sub_100111FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100112098;
  v5[3] = &unk_100846BC0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _queue_allRelevantTransactionSourceIdentifiersWithCompletion:v5];
}

void sub_100112098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112174;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100112174(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001121C8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1[4] + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001122B4;
  v15[3] = &unk_100846D78;
  v10 = a1[5];
  v9 = a1[6];
  v19 = v7;
  v20 = v9;
  v16 = v6;
  v11 = v10;
  v12 = a1[4];
  v17 = v11;
  v18 = v12;
  v21 = a1[7];
  v13 = v6;
  v14 = v7;
  dispatch_async(v8, v15);
}

void sub_1001122B4(uint64_t a1)
{
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController background record sync starting for: %@", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = [*(*(*(a1 + 64) + 8) + 40) allKeys];
    v6 = [NSSet setWithArray:v5];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011249C;
    v10[3] = &unk_100846D50;
    v7 = *(a1 + 72);
    v8 = *(a1 + 56);
    v10[4] = *(a1 + 48);
    v13 = v7;
    v12 = v8;
    v11 = *(a1 + 32);
    [v4 backgroundRecordChangedSyncForTranasctionSourceIdentifiers:v6 completion:v10];
  }

  else
  {
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

void sub_10011249C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112578;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100112578(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001125CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112668;
  block[3] = &unk_100845D48;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(v1, block);
}

uint64_t sub_100112668(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController background record sync completed with error %@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_100112A7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(v9 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100112B60;
  v16[3] = &unk_1008420F8;
  v16[4] = v9;
  v11 = v8;
  v12 = a1[6];
  v13 = a1[7];
  v17 = v11;
  v18 = v12;
  v20 = v7;
  v21 = v13;
  v19 = v6;
  v14 = v6;
  v15 = v7;
  dispatch_async(v10, v16);
}

void sub_100112B60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100112C28;
  v7[3] = &unk_100846BC0;
  v7[4] = v2;
  v6 = *(a1 + 64);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 56);
  [v2 _queue_relevantTransactionSourceIdentifiersToSyncForPaymentApplication:v3 onPaymentPass:v4 completion:v7];
}

void sub_100112C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112D04;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100112D04(void *a1)
{
  [*(*(a1[7] + 8) + 40) addEntriesFromDictionary:a1[4]];
  v2 = *(a1[6] + 16);

  return v2();
}

void sub_100112D58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100112E24;
  v13[3] = &unk_100846DF0;
  v13[4] = v9;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v11 = v6;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_100112E24(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100112EF4;
  v9[3] = &unk_100846E18;
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  *&v7 = v3;
  *(&v7 + 1) = v6;
  *&v8 = v5;
  *(&v8 + 1) = *v2;
  v10 = v7;
  v11 = v8;
  [v4 defaultAccountForFeature:5 completion:v9];
}

void sub_100112EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100112FCC;
  v8[3] = &unk_100846DF0;
  v9 = v3;
  v11 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v10 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_100112FCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = [v2 transactionSourceIdentifier];
    if (v6)
    {
      v3 = [*(a1 + 32) accountIdentifier];
      v4 = [NSString stringWithFormat:@"Savings Account: %@", v3];

      [*(*(*(a1 + 56) + 8) + 40) safelySetObject:v4 forKey:v6];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}