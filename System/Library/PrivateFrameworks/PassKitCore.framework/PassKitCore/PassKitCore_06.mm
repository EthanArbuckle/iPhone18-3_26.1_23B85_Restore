void sub_1001130DC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113178;
  block[3] = &unk_100845D48;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(v1, block);
}

void sub_100113178(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController all relevant transactionSourceIdentifiers: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(*(*(a1 + 40) + 8) + 40) copy];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_1001137C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001137E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100113800(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) length])
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v8 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011392C;
    v12[3] = &unk_100846E90;
    v11 = *(a1 + 56);
    v12[4] = v8;
    v17 = v11;
    v16 = v7;
    v13 = v6;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    [v10 accountWithIdentifier:v9 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_10011392C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113A4C;
  block[3] = &unk_100846E68;
  v13 = v3;
  v11 = *(a1 + 64);
  v5 = v11;
  v16 = v11;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_100113A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v2);
    v3 = *(*(a1 + 72) + 16);

    v3();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 56) uniqueID];
      *buf = 138412546;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "The account with identifier %@ for pass %{public}@ is not on device. Fetching all the accounts now.", buf, 0x16u);
    }

    v7 = *(a1 + 64);
    v8 = *(v7 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100113C24;
    v10[3] = &unk_100846E40;
    v9 = *(a1 + 80);
    v10[4] = v7;
    v14 = v9;
    v11 = *(a1 + 48);
    v13 = *(a1 + 72);
    v12 = *(a1 + 40);
    [v8 updateAccountsWithCompletion:v10];
  }
}

void sub_100113C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113D24;
  block[3] = &unk_10083E920;
  v13 = v3;
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  *&v10 = v7;
  *(&v10 + 1) = v5;
  v14 = v9;
  v15 = v10;
  v11 = v3;
  dispatch_async(v4, block);
}

void sub_100113D24(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100113DDC;
  v6[3] = &unk_100842580;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 pk_firstObjectPassingTest:v6];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100113DDC(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
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

void sub_100113E60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (([*(a1 + 32) hasAssociatedPeerPaymentAccount] & 1) != 0 && (objc_msgSend(*(*(a1 + 40) + 8), "hasPeerPaymentAccount") & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "The peer payment account was missing from device after a provisioning. Updating now.", buf, 2u);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100113FA8;
    v11[3] = &unk_100846EE0;
    v11[4] = v9;
    v13 = v7;
    v12 = v6;
    [v10 updateAccountAndAssociatedAccountsWithCompletion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_100113FA8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100114050;
  v3[3] = &unk_10083C820;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_100114068(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) hasAssociatedPeerPaymentAccount])
  {
    v8 = [*(*(a1 + 40) + 8) peerPaymentAccount];
    v9 = v8;
    if (v8)
    {
      v22 = v7;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v8;
      v10 = [v8 associatedAccountInformation];
      v11 = [v10 associatedAccounts];

      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = [v16 transactionSourceIdentifier];
            if (v17)
            {
              v18 = [v16 identifier];
              v19 = [v16 altDSID];
              v20 = [NSString stringWithFormat:@"Peer Payment Associated Account: %@, %@", v18, v19];

              [*(a1 + 48) safelySetObject:v20 forKey:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      v7 = v22;
      v6 = v23;
      v22[2](v22, v23, 0);
      v9 = v21;
    }

    else
    {
      v7[2](v7, v6, 0);
    }
  }

  else
  {
    v7[2](v7, v6, 0);
  }
}

void sub_10011429C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) length])
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v8 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001143AC;
    v11[3] = &unk_100846F08;
    v11[4] = v8;
    v12 = *(a1 + 48);
    v14 = v7;
    v13 = v6;
    [v10 accountUsersForAccountWithIdentifier:v9 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1001143AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100114490;
  v6[3] = &unk_10083EB28;
  v7 = v3;
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_100114490(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    v16 = *v25;
    do
    {
      v5 = 0;
      v17 = v3;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * v5);
        if (([v6 isCurrentUser] & 1) == 0)
        {
          v19 = v5;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v7 = [v6 transactionSourceIdentifiers];
          v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v21;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v20 + 1) + 8 * i);
                v13 = [v6 description];
                v14 = [NSString stringWithFormat:@"Account User: %@", v13];

                [*(a1 + 40) safelySetObject:v14 forKey:v12];
              }

              v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v9);
          }

          v4 = v16;
          v3 = v17;
          v5 = v19;
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1001146A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) length] && (v8 = *(*(*(a1 + 56) + 8) + 40)) != 0 && objc_msgSend(v8, "feature") == 2)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001147C0;
    v11[3] = &unk_10083FD00;
    v11[4] = v9;
    v14 = v7;
    v12 = v6;
    v13 = *(a1 + 48);
    dispatch_async(v10, v11);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1001147C0(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001148A0;
  v8[3] = &unk_100846F30;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v2;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 defaultAccountForFeature:5 completion:v8];
}

void sub_1001148A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100114984;
  v6[3] = &unk_10083FD00;
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_100114984(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = [v2 transactionSourceIdentifier];
    if (v6)
    {
      v3 = [*(a1 + 32) accountIdentifier];
      v4 = [NSString stringWithFormat:@"Savings Account: %@", v3];

      [*(a1 + 48) safelySetObject:v4 forKey:v6];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

void sub_100114A98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) count])
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v9 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100114BA0;
    block[3] = &unk_100845DC0;
    block[4] = v9;
    v11 = v8;
    v12 = *(a1 + 48);
    v14 = v11;
    v17 = v12;
    v16 = v7;
    v15 = v6;
    dispatch_async(v10, block);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void sub_100114BA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100114C60;
  v6[3] = &unk_100846BC0;
  v6[4] = v2;
  v5 = *(a1 + 56);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 48);
  [v2 _queue_filterRelevantTransactionSourceIdentifiersThatCanSyncWithCloudKit:v3 completion:v6];
}

void sub_100114C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114D3C;
  block[3] = &unk_100846B98;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100114D3C(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100114D90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114E48;
  block[3] = &unk_100846F80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v6 = *(a1 + 48);
  v5 = v6;
  v10 = v6;
  dispatch_async(v2, block);
}

void sub_100114E48(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uniqueID];
    v4 = [*(a1 + 32) organizationName];
    v5 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138543874;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Revelant cloud store transaction source identifiers for payment pass uniqueID %{public}@, pass name %@.\n%@", buf, 0x20u);
  }

  v6 = *(*(a1 + 40) + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100114FB0;
  v9[3] = &unk_1008447A0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  dispatch_async(v6, v9);
}

void sub_100114FB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100115200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100115218(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001152F4;
  v12[3] = &unk_100845960;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v6;
  v17 = v9;
  v15 = v8;
  v10 = v6;
  v11 = v5;
  [v7 addOperation:v12];
}

void sub_1001152F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001153F8;
  v15[3] = &unk_100846FF8;
  v11 = a1[7];
  v10 = a1[8];
  v15[4] = a1[6];
  v20 = v10;
  v16 = v11;
  v12 = a1[5];
  v18 = v6;
  v19 = v7;
  v17 = v12;
  v13 = v6;
  v14 = v7;
  [v8 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v9 completion:v15];
}

void sub_1001153F8(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001154F4;
  v9[3] = &unk_100846FD0;
  v13 = a2;
  v12 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, v9);
}

uint64_t sub_1001154F4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(*(*(a1 + 64) + 8) + 40) safelySetObject:*(a1 + 32) forKey:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer will not sync transaction from CloudKit with transactionSourceIdentifier %@, description %@", &v6, 0x16u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1001155E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011567C;
  v5[3] = &unk_1008447A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void sub_10011567C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100115774(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = PDScheduledActivityExists();
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

void sub_100115B90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PKPassLegalAgreement alloc] _initForDatabase];
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v6 withProperties:v5 values:a3];

  [*(a1 + 40) addObject:v6];
}

void sub_100115FBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1001161D8(id a1, PKPassLegalAgreement *a2, id a3)
{
  v3 = a2;
  [(PKPassLegalAgreement *)v3 setType:PKUserLegalAgreementTypeFromString()];
}

void sub_100116230(id a1, PKPassLegalAgreement *a2, id a3)
{
  v4 = a2;
  -[PKPassLegalAgreement setAgreementUpdated:](v4, "setAgreementUpdated:", [a3 BOOLValue]);
}

void sub_100116288(id a1, PKPassLegalAgreement *a2, id a3)
{
  v4 = a2;
  -[PKPassLegalAgreement setRemovePassOnDecline:](v4, "setRemovePassOnDecline:", [a3 BOOLValue]);
}

void sub_100116434(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKRule);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [v7 parsePredicateFormat];
  [*(a1 + 40) addObject:v7];
}

void sub_10011661C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKRule);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [v7 parsePredicateFormat];
  [*(a1 + 40) addObject:v7];
}

void sub_100116CF8(id a1, PKRule *a2, id a3)
{
  v3 = a2;
  v4 = _OSVersionRequirementRangeForSQLValue();
  [(PKRule *)v3 setOsVersionRequirementRange:v4];
}

uint64_t sub_100116FE4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] != 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10011749C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) recordExpressUpgradeAttemptStatus:a3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v7;
    if (a3 != 2)
    {
      v6 = 0;
    }

    (*(v5 + 16))(v5, v6, a3);
  }
}

void sub_100117974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 88));
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a38);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 160), 8);
  objc_destroyWeak((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_1001179C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
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
    v8 = WeakRetained;
    [WeakRetained[6] invalidateAssertionOfType:1 withIdentifier:? handler:?];
    dispatch_source_cancel(*(*(*(a1 + 40) + 8) + 40));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    WeakRetained = v8;
  }
}

void sub_100117A70(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117B2C;
  block[3] = &unk_100847220;
  block[4] = *(a1 + 48);
  objc_copyWeak(&v5, (a1 + 64));
  block[5] = *(a1 + 56);
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);
}

void sub_100117B2C(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v9 = WeakRetained;
    [WeakRetained[6] invalidateAssertionOfType:1 withIdentifier:? handler:?];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    WeakRetained = v9;
  }
}

void sub_100117BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_resume(*(*(*(a1 + 72) + 8) + 40));
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);
    v5 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100117DA4;
    v17[3] = &unk_100847298;
    objc_copyWeak(&v21, (a1 + 88));
    v20 = *(a1 + 64);
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v18 = v6;
    v19 = v7;
    [v4 requestPassUpgrade:v3 pass:v5 diagnosticReason:@"Transit Notification Service Automatic" completion:v17];

    objc_destroyWeak(&v21);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pass ugprade failed because an assertion could not be acquired", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100118158;
    block[3] = &unk_1008472C0;
    v14 = *(a1 + 80);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v13 = v10;
    v15 = v11;
    dispatch_async(v9, block);
  }
}

void sub_100117DA4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (v5 || !v6)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[4];
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to upgrade default payment pass to express: %@ %@", buf, 0x16u);
      }

      (*(a1[6] + 2))();
    }

    else
    {
      v8 = [PKExpressPassInformation alloc];
      v9 = [a1[5] _technologyTest];
      v10 = [v8 initForPaymentPass:v6 withTechologyTest:v9];

      if (v10)
      {
        v11 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v10 forSecureElementPass:v6];
        v12 = WeakRetained[3];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10011806C;
        v17[3] = &unk_100847270;
        objc_copyWeak(&v20, a1 + 7);
        v19 = a1[6];
        v18 = a1[4];
        sub_1005C57C4(v12, v11, 0, v17);

        objc_destroyWeak(&v20);
      }

      else
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = a1[4];
          *buf = 138412290;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Express info failed to init: %@", buf, 0xCu);
        }

        (*(a1[6] + 2))();
      }
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_10011806C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
LABEL_9:
    v7 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to set default payment pass as express.", v8, 2u);
    }

    goto LABEL_9;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set default payment pass as express.", buf, 2u);
  }

  v7 = *(*(a1 + 40) + 16);
LABEL_10:
  v7();
}

void sub_100118158(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  (*(a1[4] + 16))();
  dispatch_source_cancel(*(*(a1[6] + 8) + 40));
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1001183CC(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[AccountVirtualCardStatusUpdate alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(AccountVirtualCardStatusUpdate *)v5 virtualCardStatusUpdate];
  [v3 addObject:v4];
}

void sub_100118688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(SQLiteEntity *)AccountVirtualCardStatusUpdate applyPropertySetters:*(a1 + 32) toObject:*(a1 + 40) withProperties:a2 values:a3];
  v4 = [*(a1 + 48) persistentID];
  v5 = [*(a1 + 48) database];
  v8 = [VirtualCard virtualCardsForVirtualCardStatusUpdatePID:v4 inDatabase:v5];

  v6 = *(a1 + 40);
  v7 = [v8 allObjects];
  [v6 setUpdatedVirtualCards:v7];
}

void sub_100118954(id a1, PKAccountVirtualCardStatusUpdate *a2, id a3)
{
  v4 = a2;
  -[PKAccountVirtualCardStatusUpdate setReason:](v4, "setReason:", [a3 integerValue]);
}

void sub_100118FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100119400(uint64_t a1)
{
  if (PKPassbookIsSupported())
  {
    v2 = [[PDUbiquityManager alloc] initWithDelegate:*(a1 + 32)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = *(*(a1 + 32) + 32);

    [v5 start];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Passbook is not supported - sync disabled", v7, 2u);
    }
  }
}

void sub_100119AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v55 - 192), 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_100119B1C(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119BB0;
  v6[3] = &unk_100847390;
  v6[4] = a1[5];
  v3 = [v2 pk_createArrayByApplyingBlock:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100119BB0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSNull null];
  }

  v5 = v4;

  return v5;
}

void sub_100119C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  v4 = v3 * a2;
  if (v3 * a2 < v2)
  {
    v6 = (v4 + v3);
    if (v6 >= v2)
    {
      v6 = *(a1 + 96);
    }

    if (a2 == 1)
    {
      v7 = *(a1 + 96);
    }

    else
    {
      v7 = v6;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v31 = v4;
      v32 = 2048;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: beginning image migration for indices [%lu, %lu).", buf, 0x16u);
    }

    v10 = *(a1 + 120);
    v27 = v4;
    if (v4 < v7)
    {
      v29 = 0;
      v28 = 0;
      v11 = &PKPaymentNetworkAmex_ptr;
      *&v9 = 134217984;
      v26 = v9;
      while (1)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        v14 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v4];
        v15 = [(PKPaymentNetwork *)v11[475] null];

        if (v14 == v15)
        {

          v14 = 0;
          if (v10)
          {
LABEL_13:
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v31 = v4;
              v32 = 2112;
              v33 = v13;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: partially migrating images for index %lu, pass (%@).", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_16;
          }
        }

        else if (v10)
        {
          goto LABEL_13;
        }

        v16 = v7;
        v17 = [*(a1 + 40) _cardWithUniqueID:v13 cardDirectoryCoordinator:v14 error:{0, v26}];
        v18 = [v17 passType];
        v19 = [v17 style];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          v31 = v4;
          v32 = 2048;
          v33 = v18;
          v34 = 2048;
          v35 = v19;
          v36 = 2112;
          v37 = v13;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: migrating images for index %lu, pass (%lu-%ld:%@).", buf, 0x2Au);
        }

        ++v29;

        v20 = *(a1 + 40);
        v21 = [v17 displayProfile];
        [v20 _createImageSetsForCardWithUniqueID:v13 cardDirectoryCoordinator:v14 displayProfile:v21];

        objc_autoreleasePoolPop(v12);
        if ((v28 + 1) < 8u)
        {
          ++v28;
          v10 = 0;
          v7 = v16;
LABEL_22:
          v11 = &PKPaymentNetworkAmex_ptr;
          goto LABEL_23;
        }

        v7 = v16;
        if (CFAbsoluteTimeGetCurrent() - *(a1 + 104) < *(a1 + 112))
        {
          v10 = 0;
          v28 = 0;
          goto LABEL_22;
        }

        v11 = &PKPaymentNetworkAmex_ptr;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v26;
          v31 = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: image migration timing out at index %lu.", buf, 0xCu);
        }

        os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
        *(*(*(a1 + 64) + 8) + 24) = fmax(*(*(*(a1 + 64) + 8) + 24), CFAbsoluteTimeGetCurrent());
        os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
        v28 = 0;
LABEL_16:
        v10 = 1;
LABEL_23:
        if (v7 == ++v4)
        {
          goto LABEL_31;
        }
      }
    }

    v29 = 0;
LABEL_31:
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    if (v10)
    {
      v22 = *(*(*(a1 + 72) + 8) + 40);
      if (!v22)
      {
        v23 = objc_alloc_init(NSMutableIndexSet);
        v24 = *(*(a1 + 72) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

        v22 = *(*(*(a1 + 72) + 8) + 40);
      }

      [v22 addIndexesInRange:{v29 + v27, &v7[-v29 - v27], v26}];
    }

    *(*(*(a1 + 80) + 8) + 24) += v29;
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }
}

void sub_10011A07C(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDCardFileManager");
  v3 = v2;
  if (*(a1 + 56))
  {
    v17 = v2;
    v4 = 0;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      v7 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v4];
      v8 = +[NSNull null];

      if (v7 == v8)
      {

        v7 = 0;
      }

      v9 = [*(a1 + 40) _cardWithUniqueID:v6 cardDirectoryCoordinator:v7 error:0];
      v10 = [v9 passType];
      v11 = [v9 style];
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v19 = v4;
        v20 = 2048;
        v21 = *&v10;
        v22 = 2048;
        v23 = v11;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: migrating images for deferred index %lu, pass (%lu-%ld:%@).", buf, 0x2Au);
      }

      v13 = *(a1 + 40);
      v14 = [v9 displayProfile];
      [v13 _createImageSetsForCardWithUniqueID:v6 cardDirectoryCoordinator:v7 displayProfile:v14];

      objc_autoreleasePoolPop(v5);
      ++v4;
      v15 = *(a1 + 56);
    }

    while (v4 < v15);
    v3 = v17;
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    v15 = 0;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    *buf = 134218240;
    v19 = v15;
    v20 = 2048;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: finished deferred image migration for %lu passes in %0.3fs.", buf, 0x16u);
  }
}

void sub_10011A3BC(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(*(a1 + 32) + 40);
  v24 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:&__NSArray0__struct options:4 error:&v24];
  v5 = v24;

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to enumerate cards directory: %@", buf, 0xCu);
    }
  }

  v19 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = PKRawPassExtension;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 lastPathComponent];
        v15 = [v14 pathExtension];
        v16 = [v15 isEqualToString:v11];

        if (v16)
        {
          v17 = *(a1 + 40);
          v18 = sub_10011A5CC(v13);
          [v17 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }
}

id sub_10011A5CC(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 stringByDeletingPathExtension];

  return v2;
}

void sub_10011A894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011A8B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011A904(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:NSUnderlyingErrorKey];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [v3 domain];
  if (([v4 isEqualToString:PKPassKitErrorDomain] & 1) == 0)
  {

    goto LABEL_8;
  }

  v5 = [v3 code];

  if (v5 != -6000)
  {
LABEL_8:
    [*(a1 + 48) _deletePossibleInvalidCardWithUniqueID:*(a1 + 40) cardDirectoryCoordinator:*(*(*(a1 + 56) + 8) + 40)];
    goto LABEL_9;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping delete of missing object with uniqueID: %@ due to signature check being unreachable", &v8, 0xCu);
  }

LABEL_9:
}

void sub_10011AB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AB9C(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_10011AF28()
{
  if (qword_100924298 != -1)
  {
    sub_1005C1A7C();
  }

  v1 = qword_100924290;

  return v1;
}

void sub_10011B088(uint64_t a1)
{
  v4 = PDOSTransactionCreate("PDCardFileManager");
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _contentForCardWithUniqueID:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10011B318(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011B368(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_1005D23AC([PDPassDaemonData alloc], v3);

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_10011B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011B638(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011B688(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSBundle bundleWithURL:v3];
    v27 = v3;
    v5 = PKPassPrivateDirectoryURLWithPassURL();
    v6 = [NSBundle bundleWithURL:v5];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = a1;
    obj = *(a1 + 32);
    v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v31)
    {
      goto LABEL_28;
    }

    v30 = *v39;
    while (1)
    {
      for (i = 0; i != v31; i = v23 + 1)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = i;
        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableArray);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = v8;
        v10 = sub_1005AD1B0(v8);
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * j);
              v16 = sub_100004338(v15);
              v17 = sub_1000044D8(v15);
              v18 = [v16 createTileForState:v17 childTiles:0 withBundle:v4 privateBundle:v6];

              if (v18)
              {
                [v9 addObject:v18];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v12);
        }

        if ([v9 count])
        {
          v19 = [v9 copy];
        }

        else
        {
          v19 = 0;
        }

        v20 = sub_100004338(v32);
        v21 = [v20 metadata];
        if ([v21 isGroupType])
        {
          v22 = [v19 count];

          v23 = v33;
          if (!v22)
          {
            goto LABEL_26;
          }
        }

        else
        {

          v23 = v33;
        }

        v24 = sub_100004338(v32);
        v25 = sub_1000044D8(v32);
        v26 = [v24 createTileForState:v25 childTiles:v19 withBundle:v4 privateBundle:v6];

        if (v26)
        {
          [*(*(*(v28 + 40) + 8) + 40) addObject:v26];
        }

LABEL_26:
      }

      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v31)
      {
LABEL_28:

        v3 = v27;
        break;
      }
    }
  }
}

void sub_10011BBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10011BBF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011BC90;
  v4[3] = &unk_1008474A8;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 performCoordinatedAction:v4];
}

void sub_10011BC90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v3 path];
    v6 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = [v4 fileExistsAtPath:v5];
  }

  else
  {
    v6 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(*(*v6 + 8) + 24) == 1)
  {
    v7 = *(a1 + 32);
    v8 = v3;
    if (qword_1009242B8 != -1)
    {
      sub_1005C1B1C();
    }

    if (qword_1009242C0)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 path];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = qword_1009242C0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to move %@ due to previous error: %@", &v12, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      v11 = PKWriteBadPass();
    }

    *(*(*(a1 + 48) + 8) + 24) = v11;
  }
}

void sub_10011BF90(uint64_t a1)
{
  v5 = PDOSTransactionCreate("PDCardFileManager");
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) _cachedImageSetContainerForUniqueID:*(a1 + 40) type:*(a1 + 72) withDisplayProfile:*(a1 + 48) displayTraits:*(a1 + 56)];
  (*(v3 + 16))(v3, v4);

  objc_autoreleasePoolPop(v2);
}

void sub_10011C154(uint64_t a1)
{
  v5 = PDOSTransactionCreate("PDCardFileManager");
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) _imageSetContainerForUniqueID:*(a1 + 40) ofType:*(a1 + 72) withDisplayProfile:*(a1 + 48) suffix:*(a1 + 56)];
  (*(v3 + 16))(v3, v4);

  objc_autoreleasePoolPop(v2);
}

void sub_10011C7C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10011C830(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  v5 = *(a1[8] + 8);
  v6 = *(a1[9] + 8);
  v7 = *(a1[10] + 8);
  obj = 0;
  v8 = [v2 _dc_writeCard:v3 writtenCard:v4 + 40 diff:v5 + 40 daemonData:v6 + 40 undecryptableAssets:v7 + 40 error:&obj];
  v9 = obj;
  *(*(a1[6] + 8) + 24) = v8;
  objc_storeStrong((*(a1[11] + 8) + 40), v9);
}

void sub_10011C9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = sub_10011AF28();
  v2 = [PDCardFileManager localNonUbiquitousCatalogURL]_0();
  [v1 writeToURL:v3 nonUbiquitousCatalogURL:v2 atomically:1];
}

void sub_10011CB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011CB88(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10011CE88(uint64_t a1)
{
  result = [*(a1 + 32) _dc_deleteCardWithUniqueID:*(a1 + 40) cardDirectoryCoordinator:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_10011D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D18C(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011D8A0(uint64_t a1, char a2, char a3)
{
  v6 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D974;
  block[3] = &unk_100847598;
  v10 = *(a1 + 32);
  v12 = a2;
  v13 = a3;
  v8 = *(a1 + 40);
  v7 = v8;
  v11 = v8;
  dispatch_async(v6, block);
}

void sub_10011D974(uint64_t a1)
{
  v2 = [*(a1 + 32) passTypeIdentifier];
  v3 = [*(a1 + 32) serialNumber];
  v4 = [NSString stringWithFormat:@"%@/%@", v2, v3];

  LODWORD(v3) = *(a1 + 56);
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 != 1)
  {
    if (v6)
    {
      *buf = 138412290;
      v13 = v4;
      v10 = "Revocation check for pass [%@] failed";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v6)
  {
    v7 = @"not revoked";
    if (*(a1 + 57))
    {
      v7 = @"REVOKED";
    }

    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Revocation check for pass [%@] succeeded with result: %@", buf, 0x16u);
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [*(a1 + 32) uniqueID];
  [v8 notePassWithUniqueID:v9 isRevoked:*(a1 + 57)];

  if (*(a1 + 57) == 1)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      v10 = "Certificate revoked for pass (%@)";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_10011DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DDFC(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E010(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [PKImageSet cachedXPCContainerForImageSetWithType:v2[8] displayProfile:v2[4] displayTraits:v2[5] cacheURL:v2[6]];
    v4 = *(v2[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1(v3, v5);
  }

  return result;
}

void sub_10011E1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E1EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10011E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011E400(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[8];
    v4 = a1[4];
    v5 = a2;
    PKScreenScale();
    v7 = v6;
    PKScreenSize();
    v10 = [PKImageSet createXPCContainerForImageSetWithType:v3 displayProfile:v4 screenScale:a1[5] screenSize:v5 suffix:a1[6] fileURL:v7 cacheURL:v8, v9];

    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

uint64_t sub_10011E744(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_10011E794(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [PKContent createWithFileURL:a2 dataTypeIdentifier:PKPassDataTypeIdentifier];
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1(v3, v5);
  }

  return result;
}

id sub_10011E7F8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _objectURLForUniqueID:v3];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Content for object with unique ID %@ unavailable at %@", &v7, 0x16u);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CardFileManager unable to load content for uniqueID %@", &v7, 0xCu);
  }

  return [*(a1 + 40) _deletePossibleInvalidCardWithUniqueID:*(a1 + 32) cardDirectoryCoordinator:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_10011EC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *sub_10011EC50(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    v4 = [PKFileDataAccessor alloc];
    v5 = *(v2[6] + 8);
    obj = *(v5 + 40);
    v6 = [v4 initWithFileURL:v3 error:&obj coordinator:v2[4]];

    objc_storeStrong((v5 + 40), obj);
    v7 = *(v2[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return [*(*(v2[5] + 8) + 40) setExplicitDataTypeIdentifier:PKPassDataTypeIdentifier];
  }

  return result;
}

void sub_10011EF18(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [a2 path];
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to instantiate card from %@ - %@: %@", &v8, 0x20u);
  }
}

void sub_10011F8AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  [WeakRetained removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:*(a1 + 48)];
}

void sub_10011F900(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_1005D23AC([PDPassDaemonData alloc], v3);

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_10011F978(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDCardFileManager");
  [*(a1 + 32) _createImageSetsForCardWithUniqueID:*(a1 + 40) cardDirectoryCoordinator:*(a1 + 48) displayProfile:*(a1 + 56)];
}

id sub_10011F9D0(uint64_t a1)
{
  result = [*(a1 + 40) isInvalidated];
  if ((result & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 48));
    [WeakRetained insertOrReplaceMissingRemoteAssetsPersistentStoreItemWithUniqueID:*(a1 + 56)];

    v4 = *(a1 + 48);

    return [v4 _evaluateDownloadMissingAssetsActivityWithForcedReschedule:1];
  }

  return result;
}

void sub_10011FC78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:*(a1 + 40)];
}

void sub_100120F04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) uniqueID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100121008;
  v15[3] = &unk_10083C820;
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [v11 _downloadRemoteAssetsForCardWithUniqueID:v12 completion:v15];

  objc_autoreleasePoolPop(v10);
}

id sub_100121020(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 56));
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: missing remote asset download activity finished.", v4, 2u);
  }

  return [*(a1 + 32) _evaluateDownloadMissingAssetsActivityWithForcedReschedule:0];
}

void sub_100121580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v52 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001215D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _dc_cardDirectoryCoordinatorForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100121624(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if ([*(*(a1[7] + 8) + 40) isInvalidated])
  {
    v9[2](v9, v8, 1);
  }

  else
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = *(a1[6] + 80);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012175C;
    v14[3] = &unk_100842238;
    v17 = a1[8];
    v16 = v9;
    v15 = v8;
    [v11 downloadRemoteAssetItem:v12 withCloudStoreCoordinatorDelegate:v13 completion:v14];
  }

  objc_autoreleasePoolPop(v10);
}

uint64_t sub_10012175C(void *a1, int a2)
{
  if (a2)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  return (*(a1[5] + 16))(a1[5], a1[4], 0);
}

void sub_10012178C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 24);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100121854;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_10012186C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(*(*(a1 + 64) + 8) + 40) isInvalidated])
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))();
    }

    goto LABEL_20;
  }

  v9 = objc_autoreleasePoolPush();
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v10 = *(a1 + 80);
  v11 = *(*(*(a1 + 72) + 8) + 24);
  v12 = PKLogFacilityTypeGetObject();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 >= v10)
  {
    if (v13)
    {
      v16 = *(a1 + 48);
      *buf = 134218242;
      v48 = v10;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: Downloaded all %lu pending assets for pass with uniqueID:%@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:*(a1 + 48)];

    *(v44 + 24) = 1;
    goto LABEL_13;
  }

  if (v13)
  {
    v14 = *(a1 + 48);
    *buf = 134218498;
    v48 = v11;
    v49 = 2048;
    v50 = v10;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: Downloaded %lu of %lu pending assets for pass with uniqueID:%@", buf, 0x20u);
  }

  v15 = *(*(*(a1 + 72) + 8) + 24);
  *(v44 + 24) = v15 != 0;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (!v15)
    {
      goto LABEL_18;
    }

LABEL_13:
    v18 = *(*(*(a1 + 64) + 8) + 40);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100121CD0;
    v40[3] = &unk_1008473B8;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v42 = &v43;
    v40[4] = v19;
    v41 = v20;
    [v18 performCoordinatedAction:v40];
    v21 = [*(a1 + 40) _cardWithUniqueID:*(a1 + 48) cardDirectoryCoordinator:*(*(*(a1 + 64) + 8) + 40) error:0];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 displayProfile];
      v24 = PDHeavyUtilityQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100121D84;
      block[3] = &unk_100847688;
      v25 = *(a1 + 48);
      block[4] = *(a1 + 40);
      v26 = v25;
      v27 = *(a1 + 64);
      v38 = v23;
      v39 = v27;
      v37 = v26;
      v28 = v23;
      v29 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
      dispatch_async(v24, v29);
    }

    if (*(v44 + 24) == 1)
    {
      v30 = PDDefaultQueue();
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100121DE4;
      v34[3] = &unk_10083C420;
      v31 = *(a1 + 48);
      v34[4] = *(a1 + 40);
      v35 = v31;
      dispatch_async(v30, v34);
    }

    goto LABEL_18;
  }

  v33 = objc_loadWeakRetained((*(a1 + 40) + 48));
  [v33 incrementMissingRemoteAssetsPersistentStoreItemDownloadRetriesCountWithUniqueID:*(a1 + 48)];

  if (v44[3])
  {
    goto LABEL_13;
  }

LABEL_18:
  _Block_object_dispose(&v43, 8);
  objc_autoreleasePoolPop(v9);
  v32 = *(a1 + 56);
  if (v32)
  {
    (*(v32 + 16))();
  }

LABEL_20:
}

void sub_100121CD0(uint64_t a1, const __CFURL *a2)
{
  if (a2)
  {
    v3 = CFBundleCreate(kCFAllocatorDefault, a2);
    if (v3)
    {
      v4 = v3;
      _CFBundleFlushBundleCaches();
      CFRelease(v4);
    }

    v6 = [*(a1 + 32) _cacheURLForUniqueID:*(a1 + 40)];
    v5 = +[NSFileManager defaultManager];
    [v5 removeItemAtURL:v6 error:0];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100121D84(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDCardFileManager");
  [*(a1 + 32) _createImageSetsForCardWithUniqueID:*(a1 + 40) cardDirectoryCoordinator:*(*(*(a1 + 56) + 8) + 40) displayProfile:*(a1 + 48)];
}

void sub_100121DE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained cardFileManager:*(a1 + 32) didUpdateRemoteAssetsForPassWithUniqueID:*(a1 + 40)];
}

void sub_100121EE8(id a1)
{
  v1 = PKCardsDirectoryURL();
  v2 = qword_100924280;
  qword_100924280 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100121F20(id a1)
{
  v1 = PKCardsCatalogFileURL();
  v2 = qword_100924290;
  qword_100924290 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100121F58(id a1)
{
  v1 = PKCardsNonUbiquitousCatalogFileURL();
  v2 = qword_1009242A0;
  qword_1009242A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100121F90(id a1)
{
  v1 = PKHomeDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"BadLocalPasses"];
  v3 = qword_1009242B0;
  qword_1009242B0 = v2;

  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  v5 = [v4 createDirectoryAtPath:qword_1009242B0 withIntermediateDirectories:1 attributes:0 error:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = qword_1009242B0;
      v20 = 2112;
      v21 = qword_1009242C0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to create directory %@: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v8 = [NSError alloc];
      v16 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithFormat:@"{Failed to create directory=%@}", qword_1009242B0];
      v17 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v6 = [v8 initWithDomain:PKPassKitErrorDomain code:-1 userInfo:v10];
    }

    v11 = +[NSFileManager defaultManager];
    v12 = PKHomeDirectoryPath();
    v13 = [v11 fileExistsAtPath:v12];

    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PKHomeDirectoryPath();
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Home directory does not exist, failed to create intermediaries: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&qword_1009242C0, v6);
  }
}

void sub_1001223F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100122410(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 56)) initWithValue:*(a1 + 32) inDatabase:*(a1 + 40)];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 32) type];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = TileValueNumber;
      v5 = [*(a1 + 32) valueTypeNumber];
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      v4 = TileValueForeignReference;
      v5 = [*(a1 + 32) valueTypeForeignReference];
    }

LABEL_11:
    v6 = v5;
    v7 = [(__objc2_class *)v4 insertValue:v5 forBaseValue:v2 inDatabase:*(a1 + 40)];

    if (v7)
    {
      goto LABEL_12;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = TileValueText;
    v5 = [*(a1 + 32) valueTypeText];
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v4 = TileValueDate;
    v5 = [*(a1 + 32) valueTypeDate];
    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
  v8 = 1;
LABEL_14:

  return v8;
}

void sub_100122A8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100122BF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) database];
  v6 = *(a1 + 48);
  v7 = [NSNumber numberWithLongLong:a2];
  v8 = [v6 _predicateForPersistentID:v7];
  v11 = [v4 anyInDatabase:v5 predicate:v8];

  v9 = *(a1 + 40);
  v10 = [v11 _verificationAttempt];
  [v9 safelyAddObject:v10];
}

void sub_100122ED0(id a1, PKAccountFundingSourceVerificationAttempt *a2, id a3)
{
  v4 = a2;
  -[PKAccountFundingSourceVerificationAttempt setType:](v4, "setType:", [a3 integerValue]);
}

void sub_100122F28(id a1, PKAccountFundingSourceVerificationAttempt *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountFundingSourceVerificationAttempt *)v3 setSentDate:v4];
}

void sub_100122F88(id a1, PKAccountFundingSourceVerificationAttempt *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountFundingSourceVerificationAttempt *)v3 setExpiryDate:v4];
}

void sub_100122FE8(id a1, PKAccountFundingSourceVerificationAttempt *a2, id a3)
{
  v4 = a2;
  -[PKAccountFundingSourceVerificationAttempt setFailureReason:](v4, "setFailureReason:", [a3 integerValue]);
}

id PDSharesFromLegacyCarKeyTables(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 uniqueID];
  v6 = [v4 devicePrimaryPaymentApplication];

  v7 = [v6 subcredentials];
  v8 = [v7 anyObject];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = [AppletSubcredential appletSubcredentialWithIdentifier:v9 inDatabase:v3];
    if (v10)
    {
      v29 = v3;
      v27 = v10;
      v11 = [v10 persistentID];
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v40 = v5;
        v41 = 2112;
        v42 = v9;
        v43 = 2048;
        v44 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: Migrating shares for pass %@, subcredential: %@ (pid: %lld)", buf, 0x20u);
      }

      v28 = v5;

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001234A8;
      v36[3] = &unk_100847838;
      v13 = objc_alloc_init(NSMutableArray);
      v37 = v13;
      v38 = v9;
      v14 = objc_retainBlock(v36);
      v15 = [NSNumber numberWithLongLong:v11];
      v16 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v15];
      v17 = [(SQLiteEntity *)AppletSubcredentialInvitationReceipt queryWithDatabase:v29 predicate:v16];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001235FC;
      v33[3] = &unk_100847860;
      v18 = v29;
      v34 = v18;
      v19 = v14;
      v35 = v19;
      [v17 enumeratePersistentIDsUsingBlock:v33];
      v20 = [NSNumber numberWithLongLong:v11];
      v21 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v20];
      v22 = [(SQLiteEntity *)SharedAppletSubcredential queryWithDatabase:v18 predicate:v21];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100123B7C;
      v30[3] = &unk_100847860;
      v31 = v18;
      v32 = v19;
      v23 = v19;
      [v22 enumeratePersistentIDsUsingBlock:v30];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: migrating shares from old tables before deleting: %@", buf, 0xCu);
      }

      v24 = v32;
      v25 = v13;

      v10 = v27;
      v5 = v28;
      v3 = v29;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id sub_1001234A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v3 isSameUnderlyingShareAs:{v9, v12}])
        {
          v10 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [v3 setSubcredentialIdentifier:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
  v10 = v3;
LABEL_11:

  return v10;
}

void sub_1001235FC(uint64_t a1, void *a2)
{
  v4 = [(SQLiteEntity *)[AppletSubcredentialInvitationReceipt alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v5 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v4 persistentID]];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v5];

  v7 = [(SQLiteEntity *)SharedAppletSubcredentialMetadata anyInDatabase:*(a1 + 32) predicate:v6];
  if (v7)
  {
    v8 = v4;
    v9 = objc_alloc_init(PKPassCredentialShare);
    v10 = [(SQLiteEntity *)v8 valueForProperty:@"a"];
    [v9 setIdentifier:v10];

    v11 = [v7 valueForProperty:@"e"];
    [v9 setChannelTransportIdentifier:v11];

    v12 = [v7 valueForProperty:@"c"];
    v13 = [v12 BOOLValue];

    v14 = [(SQLiteEntity *)v8 valueForProperty:@"f"];

    v15 = [v14 BOOLValue];
    v16 = 4;
    if (!v15)
    {
      v16 = 5;
    }

    if (v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    [v9 setTargetDevice:v17];
    [v9 setStatus:2];
    v18 = [v7 valueForProperty:@"f"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: discarding credential share from invite because revoked. %@", &v26, 0xCu);
      }

      v21 = 0;
    }

    else
    {
      v21 = v9;
    }

    if (v21)
    {
      v22 = *(a1 + 40);
      v23 = sub_100123984(v7);
      v24 = (*(v22 + 16))(v22, v23);

      [v24 addCredentialShare:v21];
      [v24 setManageability:1];
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218498;
        v27 = a2;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: Migrating invite %lld and creating new credential share: %@ \n Share: %@", &v26, 0x20u);
      }
    }
  }

  else
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: Unable to find metadata for invite", &v26, 2u);
    }
  }
}

id sub_100123984(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PKPassShare);
  v3 = [v1 valueForProperty:@"i"];
  [v2 setGroupIdentifier:v3];
  v4 = [v1 valueForProperty:@"h"];
  v5 = v4;
  if (v4)
  {
    v6 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
    v7 = [v6 UUIDString];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  [v2 setIdentifier:v8];

  v9 = [v1 valueForProperty:@"g"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:v10];
  v17 = v11;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  [v2 setSharedEntitlements:v12];

  v13 = [v1 valueForProperty:@"c"];
  v14 = [v13 BOOLValue];

  if ((v14 & 1) == 0)
  {
    v15 = [v1 valueForProperty:@"e"];
    [v2 setRecipientHandle:v15];
  }

  [v2 setManageability:1];

  return v2;
}

void sub_100123B7C(uint64_t a1, uint64_t a2)
{
  v4 = [(SQLiteEntity *)[SharedAppletSubcredential alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v5 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v4 persistentID]];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v5];

  v7 = [(SQLiteEntity *)SharedAppletSubcredentialMetadata anyInDatabase:*(a1 + 32) predicate:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 40);
    v10 = sub_100123984(v7);
    v11 = (*(v9 + 16))(v9, v10);

    v12 = v4;
    v13 = v8;
    v14 = objc_alloc_init(PKPassCredentialShare);
    v15 = [(SQLiteEntity *)v12 valueForProperty:@"b"];
    [v14 setIdentifier:v15];

    v16 = [v13 valueForProperty:@"d"];
    [v14 setChannelTransportIdentifier:v16];

    v17 = [v13 valueForProperty:@"c"];

    LODWORD(v13) = [v17 BOOLValue];
    if (v13)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    [v14 setTargetDevice:v18];
    v19 = [(SQLiteEntity *)v12 valueForProperty:@"d"];
    v20 = [v19 integerValue];

    v21 = 0;
    if (v20 <= 5)
    {
      v21 = qword_10068E4E8[v20];
    }

    [v14 setStatus:v21];

    v22 = [(SQLiteEntity *)v12 valueForProperty:@"c"];
    [v11 setRecipientNickname:v22];

    [v11 addCredentialShare:v14];
    [v11 setManageability:1];
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218498;
      v25 = a2;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: Migrating shared subcredential %lld and creating new credential share: %@ \n Share: %@", &v24, 0x20u);
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarKeyDatabaseMigration: Unable to find metadata for shared subcredential", &v24, 2u);
    }
  }
}

uint64_t PDUEEKeyFromString(void *a1)
{
  v1 = a1;
  if ([@"currentRegion" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"isApplePayActive" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"isApplePaySetupAvailable" isEqualToString:v1])
  {
    v2 = 105;
  }

  else if ([@"isPrimaryAppleAccountVerified" isEqualToString:v1])
  {
    v2 = 106;
  }

  else if ([@"isDeviceRegisteredWithBroker" isEqualToString:v1])
  {
    v2 = 107;
  }

  else if ([@"hasPaymentCard" isEqualToString:v1])
  {
    v2 = 108;
  }

  else if ([@"hasDebitCard" isEqualToString:v1])
  {
    v2 = 109;
  }

  else if ([@"hasCreditCard" isEqualToString:v1])
  {
    v2 = 110;
  }

  else if ([@"hasSecureElementPass" isEqualToString:v1])
  {
    v2 = 111;
  }

  else if ([@"hasApplePayTransaction" isEqualToString:v1])
  {
    v2 = 112;
  }

  else if ([@"numberOfApplePayTransactionsInPastThirtyDays" isEqualToString:v1])
  {
    v2 = 113;
  }

  else if ([@"daysSinceLastTransaction" isEqualToString:v1])
  {
    v2 = 114;
  }

  else if ([@"daysSinceOldestPaymentPassIngestDate" isEqualToString:v1])
  {
    v2 = 115;
  }

  else if ([@"daysSinceOldestCreditCardIngestDate" isEqualToString:v1])
  {
    v2 = 116;
  }

  else if ([@"daysSinceProvisionedPassBySpecifiedType" isEqualToString:v1])
  {
    v2 = 118;
  }

  else if ([@"daysSinceOldestCardInPendingVerification" isEqualToString:v1])
  {
    v2 = 117;
  }

  else if ([@"hasUserPreferencesEnabledByIdentifier" isEqualToString:v1])
  {
    v2 = 119;
  }

  else if ([@"defaultCreditAccountSetupFeatureState" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"hasDefaultCreditAccount" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"defaultCreditAccountState" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"defaultCreditAccountLifetimeRewards" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"defaultCreditAccountHasPhysicalCard" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"defaultCreditAccountHasVirtualCard" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"defaultCreditAccountHasDynamicSecurityCode" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"defaultCreditAccountRequiresDebtCollectionNotices" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"defaultCreditAccountBalanceStatus" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"defaultCreditAccountCyclesPastDue" isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([@"defaultCreditAccountInGrace" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"defaultCreditAccountInDisasterRecovery" isEqualToString:v1])
  {
    v2 = 14;
  }

  else if ([@"defaultCreditAccountHasDisputeOpen" isEqualToString:v1])
  {
    v2 = 15;
  }

  else if ([@"defaultCreditAccountDaysSinceDisputeOpened" isEqualToString:v1])
  {
    v2 = 16;
  }

  else if ([@"defaultCreditAccountAvailableCredit" isEqualToString:v1])
  {
    v2 = 17;
  }

  else if ([@"defaultCreditAccountSupportsShowNotifications" isEqualToString:v1])
  {
    v2 = 18;
  }

  else if ([@"defaultCreditAccountPassIsDefault" isEqualToString:v1])
  {
    v2 = 19;
  }

  else if ([@"defaultCreditAccountDaysSinceLastTransaction" isEqualToString:v1])
  {
    v2 = 20;
  }

  else if ([@"defaultCreditAccountHasInStoreTransaction" isEqualToString:v1])
  {
    v2 = 21;
  }

  else if ([@"defaultCreditAccountHasInAppTransaction" isEqualToString:v1])
  {
    v2 = 22;
  }

  else if ([@"defaultCreditAccountHasWebTransaction" isEqualToString:v1])
  {
    v2 = 23;
  }

  else if ([@"defaultCreditAccountHasVirtualCardTransaction" isEqualToString:v1])
  {
    v2 = 24;
  }

  else if ([@"defaultCreditAccountHasPhysicalCardTransaction" isEqualToString:v1])
  {
    v2 = 25;
  }

  else if ([@"defaultCreditAccountDaysSinceCreatedDate" isEqualToString:v1])
  {
    v2 = 26;
  }

  else if ([@"defaultCreditAccountMerchantIdentifiers" isEqualToString:v1])
  {
    v2 = 31;
  }

  else if ([@"defaultCreditAccountMerchantIdentifiersLast30Days" isEqualToString:v1])
  {
    v2 = 32;
  }

  else if ([@"defaultCreditAccountMapsIdentifiers" isEqualToString:v1])
  {
    v2 = 33;
  }

  else if ([@"defaultCreditAccountMapsIdentifiersLast30Days" isEqualToString:v1])
  {
    v2 = 34;
  }

  else if ([@"defaultCreditAccountMapsBrandIdentifiers" isEqualToString:v1])
  {
    v2 = 35;
  }

  else if ([@"defaultCreditAccountMapsBrandIdentifiersLast30Days" isEqualToString:v1])
  {
    v2 = 36;
  }

  else if ([@"defaultCreditApplicationCount" isEqualToString:v1])
  {
    v2 = 37;
  }

  else if ([@"currentDefaultCreditApplictionDaysSinceLastUpdated" isEqualToString:v1])
  {
    v2 = 38;
  }

  else if ([@"currentDefaultCreditApplicationState" isEqualToString:v1])
  {
    v2 = 39;
  }

  else if ([@"defaultCreditAccountHasAutopaySetup" isEqual:v1])
  {
    v2 = 50;
  }

  else if ([@"defaultCreditAccountIsShared" isEqualToString:v1])
  {
    v2 = 40;
  }

  else if ([@"defaultCreditAccountAccessLevel" isEqualToString:v1])
  {
    v2 = 41;
  }

  else if ([@"defaultCreditAccountIsCoOwner" isEqualToString:v1])
  {
    v2 = 42;
  }

  else if ([@"defaultCreditAccountParticipantUsersCount" isEqualToString:v1])
  {
    v2 = 43;
  }

  else if ([@"defaultCreditAccountHasUnderageParticipant" isEqualToString:v1])
  {
    v2 = 44;
  }

  else if ([@"defaultCreditAccountPhysicalAppleCardStatus" isEqualToString:v1])
  {
    v2 = 45;
  }

  else if ([@"daysSincePhysicalAppleCardShipmentUpdate" isEqualToString:v1])
  {
    v2 = 46;
  }

  else if ([@"defaultCreditAccountActivePromotionIdentifiers" isEqualToString:v1])
  {
    v2 = 47;
  }

  else if ([@"defaultCreditAccountActivePromotionIdentifiersExpiringSoon" isEqualToString:v1])
  {
    v2 = 48;
  }

  else if ([@"defaultCreditAccountDaysUntilActivePromotionExpires" isEqualToString:v1])
  {
    v2 = 49;
  }

  else if ([@"anyCreditAccountStateIsClosed" isEqualToString:v1])
  {
    v2 = 51;
  }

  else if ([@"anyCreditAccountStateIsRemoved" isEqualToString:v1])
  {
    v2 = 52;
  }

  else if ([@"hasPeerPaymentAccount" isEqualToString:v1])
  {
    v2 = 65;
  }

  else if ([@"hasPeerPaymentPassProvisioned" isEqualToString:v1])
  {
    v2 = 66;
  }

  else if ([@"peerPaymentAccountState" isEqualToString:v1])
  {
    v2 = 67;
  }

  else if ([@"peerPaymentAccountStage" isEqualToString:v1])
  {
    v2 = 69;
  }

  else if ([@"peerPaymentAccountStateReason" isEqualToString:v1])
  {
    v2 = 68;
  }

  else if ([@"peerPaymentAccountHasTransaction" isEqualToString:v1])
  {
    v2 = 70;
  }

  else if ([@"peerPaymentAccountHasContactlessTransaction" isEqualToString:v1])
  {
    v2 = 72;
  }

  else if ([@"peerPaymentHasOnlinePurchaseTransaction" isEqualToString:v1])
  {
    v2 = 71;
  }

  else if ([@"daysSinceLastPeerPaymentTransaction" isEqualToString:v1])
  {
    v2 = 73;
  }

  else if ([@"peerPaymentDaysSinceLastP2PTransaction" isEqualToString:v1])
  {
    v2 = 74;
  }

  else if ([@"peerPaymentDaysSinceLastP2PTransactionToAnyParticipant" isEqualToString:v1])
  {
    v2 = 75;
  }

  else if ([@"peerPaymentAccountHasBalance" isEqualToString:v1])
  {
    v2 = 76;
  }

  else if ([@"peerPaymentAccountBalanceBase" isEqualToString:v1])
  {
    v2 = 77;
  }

  else if ([@"peerPaymentHasP2PTransaction" isEqualToString:v1])
  {
    v2 = 84;
  }

  else if ([@"peerPaymentHasAutoReloadEnabled" isEqualToString:v1])
  {
    v2 = 85;
  }

  else if ([@"peerPaymentHasSetupRecurringP2PPayment" isEqualToString:v1])
  {
    v2 = 86;
  }

  else if ([@"peerPaymentHasSetupRecurringP2PPaymentForAnyParticipant" isEqualToString:v1])
  {
    v2 = 87;
  }

  else if ([@"peerPaymentDaysSinceLastPurchaseTransaction" isEqualToString:v1])
  {
    v2 = 88;
  }

  else if ([@"peerPaymentHasSentP2PPayment" isEqualToString:v1])
  {
    v2 = 89;
  }

  else if ([@"peerPaymentHasReceivedP2PPayment" isEqualToString:v1])
  {
    v2 = 90;
  }

  else if ([@"peerPaymentHasSentDeviceTapTransaction" isEqualToString:v1])
  {
    v2 = 91;
  }

  else if ([@"peerPaymentHasReceivedDeviceTapTransaction" isEqualToString:v1])
  {
    v2 = 92;
  }

  else if ([@"peerPaymentNumberOfDeviceTapTransactions" isEqualToString:v1])
  {
    v2 = 93;
  }

  else if ([@"daysSinceLastDeviceTapSendTransaction" isEqualToString:v1])
  {
    v2 = 94;
  }

  else if ([@"deviceLanguage" isEqualToString:v1])
  {
    v2 = 78;
  }

  else if ([@"defaultCreditAccountHasActiveInstallment" isEqualToString:v1])
  {
    v2 = 27;
  }

  else if ([@"defaultCreditAccountHasUsedInstallments" isEqualToString:v1])
  {
    v2 = 28;
  }

  else if ([@"defaultCreditAccountSupportedDestinations" isEqualToString:v1])
  {
    v2 = 29;
  }

  else if ([@"defaultCreditAccountRewardsDestination" isEqualToString:v1])
  {
    v2 = 30;
  }

  else if ([@"merchantIdentifiers" isEqualToString:v1])
  {
    v2 = 59;
  }

  else if ([@"mapsIdentifiers" isEqualToString:v1])
  {
    v2 = 60;
  }

  else if ([@"mapsBrandIdentifiers" isEqualToString:v1])
  {
    v2 = 61;
  }

  else if ([@"hasPaymentTransaction" isEqualToString:v1])
  {
    v2 = 62;
  }

  else if ([@"hasTransitTransaction" isEqualToString:v1])
  {
    v2 = 63;
  }

  else if ([@"hasTransactionOfTransactionSourceType" isEqualToString:v1])
  {
    v2 = 64;
  }

  else if ([@"peerPaymentAccountRole" isEqualToString:v1])
  {
    v2 = 79;
  }

  else if ([@"peerPaymentAccountDaysSinceCreatedDate" isEqualToString:v1])
  {
    v2 = 80;
  }

  else if ([@"peerPaymentAccountDaysSinceIdentifiedDate" isEqualToString:v1])
  {
    v2 = 81;
  }

  else if ([@"daysSinceParticipantPeerPaymentAccountIdentifiedDate" isEqualToString:v1])
  {
    v2 = 82;
  }

  else if ([@"peerPaymentAccountHasSentMoneyToAnyParticipant" isEqualToString:v1])
  {
    v2 = 83;
  }

  else if ([@"passStyles" isEqualToString:v1])
  {
    v2 = 53;
  }

  else if ([@"unexpiredPassStyles" isEqualToString:v1])
  {
    v2 = 54;
  }

  else if ([@"secureElementCardTypes" isEqualToString:v1])
  {
    v2 = 55;
  }

  else if ([@"unexpiredSecureElementCardTypes" isEqualToString:v1])
  {
    v2 = 56;
  }

  else if ([@"transitNetworksPresent" isEqualToString:v1])
  {
    v2 = 57;
  }

  else if ([@"transitNetworksPresentAndUnexpired" isEqualToString:v1])
  {
    v2 = 58;
  }

  else if ([@"peerPaymentFamilyParticipantAccounts" isEqualToString:v1])
  {
    v2 = 95;
  }

  else if ([@"familyCircleFamilyOrganizer" isEqualToString:v1])
  {
    v2 = 96;
  }

  else if ([@"familyCircleParent" isEqualToString:v1])
  {
    v2 = 97;
  }

  else if ([@"familyCircleHasFamily" isEqualToString:v1])
  {
    v2 = 98;
  }

  else if ([@"familyCircleCurrentUserAge" isEqualToString:v1])
  {
    v2 = 99;
  }

  else if ([@"familyCircleMembersUnderAge" isEqualToString:v1])
  {
    v2 = 100;
  }

  else if ([@"familyCircleMembersCount" isEqualToString:v1])
  {
    v2 = 101;
  }

  else if ([@"familyCircleDaysSinceNewestJoinedDate" isEqualToString:v1])
  {
    v2 = 102;
  }

  else if ([@"familyCircleMinimumMemberAge" isEqualToString:v1])
  {
    v2 = 103;
  }

  else if ([@"familyCircleAgeCategory" isEqualToString:v1])
  {
    v2 = 104;
  }

  else if ([@"discoveryItemsWithActiveStatus" isEqualToString:v1])
  {
    v2 = 120;
  }

  else if ([@"discoveryItemsWithActionedStatus" isEqualToString:v1])
  {
    v2 = 121;
  }

  else if ([@"discoveryItemsWithDismissedStatus" isEqualToString:v1])
  {
    v2 = 122;
  }

  else if ([@"discoveryItemsWithWaitingForTriggerStatus" isEqualToString:v1])
  {
    v2 = 123;
  }

  else if ([@"discoveryItemsExpanded" isEqualToString:v1])
  {
    v2 = 124;
  }

  else if ([@"discoveryItemsDismissed" isEqualToString:v1])
  {
    v2 = 125;
  }

  else if ([@"discoveryCTAsTapped" isEqualToString:v1])
  {
    v2 = 126;
  }

  else if ([@"discoveryCTAsCompleted" isEqualToString:v1])
  {
    v2 = 127;
  }

  else if ([@"sentTransitDCINotifications" isEqualToString:v1])
  {
    v2 = 128;
  }

  else if ([@"sentTransitOpenLoopUpgradeNotifications" isEqualToString:v1])
  {
    v2 = 129;
  }

  else if ([@"sentTransitOpenLoopRenotifiedInMarketNotifications" isEqualToString:v1])
  {
    v2 = 130;
  }

  else if ([@"cardTypesWithExpressEnabled" isEqualToString:v1])
  {
    v2 = 131;
  }

  else if ([@"supportedMarketsForCurrentLocation" isEqualToString:v1])
  {
    v2 = 132;
  }

  else if ([@"supportedTransitMarketsForCurrentLocation" isEqualToString:v1])
  {
    v2 = 133;
  }

  else if ([@"supportedTransitNetworksForCurrentLocation" isEqualToString:v1])
  {
    v2 = 134;
  }

  else if ([@"expressTransitNetworksForCurrentLocation" isEqualToString:v1])
  {
    v2 = 135;
  }

  else if ([@"hasTransitPassForCurrentLocation" isEqualToString:v1])
  {
    v2 = 136;
  }

  else if ([@"hasUnexpiredTransitPassForCurrentLocation" isEqualToString:v1])
  {
    v2 = 137;
  }

  else
  {
    v3 = [v1 componentsSeparatedByString:@"."];
    v4 = [v3 firstObject];
    v5 = [@"currentPlacemark" isEqualToString:v4];

    if (v5)
    {
      v2 = 138;
    }

    else if ([@"hasSavingsAccount" isEqualToString:v1])
    {
      v2 = 139;
    }

    else if ([@"savingsAccountDaysSinceCreatedDate" isEqualToString:v1])
    {
      v2 = 140;
    }

    else if ([@"savingsAccountHasExternalTransferIn" isEqualToString:v1])
    {
      v2 = 141;
    }

    else if ([@"savingsAccountHasExternalTransferOut" isEqualToString:v1])
    {
      v2 = 142;
    }

    else if ([@"savingsAccountHasCashTransferIn" isEqualToString:v1])
    {
      v2 = 143;
    }

    else if ([@"savingsAccountBinnedBalance" isEqualToString:v1])
    {
      v2 = 144;
    }

    else if ([@"savingsAccountAPY" isEqualToString:v1])
    {
      v2 = 145;
    }

    else if ([@"installedApps" isEqualToString:v1])
    {
      v2 = 146;
    }

    else if ([@"hasPairedWatch" isEqualToString:v1])
    {
      v2 = 147;
    }

    else if ([@"enrolledAuthenticationMechanisms" isEqualToString:v1])
    {
      v2 = 148;
    }

    else
    {
      v6 = v1;
      if (v6 == @"hasIssuerInstallmentCard")
      {
        v2 = 149;
      }

      else
      {
        v2 = v6;
        if (v6)
        {
          v7 = [@"hasIssuerInstallmentCard" isEqualToString:v6];

          if (v7)
          {
            v2 = 149;
          }

          else
          {
            v8 = v2;
            if (v8 == @"hasEverMadeIssuerInstallmentTransaction" || (v9 = v8, v10 = [@"hasEverMadeIssuerInstallmentTransaction" isEqualToString:v8], v9, (v10 & 1) != 0))
            {
              v2 = 150;
            }

            else
            {
              v11 = v9;
              if (v11 == @"hasBankConnectEligibleCard" || (v12 = v11, v13 = [@"hasBankConnectEligibleCard" isEqualToString:v11], v12, (v13 & 1) != 0))
              {
                v2 = 151;
              }

              else
              {
                v14 = v12;
                if (v14 == @"hasAnyConnectedCardWithBankConnect" || (v15 = v14, v16 = [@"hasAnyConnectedCardWithBankConnect" isEqualToString:v14], v15, (v16 & 1) != 0))
                {
                  v2 = 152;
                }

                else
                {
                  v17 = v15;
                  if (v17 == @"hasRewardsCard" || (v18 = v17, v19 = [@"hasRewardsCard" isEqualToString:v17], v18, (v19 & 1) != 0))
                  {
                    v2 = 153;
                  }

                  else
                  {
                    v20 = v18;
                    if (v20 == @"hasEverMadeRewardsTransaction" || (v21 = v20, v22 = [@"hasEverMadeRewardsTransaction" isEqualToString:v20], v21, (v22 & 1) != 0))
                    {
                      v2 = 154;
                    }

                    else
                    {
                      v23 = v21;
                      if (v23 == @"hasAppleAccountCardProvisioned" || (v24 = v23, v25 = [@"hasAppleAccountCardProvisioned" isEqualToString:v23], v24, (v25 & 1) != 0))
                      {
                        v2 = 155;
                      }

                      else
                      {
                        v26 = v24;
                        if (v26 == @"daysSinceAppleAccountInStoreTopUp" || (v27 = v26, v28 = [@"daysSinceAppleAccountInStoreTopUp" isEqualToString:v26], v27, (v28 & 1) != 0))
                        {
                          v2 = 156;
                        }

                        else
                        {
                          v29 = v27;
                          if (v29 == @"appleAccountCardDaysSinceTopUpOfType" || (v30 = v29, v31 = [@"appleAccountCardDaysSinceTopUpOfType" isEqualToString:v29], v30, (v31 & 1) != 0))
                          {
                            v2 = 157;
                          }

                          else
                          {
                            v32 = v30;
                            if (v32 == @"appleAccountCardActivePromotionIdentifiers" || (v33 = v32, v34 = [@"appleAccountCardActivePromotionIdentifiers" isEqualToString:v32], v33, (v34 & 1) != 0))
                            {
                              v2 = 158;
                            }

                            else
                            {
                              v35 = v33;
                              if (v35 == @"issuerMessagingFlagsForDefaultAccountType" || (v36 = v35, v37 = [@"issuerMessagingFlagsForDefaultAccountType" isEqualToString:v35], v36, v37))
                              {
                                v2 = 159;
                              }

                              else
                              {
                                v2 = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t PDUEEAccountFeatureToFeatureIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"appleCash")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"appleCash"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"appleCard" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"appleCard"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"appleBalance" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"appleBalance"], v9, (v10 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"savings" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"savings"], v12, v13))
    {
      v4 = 5;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

id sub_100126D80(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) maxIngestedDateForRequest:*(a1 + 40)];
  if (v1)
  {
    v2 = +[NSCalendar currentCalendar];
    v3 = +[NSDate date];
    v4 = [v2 components:16 fromDate:v1 toDate:v3 options:0];
    v5 = [v4 day];

    if (v5 <= 60)
    {
      if (v5 <= 30)
      {
        v7 = v5 >> 63;
        if (v5 > 6)
        {
          v7 = 1;
        }

        if (v5 <= 13)
        {
          v6 = v7;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = [NSNumber numberWithInteger:v6];

  return v8;
}

void sub_100127024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012703C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 type] == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 state];
    *a4 = 1;
  }
}

id sub_100129AA0(uint64_t a1)
{
  if ((*(a1 + 40) - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v2 = objc_alloc_init(PKPaymentTransactionRequest);
    v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    v8 = v3;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    [v2 setTransactionSources:v4];

    [v2 setTransactionTypes:&off_1008A46F8];
    v5 = [*(*(a1 + 32) + 24) transactionsCountForRequest:v2] != 0;
  }

  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

BOOL sub_10012D0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 associatedPassUniqueID];
    if (v4)
    {
      v5 = [v3 eligibility] == 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10012D4AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 656) associatedPassUniqueID];
  v3 = [*(*(a1 + 32) + 24) transactionSourceIdentifiersForPassUniqueIdentifier:v2];
  v4 = objc_alloc_init(PKPaymentTransactionRequest);
  [v4 setTransactionSourceIdentifiers:v3];
  [v4 setTransactionTypes:&off_1008A47B8];
  [v4 setTopUpSubtype:*(a1 + 40)];
  [v4 setDateOrder:1];
  [v4 setLimit:1];
  v5 = [*(*(a1 + 32) + 24) transactionsForRequest:v4];
  v6 = [v5 firstObject];

  v7 = [v6 transactionDate];
  if (v7)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = +[NSDate date];
    v10 = [v8 components:16 fromDate:v7 toDate:v9 options:0];
    v11 = [v10 day];
  }

  else
  {
    v11 = -1;
  }

  v12 = [NSNumber numberWithInteger:v11];

  return v12;
}

id sub_10012D898(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v3 = 128;
  }

  else
  {
    if (v2 != 5)
    {
      goto LABEL_7;
    }

    v3 = 608;
  }

  v4 = *(*(a1 + 32) + v3);
  if (v4)
  {
    v5 = v4;
    v6 = *(*(a1 + 32) + 24);
    v7 = [v4 accountIdentifier];
    v8 = [v6 issuerMessagingFlagsForContextType:1 contextIdentifier:v7 contextFeature:*(a1 + 40)];

    v9 = [v8 pk_setByApplyingBlock:&stru_100847978];

    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

void sub_10012ED90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10012EDEC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 11, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012EE68(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 16, a2);
    v6 = [v18 altDSID];
    v7 = [v5 _unactivatedPhysicalCardForAltDSID:v6];

    v8 = [v7 latestShippingActivity];
    v9 = [v7 latestOrderActivity];
    v10 = v9;
    if (v7 && v8)
    {
      if (([v8 shippingStatus] | 2) != 3)
      {
LABEL_13:
        [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];

        goto LABEL_14;
      }

      v11 = [v8 shippingStatus];
      v12 = 2;
      if (v11 != 1)
      {
        v12 = 3;
      }

      v5[14] = v12;
      v13 = +[NSDate date];
      v14 = [v8 timestamp];
    }

    else
    {
      if (!v7 || !v9 || [v9 activity] != 1)
      {
        goto LABEL_13;
      }

      v5[14] = 1;
      v13 = +[NSDate date];
      v14 = [v10 date];
    }

    v15 = v14;
    [v13 timeIntervalSinceDate:v14];
    v17 = v16;

    v5[15] = vcvtmd_s64_f64(v17 / 86400.0);
    goto LABEL_13;
  }

LABEL_14:
}

void sub_10012F018(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 23, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F094(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[5] paymentSetupFeaturesCoordinator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10012F16C;
    v8[3] = &unk_10083C780;
    v8[4] = v6;
    [v7 hasCachedPaymentSetupFeatures:v8];

    objc_storeStrong(v6 + 24, a2);
    [v6 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F16C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 40) paymentSetupFeaturesCoordinator];
    [v3 scheduleStaticPaymentSetupFeaturesFetchForSourceApplicationID:PKPassdBundleIdentifier];
  }
}

void sub_10012F1C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v24 = WeakRetained;
    v6 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v25 = v3;
    v23 = a1;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if ([v13 feature] == 2)
          {
            [v6 addObject:v13];
            if (v10)
            {
              if ([v13 isActive])
              {
                v14 = v13;

                v10 = v14;
              }

              else if (([v10 isActive] & 1) == 0)
              {
                v15 = [v13 lastUpdated];
                v16 = [v10 lastUpdated];
                v17 = [v15 compare:v16];

                if (v17 == 1)
                {
                  v18 = v13;

                  v10 = v18;
                }
              }
            }

            else
            {
              v10 = v13;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v19 = [v6 copy];
    v5 = v24;
    v20 = v24[21];
    v24[21] = v19;

    v21 = v24[22];
    v24[22] = v10;
    v22 = v10;

    [v24 _prefetchDataSources:*(v23 + 32) completion:*(v23 + 40)];
    v3 = v25;
  }
}

void sub_10012F3F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 105, a2);
    objc_storeStrong(v11 + 106, a3);
    objc_storeStrong(v11 + 107, a4);
    [v11 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F4BC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 25, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F538(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[26] = a2;
    v5 = WeakRetained;
    [WeakRetained _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v5;
  }
}

void sub_10012F594(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) passInformation];
        [v11 cardType];
        v12 = PKPaymentCardTypeToString();
        [v5 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = WeakRetained[108];
  WeakRetained[108] = v5;
  v14 = v5;

  [WeakRetained _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_10012F70C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 13, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F788(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 12, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10012F804(id *a1)
{
  if (PKLocationServicesEnabled())
  {
    v2 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012FA60;
    v12[3] = &unk_100847AE0;
    objc_copyWeak(&v13, a1 + 7);
    [v2 addOperation:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10012FC1C;
    v10[3] = &unk_100847B30;
    objc_copyWeak(&v11, a1 + 7);
    v10[4] = a1[4];
    [v2 addOperation:v10];
    v3 = +[NSNull null];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10013007C;
    v6[3] = &unk_100847B58;
    objc_copyWeak(&v9, a1 + 7);
    v7 = a1[5];
    v8 = a1[6];
    v4 = [v2 evaluateWithInput:v3 completion:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Location services are off. Can't fetch PDUEELocationDataSource.", buf, 2u);
    }

    [a1[4] _prefetchDataSources:a1[5] completion:a1[6]];
  }
}

void sub_10012FA28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10012FA60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 9);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012FB98;
    v13[3] = &unk_100847AB8;
    objc_copyWeak(&v16, (a1 + 32));
    v15 = v9;
    v14 = v8;
    [v12 fetchLatestValidLocation:v13];

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void sub_10012FB98(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 103, a2);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10012FC1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (!WeakRetained[103])
  {
    objc_storeStrong(WeakRetained + 109, qword_1009242C8);
    objc_storeStrong(v11 + 110, qword_1009242D0);
    objc_storeStrong(v11 + 111, qword_1009242D8);
    objc_storeStrong(v11 + 112, qword_1009242E0);
LABEL_5:
    v9[2](v9, v8, 0);
    goto LABEL_6;
  }

  v12 = [WeakRetained[5] sharedWebService];
  v13 = [v12 context];

  v14 = [v13 configuration];
  v15 = [v14 marketsURL];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012FE00;
  v18[3] = &unk_100847B08;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = v9;
  v16 = v8;
  v17 = *(a1 + 32);
  v19 = v16;
  v20 = v17;
  [PKPaymentMarketsConfiguration paymentMarketsConfigurationWithURL:v15 forDeviceClass:0 version:0 completion:v18];

  objc_destroyWeak(&v22);
LABEL_6:
}

void sub_10012FE00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v23 = v3;
    v5 = [v3 marketsForLocation:*(*(a1 + 40) + 824)];
    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(NSMutableSet);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 identifier];
          if (v14)
          {
            [v7 addObject:v14];
            if ([v13 type] == 1)
            {
              [v6 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v15 = [v7 copy];
    v16 = qword_1009242C8;
    qword_1009242C8 = v15;

    v17 = [v6 copy];
    v18 = qword_1009242D0;
    qword_1009242D0 = v17;

    v3 = v23;
    v19 = [v23 supportedTransitNetworksForLocation:*(*(a1 + 40) + 824)];
    v20 = qword_1009242D8;
    qword_1009242D8 = v19;

    v21 = [v23 expressTransitNetworksForLocation:*(*(a1 + 40) + 824)];
    v22 = qword_1009242E0;
    qword_1009242E0 = v21;

    objc_storeStrong(WeakRetained + 109, qword_1009242C8);
    objc_storeStrong(WeakRetained + 110, qword_1009242D0);
    objc_storeStrong(WeakRetained + 111, qword_1009242D8);
    objc_storeStrong(WeakRetained + 112, qword_1009242E0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10013007C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_1001300CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001301A4;
  v3[3] = &unk_100847BA8;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchLatestValidPlacemark:v3];

  objc_destroyWeak(&v6);
}

void sub_1001301A4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 104, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_100130220(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 76, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_10013029C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 82, a2);
    [v5 _prefetchDataSources:*(a1 + 32) completion:*(a1 + 40)];
  }
}

Class sub_100131D68()
{
  if (qword_1009242F8 != -1)
  {
    sub_1005C1F4C();
  }

  result = objc_getClass("BKDeviceManager");
  qword_1009242E8 = result;
  off_10091EA50 = sub_100131DBC;
  return result;
}

Class sub_100131DF4()
{
  if (qword_1009242F8 != -1)
  {
    sub_1005C1F4C();
  }

  result = objc_getClass("BKDevice");
  qword_100924300 = result;
  off_10091EA58 = sub_100131E48;
  return result;
}

void sub_100132248(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PDDynamicAssociatedDomainPattern);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) safelyAddObject:v7];
}

void sub_100132964(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = objc_alloc_init(PDDynamicAssociatedDomain);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:? withProperties:? values:?];

  v6 = [DynamicAssociatedDomainPattern patternsForDomainPID:a2 inDatabase:*(a1 + 40)];
  if ([v6 count])
  {
    [(PDDynamicAssociatedDomain *)v7 setPatterns:v6];
    [*(a1 + 48) safelyAddObject:v7];
  }
}

uint64_t sub_100132DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentID];
  v3 = [*(a1 + 40) items];
  v4 = [AccountStatementMetadataItem insertOrUpdateAccountStatementMetadataItems:v3 forStatementMetadataPID:v2 inDatabase:*(a1 + 48)];

  v5 = *(a1 + 56);
  v17 = 0;
  v18 = 0;
  v6 = [*(a1 + 32) statementIdentifier];
  v7 = [*(a1 + 32) accountIdentifier];
  [v5 openingDate:&v18 closingDate:&v17 statementIdentifier:v6 accountIdentifier:v7 accountType:objc_msgSend(*(a1 + 32) inDatabase:{"accountType"), *(a1 + 48)}];
  v8 = v18;
  v9 = v17;

  v10 = *(a1 + 32);
  v11 = _SQLValueForDate();
  [v10 setValue:v11 forProperty:@"opening_date"];

  v12 = *(a1 + 32);
  v13 = _SQLValueForDate();
  [v12 setValue:v13 forProperty:@"closing_date"];

  v14 = *(a1 + 32);
  v15 = [NSNumber numberWithBool:[AccountStatementMetadataItem allItemsAreProcessedForStatementMetadataPID:v2 inDatabase:*(a1 + 48)]];
  [v14 setValue:v15 forProperty:@"has_been_processed"];

  return 1;
}

void sub_1001332F0(uint64_t a1, uint64_t a2)
{
  v4 = [AccountStatementMetadata alloc];
  v5 = [*(a1 + 32) database];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 inDatabase:v5];

  v6 = *(a1 + 40);
  v7 = [(AccountStatementMetadata *)v8 accountStatementMetadata];
  [v6 safelyAddObject:v7];
}

void sub_100133590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001335A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013364C;
  v7[3] = &unk_1008405E8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  sub_1005D44A8(v2, v3, v7);

  return 1;
}

uint64_t sub_10013364C(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) sqliteBindWithStatement:a2];
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return _objc_release_x1(v5, v7);
  }

  return result;
}

uint64_t sub_100133804(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentID];
  [AccountStatementMetadataItem markItems:*(a1 + 40) asProcessed:*(a1 + 64) error:*(a1 + 56) forStatementMetadataPID:v2 inDatabase:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:[AccountStatementMetadataItem allItemsAreProcessedForStatementMetadataPID:v2 inDatabase:*(a1 + 48)]];
  [v3 setValue:v4 forProperty:@"has_been_processed"];

  return 1;
}

uint64_t sub_10013398C(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentID];
  v3 = *(a1 + 32);
  v4 = _SQLValueForDate();
  [v3 setValue:v4 forProperty:@"last_report_date"];

  v5 = *(a1 + 32);
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 reportCount] + 1);
  [v5 setValue:v6 forProperty:@"report_count"];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) items];
  [AccountStatementMetadataItem updateReportDate:v7 forItems:v8 forStatementMetadataPID:v2 inDatabase:*(a1 + 56)];

  return 1;
}

void sub_100133BB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100134098(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountStatementMetadata *)v3 setOpeningDate:v4];
}

void sub_1001340F8(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountStatementMetadata *)v3 setClosingDate:v4];
}

void sub_100134158(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v4 = a2;
  -[PKAccountStatementMetadata setHasBeenProcessed:](v4, "setHasBeenProcessed:", [a3 BOOLValue]);
}

void sub_1001341B0(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountStatementMetadata *)v3 setLastReportDate:v4];
}

void sub_100134210(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v4 = a2;
  -[PKAccountStatementMetadata setReportCount:](v4, "setReportCount:", [a3 integerValue]);
}

void sub_100134268(id a1, PKAccountStatementMetadata *a2, id a3)
{
  v4 = a2;
  -[PKAccountStatementMetadata setAccountType:](v4, "setAccountType:", [a3 integerValue]);
}

void sub_100134528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100134540(uint64_t a1)
{
  v2 = [objc_opt_class() _commonDictionary:*(a1 + 32)];
  v3 = [objc_alloc(*(a1 + 56)) initWithPropertyValues:v2 inDatabase:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) installmentAssessment];
  +[PaymentOfferInstallmentAssessment insertOrUpdateInstallmentAssessment:forSelectedPaymentOfferInstallmentPID:inDatabase:](PaymentOfferInstallmentAssessment, "insertOrUpdateInstallmentAssessment:forSelectedPaymentOfferInstallmentPID:inDatabase:", v6, [*(*(*(a1 + 48) + 8) + 40) persistentID], *(a1 + 40));

  return 1;
}

void sub_1001355F0(uint64_t a1, uint64_t a2)
{
  v4 = [AccountPayment alloc];
  v5 = [*(a1 + 32) database];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 inDatabase:v5];

  v6 = *(a1 + 40);
  v7 = [(AccountPayment *)v8 payment];
  [v6 addObject:v7];
}

void sub_100135E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(SQLiteEntity *)AccountPayment applyPropertySetters:*(a1 + 32) toObject:*(a1 + 40) withProperties:a2 values:a3];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) currencyAmount];
  [v4 setCurrencyAmount:v5];
}

void sub_100136798(id a1, PKAccountPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPayment *)v3 setPaymentDate:v4];
}

void sub_1001367F8(id a1, PKAccountPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPayment *)v3 setPaymentStatusDate:v4];
}

void sub_100136858(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a2;
  -[PKAccountPayment setState:](v4, "setState:", [a3 integerValue]);
}

void sub_1001368B0(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a2;
  -[PKAccountPayment setStatusCode:](v4, "setStatusCode:", [a3 integerValue]);
}

void sub_100136908(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a2;
  -[PKAccountPayment setCancellable:](v4, "setCancellable:", [a3 BOOLValue]);
}

void sub_100136960(id a1, PKAccountPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPayment *)v3 setCancellationExpiryDate:v4];
}

void sub_1001369C0(id a1, PKAccountPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPayment *)v3 setExpectedCreditReleaseDate:v4];
}

void sub_100136A20(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v5 = [(PKAccountPayment *)a2 fundingSource];
  [v5 setIdentifier:v4];
}

void sub_100136A80(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v6 = [(PKAccountPayment *)a2 fundingSource];
  v5 = [v4 integerValue];

  [v6 setType:v5];
}

void sub_100136AF0(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v5 = [(PKAccountPayment *)a2 fundingSource];
  [v5 setAccountSuffix:v4];
}

void sub_100136B50(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v6 = [(PKAccountPayment *)a2 scheduleDetails];
  v5 = [v4 integerValue];

  [v6 setFrequency:v5];
}

void sub_100136BC0(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v5 = [(PKAccountPayment *)a2 scheduleDetails];
  LODWORD(a2) = [v4 intValue];

  [v5 setScheduledDay:a2];
}

void sub_100136C30(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v6 = [(PKAccountPayment *)a2 scheduleDetails];
  v5 = [v4 integerValue];

  [v6 setPreset:v5];
}

void sub_100136CA0(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v6 = [(PKAccountPayment *)a2 scheduleDetails];
  v5 = _DateForSQLValue();

  [v6 setScheduledDate:v5];
}

void sub_100136D14(id a1, PKAccountPayment *a2, id a3)
{
  v4 = a3;
  v5 = [(PKAccountPayment *)a2 scheduleDetails];
  [v5 setPaymentTermsIdentifier:v4];
}

void sub_100136DFC(id a1, PKAccountPayment *a2, id a3)
{
  v6 = a3;
  v4 = [(PKAccountPayment *)a2 fundingSource];
  v5 = [v4 fundingDetails];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setName:v6];
  }
}

void sub_100137AF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PDNotificationService);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_100137E60(id a1, PDNotificationService *a2, id a3)
{
  v4 = a2;
  -[PDNotificationService setServiceType:](v4, "setServiceType:", [a3 integerValue]);
}

void sub_100137EB8(id a1, PDNotificationService *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PDNotificationService *)v3 setServiceURL:v4];
}

void sub_100137F18(id a1, PDNotificationService *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PDNotificationService *)v3 setRegistrationURL:v4];
}

void sub_100137F90(id a1, PDNotificationService *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDNotificationService *)v3 setLastUpdatedDate:v4];
}

void sub_100137FF8(id a1, PDNotificationService *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDNotificationService *)v3 setLastUpdatedTagDate:v4];
}

void sub_1001383AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v23 = a1;
    v6 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_alloc_init(PKAuxiliaryCapabilityRequirementKeyMaterialContent);
          v14 = [v12 publicKeyIdentifier];
          [v13 setPublicKey:v14];

          v15 = [v12 casdAttestation];
          v29 = v15;
          v16 = [NSArray arrayWithObjects:&v29 count:1];
          [v13 setAttestation:v16];

          v17 = [v12 casdSignature];
          [v13 setSignature:v17];

          v18 = [v12 keyAuthorization];
          [v13 setAuthorization:v18];

          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    v19 = [[PKAuxiliaryCapabilityRequirementKeyMaterial alloc] initWithKeyMaterialContents:v6];
    v20 = [v7 firstObject];
    v21 = [v20 progenitorKeyAttestation];

    if (v21)
    {
      v28 = v21;
      v22 = [NSArray arrayWithObjects:&v28 count:1];
      [v19 setRootAttestation:v22];
    }

    (*(*(v23 + 32) + 16))();
  }
}

void sub_100138920(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error from needsPresentmentKeyRefreshForPass: %@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_100139140(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 32) sharedPeerPaymentWebService];
  v2 = [v3 context];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100139380(void *a1)
{
  [*(a1[4] + 32) updateSharedWebServiceContext:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001394F0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 accountWithPreventingServerFetch:0 completion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService accountWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100139734(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 preferencesWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService preferencesWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100139974(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 updateAccountWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService updateAccountWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100139BB4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 updateAssociatedAccountsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService updateAssociatedAccountsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100139DF4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 updateAccountAndAssociatedAccountsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService updateAccountAndAssociatedAccountsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10013A034(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 updatePreferencesWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService updatePreferencesWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10013A29C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 updateMockAccountBalanceByAddingAmount:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService updateMockAccountBalanceByAddingAmount:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10013A4D8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 deleteAccountWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService deleteAccountWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

void sub_10013A714(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 deletePreferencesWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService deletePreferencesWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

void sub_10013A974(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 setPreferences:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService setPreferences:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void sub_10013ABBC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v3 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v3 registrationStatusWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[PDPeerPaymentService registrationStatusWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10013AF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013AFE8;
  v7[3] = &unk_10083E468;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10013AFE8(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1005CC028();
}

uint64_t sub_10013B090(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013B0A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 rawData];
  (*(v2 + 16))(v2, v3);
}

void sub_10013B34C(uint64_t a1)
{
  [*(a1 + 32) remoteProcessIdentifier];
  v2 = PKBundleIdentifierForPID();
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013B448;
  v11[3] = &unk_10083E3C8;
  v9 = *(a1 + 96);
  v12 = *(a1 + 88);
  sub_1005CC0F8(v3, v10, v4, v9, v5, v6, v7, v8, v2, v11);
}

uint64_t sub_10013B448(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013B654(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v2 = *(a1 + 40)) != 0)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 48) + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013B75C;
    v8[3] = &unk_10083E3C8;
    v5 = *(a1 + 64);
    v9 = *(a1 + 72);
    sub_1005CC28C(v4, v1, v2, v3, v5, v8);
  }

  else
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t sub_10013B75C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013B900(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013B9B4;
  v5[3] = &unk_100848338;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 registrationStatusWithCompletion:v5];
}

uint64_t sub_10013B9B4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2 == 1)
  {
    v3 = [[PKProtobufPeerPaymentMessage alloc] initWithData:*(a1 + 32)];
    v4 = [*(v2 + 40) peerPaymentWebServiceCoordinator];
    [v4 receivedPeerPaymentMessage:v3];

    v5 = [v3 transactionIdentifier];
    v6 = [v3 memo];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      [*(*(v2 + 40) + 40) updatePeerPaymentMemo:v6 forTransactionWithServiceIdentifier:v5];
    }

    if ([v3 messagesContext]!= 2)
    {
      v8 = [v3 requestToken];
      v9 = *(v2 + 40);
      if (v8)
      {
        v10 = [v9 peerPaymentAccountManager];
        v38 = v8;
        v11 = [NSArray arrayWithObjects:&v38 count:1];
        [v10 deletePeerPaymentPendingRequestsForRequestTokens:v11 completion:0];

        v12 = *(v2 + 40);
        v37 = v8;
        v13 = [NSArray arrayWithObjects:&v37 count:1];
        [v12 _removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:v13];
      }

      else
      {
        v28 = v6;
        v29 = v5;
        v30 = v2;
        v14 = [v9[5] peerPaymentPendingRequestsForPeerPaymentAccount];
        v15 = +[NSMutableArray array];
        v16 = [v3 senderAddress];
        v17 = PKBestGuessNormalizedEmailOrPhoneNumber();

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = v14;
        v18 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v33;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v33 != v20)
              {
                objc_enumerationMutation(v13);
              }

              v22 = *(*(&v32 + 1) + 8 * i);
              v23 = [v22 requesteeAddress];
              v24 = [v23 isEqualToString:v17];

              if (v24)
              {
                v25 = [v22 requestToken];
                [v15 addObject:v25];
              }
            }

            v19 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v19);
        }

        v2 = v30;
        if ([v15 count])
        {
          v26 = [*(v30 + 40) peerPaymentWebServiceCoordinator];
          [v26 updatePendingRequestsWithRequestTokens:v15 completion:0];
        }

        v6 = v28;
        v5 = v29;
        v8 = 0;
      }
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not updating memo for device that is not peer payment registered.", buf, 2u);
    }
  }

  result = *(v2 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013BEC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013BFA4;
  v9[3] = &unk_100848360;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 registrationStatusWithCompletion:v9];
}

uint64_t sub_10013BFA4(void *a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (v5)
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating peer payment message received date to %@ for transaction with service identifier: %@.", &v9, 0x16u);
    }

    [*(a1[6] + 40) updatePeerPaymentMessageReceivedDate:a1[4] forTransactionWithServiceIdentifier:a1[5]];
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not updating peer payment message received date for device that is not peer payment registered.", &v9, 2u);
    }
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013C1D4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8 && ([*(a1 + 32) serialNumber], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "associatedPassSerialNumber"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToString:", v4), v4, v3, v5))
  {
    v6 = [v8 currentBalance];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_10013C3A4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier();
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[PDPeerPaymentService lastUsedAlternateFundingSourcePassUniqueIdentifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v4, 0xCu);
    }

    v2 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10013C5C8(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting last used alternative funding source pass unique identifier: %@", &v6, 0xCu);
    }

    PDSetLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PDPeerPaymentService setLastUsedAlternateFundingSourcePassUniqueIdentifier:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v6, 0xCu);
    }
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013C844(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  [v2 downloadPassIfNecessaryWithCompletion:*(a1 + 40)];
}

void sub_10013C9D8(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013CA7C;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 registerDeviceWithReason:0 completion:v3];
}

uint64_t sub_10013CA7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013CBE4(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013CC98;
  v4[3] = &unk_10083C7F8;
  v5 = *(a1 + 40);
  [v2 registerDeviceWithForceReregister:v3 reason:0 completion:v4];
}

uint64_t sub_10013CC98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013CE48(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  [v2 registerDeviceWithRegistrationURL:*(a1 + 40) pushToken:*(a1 + 48) forceReregister:*(a1 + 64) completion:*(a1 + 56)];
}

void sub_10013CFE4(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013D084;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 unregisterDeviceWithCompletion:v3];
}

uint64_t sub_10013D084(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013D1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013D27C;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 initalizeCloudStoreIfNecessaryWithHandler:v3];
}

uint64_t sub_10013D27C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013D3D8(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013D478;
  v3[3] = &unk_100840C70;
  v4 = *(a1 + 40);
  [v2 cloudStoreStatusWithCompletion:v3];
}

uint64_t sub_10013D478(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013D5D0(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013D670;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 checkTLKsMissingWithCompletion:v3];
}

uint64_t sub_10013D670(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013D7C8(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013D868;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 resetApplePayManateeViewWithCompletion:v3];
}

uint64_t sub_10013D868(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013DA04(uint64_t a1)
{
  v2 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013DAB8;
  v5[3] = &unk_100845A78;
  v6 = *(a1 + 56);
  [v2 remoteRegistrationRequest:v3 forHandle:v4 completion:v5];
}

uint64_t sub_10013DAB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013DC00(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 peerPaymentPendingRequestsForRequestTokens:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService peerPaymentPendingRequestsForRequestTokens:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013DE40(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013E0B4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (!v4)
    {
      goto LABEL_21;
    }

    v5 = v4;
    v6 = *v24;
    v7 = PKPeerPaymentPendingRequestStatusUnknown;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 context] != 2)
        {
          v10 = [v9 status];
          v11 = v10;
          if (v10 == v7)
          {

LABEL_17:
            v11 = [v9 requestToken];
            [v2 addObject:v11];
LABEL_18:

            continue;
          }

          if (v10)
          {
            v12 = v7 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {

            goto LABEL_18;
          }

          v13 = [v10 isEqualToString:v7];

          if (v13)
          {
            goto LABEL_17;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (!v5)
      {
LABEL_21:

        v14 = [v2 count];
        v15 = [*(a1 + 32) peerPaymentAccountManager];
        [v15 insertOrUpdatePeerPaymentPendingRequests:*(a1 + 40) completion:*(a1 + 48)];

        if (v14)
        {
          v16 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10013E3C8;
          v20[3] = &unk_1008483B0;
          v22 = *(a1 + 56);
          v20[4] = *(a1 + 32);
          v21 = *(a1 + 48);
          [v16 updatePendingRequestsWithRequestTokens:v2 completion:v20];
        }

        else
        {
          if (*(a1 + 56) == 1)
          {
            [*(a1 + 32) _scheduleNotificationsForPeerPaymentPendingRequests:*(a1 + 40)];
          }

          v19 = *(a1 + 48);
          if (v19)
          {
            (*(v19 + 16))();
          }
        }

        return;
      }
    }
  }

  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PDPeerPaymentService insertOrUpdatePeerPaymentPendingRequests:shouldScheduleNotifications:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

uint64_t sub_10013E3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _scheduleNotificationsForPeerPaymentPendingRequests:v3];
    v3 = v6;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v3);
    v3 = v6;
  }

  return _objc_release_x1(v4, v3);
}

uint64_t (**sub_10013E570(uint64_t a1))(void)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) peerPaymentAccountManager];
    [v2 deletePeerPaymentPendingRequestsForRequestTokens:*(a1 + 40) completion:*(a1 + 48)];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:v4];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PDPeerPaymentService deletePeerPaymentPendingRequestsForRequestTokens:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v7, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

void sub_10013E7B0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    [*(a1 + 32) _removeAllNotificationsForPeerPaymentPendingRequests];
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

void sub_10013E9F4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 recurringPaymentsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService recurringPaymentsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013ECA4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 updateAutoReloadAmount:*(a1 + 40) threshold:*(a1 + 48) identifier:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService updateAutoReloadAmount:threshold:identifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013EEE8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 updateRecurringPaymentsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService updateRecurringPaymentsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void sub_10013F150(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 insertOrUpdateRecurringPayments:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService insertOrUpdateRecurringPayments:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

uint64_t (**sub_10013F3B0(uint64_t a1))(void)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) peerPaymentAccountManager];
    [v2 deleteRecurringPaymentsForIdentifiers:*(a1 + 40) completion:*(a1 + 48)];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _removeNotificationsForPeerPaymentRecurringPaymentsWithIdentifiers:v4];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PDPeerPaymentService deleteRecurringPaymentsForIdentifiers:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v7, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

uint64_t (**sub_10013F5F0(uint64_t a1))(void)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) peerPaymentAccountManager];
    [v2 deleteAllRecurringPaymentsWithCompletion:*(a1 + 40)];

    v3 = *(a1 + 32);

    return [v3 _removeAllNotificationsForPeerPaymentRecurringPayments];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PDPeerPaymentService deleteAllRecurringPaymentsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v6, 0xCu);
    }

    result = *(a1 + 40);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

void sub_10013F860(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentWebServiceCoordinator];
    [v4 performRecurringPaymentAction:*(a1 + 56) identifier:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService performRecurringPaymentAction:identifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void sub_10013FAF4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 updateRecurringPaymentMemo:*(a1 + 40) identifier:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService updateRecurringPaymentMemo:identifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013FD68(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 updateRecurringPaymentStatus:*(a1 + 56) identifier:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService updateRecurringPaymentStatus:identifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_10013FFAC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 hasRecurringPayments:*(a1 + 40)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService hasRecurringPayments:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

id sub_10014040C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 encryptionCertificateForDestination:v4 forceUpdate:v5 completion:v2];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PDPeerPaymentService encryptionCertificateForDestination:forceUpdate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v8, 0xCu);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 2))(result, 0, 0);
    }
  }

  return result;
}

id sub_10014067C(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = a1[5];
    v3 = *(a1[4] + 32);
    v5 = a1[6];
    v4 = a1[7];

    return [v3 encryptData:v2 usingCertificateWithDestination:v4 completion:v5];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PDPeerPaymentService encryptData:usingCertificateWithDestination:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v8, 0xCu);
    }

    result = a1[6];
    if (result)
    {
      return (*(result + 2))(result, 0, 0);
    }
  }

  return result;
}

void sub_100140944(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001409EC;
  v4[3] = &unk_10083E3C8;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  sub_1005CC3A4(v2, v3, v1, v4);
}

uint64_t sub_1001409EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100140B9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100140C44;
  v4[3] = &unk_10083E3C8;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  sub_1005CC454(v2, v1, v3, v4);
}

uint64_t sub_100140C44(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100140DD8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v4 = [*(a1 + 32) peerPaymentAccountManager];
    [v4 insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:*(a1 + 40) memo:*(a1 + 48) counterpartAppearanceData:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[PDPeerPaymentService insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:memo:counterpartAppearanceData:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

void sub_1001410B4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100141274;
    v11[3] = &unk_1008483D8;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v12 = v8;
    v13 = v7;
    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    [v2 accountWithCompletion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPeerPaymentService insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:amount:currency:senderName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }
}

void sub_100141274(void *a1, void *a2)
{
  v3 = [a2 associatedPassUniqueID];
  v4 = [PDPeerPaymentNearbySetupUserNotification alloc];
  v5 = a1[4];
  v6 = PKCurrencyAmountMake();
  v7 = [(PDPeerPaymentNearbySetupUserNotification *)v4 initWithPassUniqueIdentifier:v3 transactionIdentifier:v5 amount:v6 senderName:a1[7]];

  [*(a1[8] + 48) insertUserNotification:v7];
  (*(a1[9] + 16))();
}

uint64_t sub_100141450(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(*(a1 + 32) + 40) peerPaymentCounterpartImageData];
    v3 = *(a1 + 40);
    if (v3)
    {
      v6 = v2;
      v3 = (*(v3 + 16))();
      v2 = v6;
    }

    return _objc_release_x1(v3, v2);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[PDPeerPaymentService counterpartImageDataWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t sub_1001416D0(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1[4] + 40) peerPaymentCounterpartImageDataWithIdentifier:a1[5]];
    v3 = a1[6];
    if (v3)
    {
      v6 = v2;
      v3 = (*(v3 + 16))();
      v2 = v6;
    }

    return _objc_release_x1(v3, v2);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[PDPeerPaymentService counterpartImageDataWithIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    result = a1[6];
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t sub_100141950(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1[4] + 40) peerPaymentCounterpartImageDataForTransactionWithIdentifier:a1[5]];
    v3 = a1[6];
    if (v3)
    {
      v6 = v2;
      v3 = (*(v3 + 16))();
      v2 = v6;
    }

    return _objc_release_x1(v3, v2);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[PDPeerPaymentService counterpartImageDataForTransactionWithIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    result = a1[6];
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t sub_100141BAC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    [*(*(a1 + 32) + 40) deleteAllPeerPaymentCounterpartImageData];
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[PDPeerPaymentService deleteAllCounterpartImageDataWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v5, 0xCu);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id sub_100141E14(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = a1[5];
    v3 = *(a1[4] + 32);
    v4 = a1[6];

    return [v3 reportFailureDiagnostic:v2 completion:v4];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PDPeerPaymentService reportFailureDiagnostic:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v7, 0xCu);
    }

    result = a1[6];
    if (result)
    {
      return (*(result + 2))(result, 0, 0);
    }
  }

  return result;
}

id sub_100142054(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);

    return [v3 userInfoWithCompletion:v2];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PDPeerPaymentService userInfoWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v6, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

id sub_100142288(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 32);

    return [v3 fetchUserInfoWithCompletion:v2];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PDPeerPaymentService fetchUserInfoWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v6, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

id sub_1001424E8(void *a1)
{
  if ([*(a1[4] + 8) peerPaymentAllAccess])
  {
    v2 = a1[5];
    v3 = *(a1[4] + 24);
    v4 = a1[6];

    return [v3 insertOrUpdateUserInfo:v2 completion:v4];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PDPeerPaymentService insertOrUpdateUserInfo:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v7, 0xCu);
    }

    return (*(a1[6] + 16))();
  }
}

uint64_t sub_10014271C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    [*(*(a1 + 32) + 24) deleteUserInfoWithCompletion:*(a1 + 40)];
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[PDPeerPaymentService deleteUserInfoWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v5, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void sub_100142B24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found existing notification for pending request received. Ignoring.", buf, 2u);
    }
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100142C00;
    v5[3] = &unk_100848400;
    v6 = *(a1 + 32);
    [v6 accountWithCompletion:v5];
  }
}

void sub_100142C00(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPassUniqueID];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) requesterAddress];
  v6 = [v4 _displayNameForAddress:v5];

  v7 = [[PDPeerPaymentPendingRequestReceivedUserNotification alloc] initWithPendingRequest:*(a1 + 40) requesterName:v6 forPassUniqueIdentifier:v3];
  if (v7)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = [*(a1 + 40) expiryDate];
    v10 = [v8 dateByAddingUnit:16 value:-1 toDate:v9 options:0];

    [(PDUserNotification *)v7 setDate:v10];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PDUserNotification *)v7 notificationIdentifier];
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scheduling notification for pending request with identifier: %@, scheduled date: %@", &v13, 0x16u);
    }

    [*(*(a1 + 32) + 48) insertUserNotification:v7];
  }
}

void sub_100142E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) requestToken];
        v9 = [PDPeerPaymentPendingRequestReceivedUserNotification notificationIdentifierForRequestToken:v8];

        [*(*(a1 + 32) + 48) removeUserNotificationWithIdentifier:v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_10014323C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) remoteObjectProxy];
    [v2 pendingRequestsChanged];
  }
}

void sub_10014339C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) remoteObjectProxy];
    [v2 recurringPaymentsChanged];
  }
}

void sub_1001434FC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) peerPaymentAllAccess])
  {
    v2 = [*(a1 + 32) remoteObjectProxy];
    [v2 userInfoChanged];
  }
}

void sub_100143C30(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  (*(v1 + 16))(v1, WeakRetained);
}

void sub_100144F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100144F28(uint64_t a1, void *a2, _BYTE *a3)
{
  result = sub_1005DA17C(*(*(a1 + 32) + 80), 1, a2, 3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id *sub_100145388(id *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id sub_100145ED0(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 unsignedIntValue];

  return [Pass predicateForPaymentType:v2];
}

void sub_100146118(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v7 = *a4;
  [a4[1] integerValue];
  [a4[2] integerValue];
  v6 = a4[3];
  if (PKPassSupportsSyncing())
  {
    [*(a1 + 32) addObject:v7];
  }
}

id sub_100146DBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 paymentNetworkIdentifier]);
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_1001477A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001477BC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 associatedAccountFeatureIdentifier] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100147900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100147918(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 preventsWalletDeletion])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void sub_100148738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100148750(void *a1)
{
  v2 = [AppletSubcredential appletSubcredentialWithIdentifier:a1[4] inDatabase:*(a1[5] + 8)];
  v3 = +[PaymentApplication anyInDatabase:withPersistentID:](PaymentApplication, "anyInDatabase:withPersistentID:", *(a1[5] + 8), [v2 paymentApplicationPID]);
  v4 = +[Pass anyInDatabase:withPersistentID:](Pass, "anyInDatabase:withPersistentID:", *(a1[5] + 8), [v3 passPID]);
  v5 = [v4 uniqueID];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

void sub_100149874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001498D4(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  if (!v2)
  {
    v7 = [*(a1 + 32) _passTypeForPass:*(a1 + 48)];
    v8 = [*(a1 + 32) _webServiceForPass:*(a1 + 48) passType:v7];
    if (sub_1005DA3B0(*(*(a1 + 32) + 80), 2, *(a1 + 48)))
    {
      v9 = PKIsMac() ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    *(*(*(a1 + 72) + 8) + 24) = v9;
    if (*(a1 + 56))
    {
      v10 = [*(a1 + 32) _transactionServiceForPass:?];
      v11 = [*(a1 + 32) _messageServiceForPass:*(a1 + 56)];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v3 = [Pass insertPass:*(a1 + 48) withPassType:v7 webService:v8 transactionService:v10 messageService:v11 daemonPassData:*(a1 + 64) inDatabase:*(*(a1 + 32) + 8)];
    v6 = v3 != 0;
    if (!v3)
    {
LABEL_36:

      goto LABEL_37;
    }

    if (*(a1 + 56))
    {
      v12 = [*(a1 + 32) paymentApplicationsForPassUniqueIdentifier:*(a1 + 40)];
      v13 = *(*(a1 + 80) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = [*(a1 + 48) expirationDate];

    v16 = *(a1 + 48);
    if (v15)
    {
      if ([v16 isExpired])
      {
        v17 = *(a1 + 56);
        if (v17)
        {
          v18 = [v17 passActivationState];
          v19 = v18 == 4;
          if (v18 == 4)
          {
            v20 = 3;
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v20 = 2;
          v19 = 1;
        }

        v21 = v3;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ([v16 isVoided])
    {
      v21 = v3;
      v19 = 1;
      v20 = 4;
    }

    else if ([*(a1 + 48) isPastRelevancy])
    {
      v21 = v3;
      v19 = 1;
      v20 = 5;
    }

    else
    {
      if (![*(a1 + 48) isExpiredBasedOnSigningDate])
      {
LABEL_28:
        v21 = v3;
        v19 = 0;
        v20 = 1;
        goto LABEL_29;
      }

      v21 = v3;
      v19 = 1;
      v20 = 6;
    }

LABEL_29:
    [v21 updateWithSortingState:v19 forSortingReason:v20];
    [v3 updateWithLastModifiedSource:*(a1 + 120)];
    [*(a1 + 32) adjustGroupsAfterAddingPass:v3];
    if (v10)
    {
      v22 = [v10 notificationService];
      v23 = *(*(a1 + 88) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    if (v11)
    {
      v25 = [v11 notificationService];
      v26 = *(*(a1 + 96) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    if (v8)
    {
      v28 = [v8 webService];
      v29 = *(*(a1 + 104) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    *(*(*(a1 + 112) + 8) + 24) = 1;
    goto LABEL_36;
  }

  v3 = v2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: failed to insert pass %@ because it already exists.", buf, 0xCu);
  }

  v6 = 0;
LABEL_37:

  return v6;
}

void sub_100149C20(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: Processed pass insertion with FKBankConnectPassUpdateProcessor for primaryAccountIdentifier %@", &v4, 0xCu);
  }
}

void sub_10014A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose((v67 - 240), 8);
  _Block_object_dispose((v67 - 208), 8);
  _Block_object_dispose((v67 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10014A4B4(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pass];
    v5 = *(*(a1 + 80) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if ([*(*(*(a1 + 80) + 8) + 40) passType] == 1)
    {
      [*(*(*(a1 + 80) + 8) + 40) updateDevicePaymentApplicationsWithSecureElementIdentifiers:*(a1 + 48)];
    }

    v7 = [v3 groupingProfile];
    v8 = [v3 webService];
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = [v3 passType];
    v12 = [v9 _webServiceForPass:v10 passType:v11];

    if (sub_1005DA658(*(*(a1 + 32) + 80), 2, v3))
    {
      v13 = PKIsMac() ^ 1;
    }

    else
    {
      v13 = 0;
    }

    *(*(*(a1 + 88) + 8) + 24) = v13;
    if (*(a1 + 64))
    {
      v15 = [*(a1 + 32) paymentApplicationsForPassUniqueIdentifier:*(a1 + 40)];
      v16 = *(*(a1 + 96) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = [v3 transactionService];
      v19 = [*(a1 + 32) _transactionServiceForPass:*(a1 + 64)];
      v20 = [v3 messageService];
      v21 = [*(a1 + 32) _messageServiceForPass:*(a1 + 64)];
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    [v3 updateWithPass:*(a1 + 56) webService:v12 transactionSevice:v19 messageService:v21 daemonPassData:*(a1 + 72)];
    if (*(a1 + 168) != 5)
    {
      v22 = [*(*(*(a1 + 80) + 8) + 40) cloudKitMetadata];
      [v3 udpateWithCloudKitMetadata:v22];

      [v3 udpateWithIsCloudKitArchived:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "isCloudKitArchived")}];
      v23 = [*(*(*(a1 + 80) + 8) + 40) cloudKitSecureMetadata];
      [v3 udpateWithCloudKitSecureMetadata:v23];

      [v3 udpateWithIsCloudKitSecurelyArchived:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "isCloudKitSecurelyArchived")}];
    }

    if (*(a1 + 64))
    {
      v24 = [*(a1 + 32) paymentApplicationsForPassUniqueIdentifier:*(a1 + 40)];
      v25 = *(*(a1 + 104) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    [v3 updateWithLastModifiedSource:*(a1 + 168)];
    [*(a1 + 32) adjustGroupsAfterUpdatingPass:v3 oldGroupingProfile:v7];
    if (v18 | v19)
    {
      v27 = [v18 notificationService];
      v28 = *(*(a1 + 112) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v30 = [v19 notificationService];
      v31 = *(*(a1 + 120) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      if (v18)
      {
        if (!v19 || (v33 = [v18 persistentID], v33 != objc_msgSend(v19, "persistentID")))
        {
          [*(a1 + 32) _deleteNotificationServiceIfOrphaned:v18];
        }
      }
    }

    if (v20 | v21)
    {
      v34 = [v20 notificationService];
      v35 = *(*(a1 + 128) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      v37 = [v21 notificationService];
      v38 = *(*(a1 + 136) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      if (v20)
      {
        if (!v21 || (v40 = [v20 persistentID], v40 != objc_msgSend(v21, "persistentID")))
        {
          [*(a1 + 32) _deleteNotificationServiceIfOrphaned:v20];
        }
      }
    }

    if (!(v8 | v12))
    {
      goto LABEL_35;
    }

    v41 = [v12 webService];
    v42 = *(*(a1 + 144) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;

    if (v8 && v12)
    {
      v44 = [v8 persistentID];
      v45 = [v12 persistentID];
      v46 = *(*(a1 + 152) + 8);
      if (v44 == v45)
      {
        *(v46 + 24) = 0;
LABEL_35:
        *(*(*(a1 + 160) + 8) + 24) = 1;

        goto LABEL_36;
      }

      *(v46 + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 152) + 8) + 24) = 1;
      if (!v8)
      {
        goto LABEL_35;
      }
    }

    v47 = +[NSDate date];
    [v8 updateWithLastDeletionDate:v47];

    [*(a1 + 32) _deleteWebServiceIfOrphaned:v8];
    goto LABEL_35;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v49 = 138412290;
    v50 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: failed to update pass %@ because it no longer exists.", &v49, 0xCu);
  }

LABEL_36:

  return v3 != 0;
}

void sub_10014AC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10014ACE4(void *a1)
{
  v2 = [Pass anyInDatabase:*(a1[4] + 8) withUniqueID:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pass];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [v3 webService];
    v8 = [v3 transactionService];
    v9 = [v3 messageService];
    if (sub_1005DA658(*(a1[4] + 80), 2, v3))
    {
      v10 = PKIsMac() ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    *(*(a1[7] + 8) + 24) = v10;
    if (v7)
    {
      v11 = [v7 webService];
      v12 = *(a1[8] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = +[NSDate date];
      [v7 updateWithLastDeletionDate:v14];
    }

    if (v8)
    {
      v15 = [v8 notificationService];
      v16 = *(a1[9] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    if (v9)
    {
      v18 = [v9 notificationService];
      v19 = *(a1[10] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  return v3 != 0;
}

void sub_10014B090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10014B0C0(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) adjustGroupsBeforeRemovingPass:v2];
    v3 = [v2 passType];
    v4 = [v3 passTypeID];
    v5 = [v4 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v2 serialNumber];
    v9 = [v8 copy];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v2 primaryAccountIdentifier];
    v13 = [v12 copy];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v2 webService];
    v17 = [v2 transactionService];
    v18 = [v2 messageService];
    v19 = [v2 associatedAccountIdentifier];
    if (v19)
    {
      [*(a1 + 32) deleteAccountEventsForAccountIdentifier:v19];
    }

    [v2 deleteFromDatabase];
    sub_100471888(*(*(a1 + 32) + 80), *(a1 + 40));
    v20 = +[PKPassPreferencesManager sharedInstance];
    [v20 removeAllPreferencesForPassWithUniqueID:*(a1 + 40)];

    [*(a1 + 32) _deleteWebServiceIfOrphaned:v16];
    [*(a1 + 32) _deletePassTypeIfOrphaned:v3];
    [*(a1 + 32) _deleteNotificationServiceIfOrphaned:v17];
    [*(a1 + 32) _deleteNotificationServiceIfOrphaned:v18];
  }

  return v2 != 0;
}

void sub_10014B28C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: Processed pass deletion with FKBankConnectPassUpdateProcessor for primaryAccountIdentifier %@", &v4, 0xCu);
  }
}

void sub_10014BAF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 passUniqueIdentifiersMovedToExpired:v4];
}

void sub_10014BB58(uint64_t a1, uint64_t a2)
{
  v3 = [PassAnnotations insertPassAnnotationsForSortingState:*(a1 + 56) forPassPID:a2 inDatabase:*(*(a1 + 32) + 8)];
  v4 = [v3 passAnnotations];

  [*(a1 + 40) setObject:v4 forKeyedSubscript:*(a1 + 48)];
}

void sub_10014BF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10014BFA8(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  if (v2)
  {
    v3 = [PassLiveRender passLiveRenderInDatabase:*(*(a1 + 32) + 8) forPass:v2];
    if (v3)
    {
      v4 = v3;
      [v3 updateWithEnabled:*(a1 + 56)];
    }

    else
    {
      v4 = [PassLiveRender insertEnabled:*(a1 + 56) forPass:v2 inDatabase:*(*(a1 + 32) + 8)];
    }

    v6 = [v4 passLiveRender];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10014C3BC(void *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 72));
    v11 = a1[5];
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    [WeakRetained removeItems:v4 completion:0];
  }

  else
  {
    WeakRetained = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[6];
      v6 = a1[7];
      v7 = 138543618;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer will not sync transaction from CloudKit with serviceIdentifier %{public}@ and transactionSourceIdentifier %@", &v7, 0x16u);
    }
  }
}

void sub_10014C958(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 transactionSourceIdentifier];
        v11 = [v3 objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = objc_alloc_init(NSMutableSet);
        }

        v14 = v13;

        v15 = [v9 paymentTransaction];
        [v14 addObject:v15];

        v16 = [v9 transactionSourceIdentifier];
        [v3 setValue:v14 forKey:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v17 willRemoveTransactionsWithSourceIdentifierMapping:v3];
}

void sub_10014CB20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v8 = [WeakRetained applePayContainer];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014CC18;
  v11[3] = &unk_100844D48;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  [v8 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v9 completion:v11];
}

void sub_10014CC18(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    [WeakRetained removeItems:*(a1 + 40) completion:0];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableArray);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) serviceIdentifier];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }

    v10 = [v3 componentsJoinedByString:{@", "}];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer will not sync transactions from cloud kit with serviceIdentifiers %{public}@ and transactionSourceIdentifier %@", buf, 0x16u);
    }
  }
}

void sub_10014DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 216), 8);
  _Block_object_dispose((v48 - 184), 8);
  _Block_object_dispose((v48 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014DC38(void *a1)
{
  v2 = [Pass anyInDatabase:*(a1[4] + 8) withUniqueID:a1[5]];
  v3 = [v2 pass];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2 && *(*(a1[6] + 8) + 40))
  {
    v6 = [v2 webService];
    v7 = [v6 webService];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v2 transactionService];
    v11 = [v10 notificationService];
    v12 = *(a1[8] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v2 messageService];
    v15 = [v14 notificationService];
    v16 = *(a1[9] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(a1[10] + 8) + 24) = sub_1005DA218(*(a1[4] + 80), *(*(a1[6] + 8) + 40));
    sub_1005DA434(*(a1[4] + 80), a1[12], *(*(a1[6] + 8) + 40));
    *(*(a1[11] + 8) + 24) = sub_1005DA218(*(a1[4] + 80), *(*(a1[6] + 8) + 40));
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[5];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error: Failed to find a pass in database with unique identifier '%@'.", &v21, 0xCu);
    }
  }

  return 1;
}

void sub_10014E590(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = *(*(a1 + 32) + 8);
  v8 = +[Pass predicateForHasAnyWebService];
  v19[0] = v8;
  v9 = [NSNumber numberWithLongLong:a2];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_type_pid" equalToValue:v9];
  v19[1] = v10;
  v11 = [NSArray arrayWithObjects:v19 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v13 = [(SQLiteEntity *)Pass queryWithDatabase:v7 predicate:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014E770;
  v16[3] = &unk_1008487D8;
  v14 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v14;
  v18 = v6;
  v15 = v6;
  [Pass enumeratePassUniqueIDsAndTypesForQuery:v13 withHandler:v16];
}

void sub_10014E770(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 80);
  v8 = a2;
  LODWORD(a3) = sub_1005DA17C(v7, 2, v8, [+[PKPass classForPassType:](PKPass classForPassType:{a3), "defaultSettings"}]);

  if (a3)
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
    *a4 = 1;
  }
}

void sub_10014E90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014E924(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 80);
  v8 = a2;
  LODWORD(a3) = sub_1005DA17C(v7, 2, v8, [+[PKPass classForPassType:](PKPass classForPassType:{a3), "defaultSettings"}]);

  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10014FE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014FE7C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  v8 = [v6 serviceType];
  v9 = [v7 uniqueID];

  v10 = [v5 registrationStatusForNotificationServiceType:v8 passUniqueIdentifier:v9];
  *(*(a1[6] + 8) + 24) = v10 == 1;
  *a3 = *(*(a1[6] + 8) + 24);
}

void sub_10015066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100150690(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 48) secureElementIdentifier];
  v5 = [*(a1 + 48) applicationIdentifier];
  v6 = [PaymentApplication anyInDatabase:v3 withPassUniqueIdentifier:v2 secureElementIdentifier:v4 paymentApplicationIdentifier:v5];

  if (v6 && [*(a1 + 48) supportsSuica])
  {
    v7 = +[FelicaTransitAppletState anyInDatabase:withPaymentApplicationPID:](FelicaTransitAppletState, "anyInDatabase:withPaymentApplicationPID:", *(*(a1 + 32) + 8), [v6 persistentID]);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 transitAppletState];
      v10 = [v9 copy];
      v11 = *(a1 + 56);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001508A8;
      v21[3] = &unk_100848890;
      v12 = v10;
      v22 = v12;
      [v11 enumerateKeysAndObjectsUsingBlock:v21];
      [v12 setNeedsStationProcessing:0];
      if (([v9 isEqual:v12] & 1) == 0)
      {
        [v8 updateWithAppletState:v12];
        v13 = +[SecureElementPassField secureElementPassFieldsInDatabase:forPassPID:](SecureElementPassField, "secureElementPassFieldsInDatabase:forPassPID:", *(*(a1 + 32) + 8), [v6 passPID]);
        v14 = [v9 transitPassPropertiesWithPaymentApplication:*(a1 + 48) fieldCollection:v13];
        v15 = *(*(a1 + 64) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        v17 = [v12 transitPassPropertiesWithPaymentApplication:*(a1 + 48) fieldCollection:v13];
        v18 = *(*(a1 + 72) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }
    }
  }

  return 1;
}

void sub_1001508A8(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) shinkansenOriginStationCode];
  v7 = PKEqualObjects();

  if (v7)
  {
    [*(a1 + 32) setShinkansenOriginStationString:v5];
  }

  v8 = [*(a1 + 32) shinkansenDestinationStationCode];
  v9 = PKEqualObjects();

  if (v9)
  {
    [*(a1 + 32) setShinkansenDestinationStationString:v5];
  }

  v10 = [*(a1 + 32) shinkansenSecondaryOriginStationCode];
  v11 = PKEqualObjects();

  if (v11)
  {
    [*(a1 + 32) setShinkansenSecondaryOriginStationString:v5];
  }

  v12 = [*(a1 + 32) shinkansenSecondaryDestinationStationCode];
  v13 = PKEqualObjects();

  if (v13)
  {
    [*(a1 + 32) setShinkansenSecondaryDestinationStationString:v5];
  }

  v14 = [*(a1 + 32) greenCarOriginStationCode];
  v15 = PKEqualObjects();

  if (v15)
  {
    [*(a1 + 32) setGreenCarOriginStationString:v5];
  }

  v16 = [*(a1 + 32) greenCarDestinationStationCode];
  v17 = PKEqualObjects();

  if (v17)
  {
    [*(a1 + 32) setGreenCarDestinationStationString:v5];
  }
}

void sub_1001510F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015116C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 48) secureElementIdentifier];
  v5 = [*(a1 + 48) applicationIdentifier];
  v6 = [PaymentApplication anyInDatabase:v3 withPassUniqueIdentifier:v2 secureElementIdentifier:v4 paymentApplicationIdentifier:v5];

  if (v6)
  {
    v100 = 0;
    obj = 0;
    v99 = 0;
    if ([*(a1 + 48) supportsSuica])
    {
      v7 = [*(a1 + 56) felicaHistory];
      v8 = v7;
      if (!v7 || [v7 type] == 1)
      {
        v9 = +[FelicaTransitAppletState anyInDatabase:withPaymentApplicationPID:](FelicaTransitAppletState, "anyInDatabase:withPaymentApplicationPID:", *(*(a1 + 32) + 8), [v6 persistentID]);
        if (v9)
        {
          v10 = v9;
          v11 = [v9 transitAppletState];
          v12 = [v11 processUpdateWithAppletHistory:v8 concreteTransactions:&v100 ephemeralTransaction:&obj];
          v13 = *(*(a1 + 96) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          if ([v11 isEqual:*(*(*(a1 + 96) + 8) + 40)])
          {
            v15 = 0;
          }

          else
          {
            v26 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v11 historySequenceNumber];
              [*(*(*(a1 + 96) + 8) + 40) historySequenceNumber];
              v29 = v28 = v10;
              *buf = 138412546;
              v104 = v27;
              v105 = 2112;
              v106 = v29;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updating Applet State history sequence number: %@ -> %@", buf, 0x16u);

              v10 = v28;
            }

            [v10 updateWithAppletState:*(*(*(a1 + 96) + 8) + 40)];
            v15 = 1;
          }
        }

        else
        {
          v20 = objc_alloc_init(PKFelicaTransitAppletState);
          v21 = [v20 processUpdateWithAppletHistory:v8 concreteTransactions:0 ephemeralTransaction:&obj];
          v22 = *(*(a1 + 96) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          v24 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [*(*(*(a1 + 96) + 8) + 40) historySequenceNumber];
            *buf = 138412290;
            v104 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Inserting Applet State history sequence number: %@", buf, 0xCu);
          }

          v10 = +[FelicaTransitAppletState insertFelicaTransitAppletState:forPaymentApplicationPID:inDatabase:](FelicaTransitAppletState, "insertFelicaTransitAppletState:forPaymentApplicationPID:inDatabase:", *(*(*(a1 + 96) + 8) + 40), [v6 persistentID], *(*(a1 + 32) + 8));
          v15 = 1;
          v11 = v20;
        }

        goto LABEL_28;
      }
    }

    else if ([*(a1 + 48) supportsTransit])
    {
      v16 = +[TransitAppletState anyInDatabase:withPaymentApplicationPID:](TransitAppletState, "anyInDatabase:withPaymentApplicationPID:", *(*(a1 + 32) + 8), [v6 persistentID]);
      if (v16)
      {
        v10 = v16;
        v11 = [v16 transitAppletState];
        v17 = [v11 processUpdateWithAppletHistory:*(a1 + 56) concreteTransactions:&v100 ephemeralTransaction:&obj mutatedBalances:&v99 balanceLabelDictionary:*(a1 + 64) unitDictionary:*(a1 + 72) planLabelDictionary:*(a1 + 80)];
        v18 = *(*(a1 + 96) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        if ([v11 isEqual:*(*(*(a1 + 96) + 8) + 40)])
        {
          v15 = 0;
          goto LABEL_28;
        }

        v34 = PKLogFacilityTypeGetObject();
      }

      else
      {
        v30 = objc_alloc_init(PKTransitAppletState);
        v31 = [v30 processUpdateWithAppletHistory:*(a1 + 56) concreteTransactions:0 ephemeralTransaction:&obj mutatedBalances:&v99 balanceLabelDictionary:*(a1 + 64) unitDictionary:*(a1 + 72) planLabelDictionary:*(a1 + 80)];
        v32 = *(*(a1 + 96) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        v34 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [*(*(*(a1 + 96) + 8) + 40) historySequenceNumber];
          *buf = 138412290;
          v104 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Inserting Applet State history sequence number: %@", buf, 0xCu);
        }

        v10 = +[TransitAppletState insertTransitAppletState:forPaymentApplicationPID:inDatabase:](TransitAppletState, "insertTransitAppletState:forPaymentApplicationPID:inDatabase:", *(*(*(a1 + 96) + 8) + 40), [v6 persistentID], *(*(a1 + 32) + 8));
        v11 = v30;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v11 historySequenceNumber];
        v37 = [*(*(*(a1 + 96) + 8) + 40) historySequenceNumber];
        *buf = 138412546;
        v104 = v36;
        v105 = 2112;
        v106 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Applet state changed to Dirty. Updating Applet State history sequence number: %@ -> %@", buf, 0x16u);
      }

      [v10 updateWithAppletState:*(*(*(a1 + 96) + 8) + 40)];
      v15 = 1;
LABEL_28:
      v38 = *(*(*(a1 + 96) + 8) + 40);
      if (v38)
      {
        [*(a1 + 32) _updatePaymentBalancesAndPlansForTransitAppletState:v38 passUniqueIdentifier:*(a1 + 40) paymentApplicationPID:objc_msgSend(v6 unitDictionary:{"persistentID"), *(a1 + 72)}];
        v39 = v15 ^ 1;
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          v39 = 1;
        }

        if ((v39 & 1) == 0)
        {
          v40 = +[SecureElementPassField secureElementPassFieldsInDatabase:forPassPID:](SecureElementPassField, "secureElementPassFieldsInDatabase:forPassPID:", *(*(a1 + 32) + 8), [v6 passPID]);
          v41 = [v11 transitPassPropertiesWithPaymentApplication:*(a1 + 48) fieldCollection:v40];
          v42 = *(*(a1 + 104) + 8);
          v43 = *(v42 + 40);
          *(v42 + 40) = v41;

          v44 = [*(*(*(a1 + 96) + 8) + 40) transitPassPropertiesWithPaymentApplication:*(a1 + 48) fieldCollection:v40];
          v45 = *(*(a1 + 112) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v44;
        }
      }

      if ((v15 & 1) == 0 && *(a1 + 144) != 1)
      {
        goto LABEL_86;
      }

      v47 = *(a1 + 88);
      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = +[NSDate date];
      }

      v49 = v48;
      v94 = v10;
      if (!obj)
      {
        v67 = [*(*(*(a1 + 96) + 8) + 40) enrouteTransitTypes];
        v68 = [v67 lastObject];

        if (v68)
        {
          if ([0 length])
          {
            v69 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v104 = 0;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Retaining Ephemeral Transaction: %@", buf, 0xCu);
            }
          }

          v64 = 0;
        }

        else
        {
          v64 = [v10 paymentTransactionIdentifier];
          if ([v64 length])
          {
            v70 = [PaymentTransaction anyInDatabase:*(*(a1 + 32) + 8) withIdentifier:v64];
            v71 = [v70 paymentTransaction];
            v72 = *(*(a1 + 128) + 8);
            v73 = *(v72 + 40);
            *(v72 + 40) = v71;
          }

          if (*(*(*(a1 + 128) + 8) + 40))
          {
            v74 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v104 = v64;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Removing Ephemeral Transaction: %@", buf, 0xCu);
            }

            v62 = 0;
            goto LABEL_64;
          }
        }

LABEL_65:
        v75 = [v100 count];
        v76 = v75;
        if (!obj)
        {
          if (v75)
          {
            goto LABEL_70;
          }

          if (*(a1 + 144) != 1)
          {
            v76 = 0;
            goto LABEL_70;
          }
        }

        v76 = v75 + 1;
LABEL_70:
        v77 = [[NSMutableArray alloc] initWithCapacity:v76];
        v78 = v77;
        if (v100)
        {
          [v77 addObjectsFromArray:?];
        }

        if (obj)
        {
          [v78 addObject:?];
        }

        v93 = v6;
        if (![v78 count] && *(a1 + 144) == 1 && (*(a1 + 145) & 1) == 0)
        {
          v79 = [PKPaymentTransaction paymentTransactionWithSource:1];
          [v79 setTransactionType:2];
          [v79 setTransitType:517];
          [v79 setOriginatedByDevice:1];
          [v79 setTransactionStatus:-1];
          [v78 addObject:v79];
        }

        v92 = v11;
        v80 = [*(a1 + 48) appletCurrencyCode];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v81 = v78;
        v82 = [v81 countByEnumeratingWithState:&v95 objects:v102 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v96;
          do
          {
            v85 = 0;
            v86 = v49;
            do
            {
              if (*v96 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v87 = *(*(&v95 + 1) + 8 * v85);
              [v87 setTransactionDate:v86];
              v49 = [v86 dateByAddingTimeInterval:0.001];

              [v87 setCurrencyCode:v80];
              v88 = [*(a1 + 48) stationCodeProvider];
              [v87 setStationCodeProvider:v88];

              [v87 setTransactionStatus:-1];
              [v87 setShouldSuppressDate:*(a1 + 145)];
              v85 = v85 + 1;
              v86 = v49;
            }

            while (v83 != v85);
            v83 = [v81 countByEnumeratingWithState:&v95 objects:v102 count:16];
          }

          while (v83);
        }

        v89 = *(*(a1 + 136) + 8);
        v90 = *(v89 + 40);
        *(v89 + 40) = v81;

        v11 = v92;
        v6 = v93;
        v10 = v94;
        goto LABEL_86;
      }

      [obj setTransactionStatus:-1];
      v50 = [v11 enrouteTransitTypes];
      v51 = [v50 count];

      if (v51)
      {
        v52 = [*(*(*(a1 + 96) + 8) + 40) enrouteTransitTypes];
        v53 = [v52 lastObject];

        v54 = [NSSet alloc];
        v55 = [v11 enrouteTransitTypes];
        v56 = [v54 initWithArray:v55];

        if (v53 && [v56 containsObject:v53])
        {
          objc_storeStrong((*(*(a1 + 120) + 8) + 40), obj);
        }

        v10 = v94;
      }

      v57 = [v10 paymentTransactionIdentifier];
      if ([v57 length])
      {
        v58 = [PaymentTransaction anyInDatabase:*(*(a1 + 32) + 8) withIdentifier:v57];
        v59 = [v58 paymentTransaction];
        v60 = *(*(a1 + 128) + 8);
        v61 = *(v60 + 40);
        *(v60 + 40) = v59;
      }

      v62 = [obj identifier];

      v63 = *(*(*(a1 + 128) + 8) + 40);
      v64 = PKLogFacilityTypeGetObject();
      v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
      if (v63)
      {
        if (v65)
        {
          *buf = 138412290;
          v104 = v62;
          v66 = "Replacing Ephemeral Transaction: %@";
LABEL_57:
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, v66, buf, 0xCu);
        }
      }

      else if (v65)
      {
        *buf = 138412290;
        v104 = obj;
        v66 = "Inserting Ephemeral Transaction: %@";
        goto LABEL_57;
      }

LABEL_64:

      [v10 setPaymentTransactionIdentifier:v62];
      v64 = v62;
      goto LABEL_65;
    }

    v11 = 0;
    v10 = 0;
LABEL_86:
  }

  return 1;
}

uint64_t sub_1001521B0(uint64_t a1)
{
  v2 = [PeerPaymentAccount associatedPassUniqueIDInDatabase:*(*(a1 + 32) + 8)];
  v3 = [*(a1 + 32) primaryPaymentApplicationForPassUniqueIdentifier:v2];
  v4 = [v3 transactionSourceIdentifier];
  v5 = [*(a1 + 32) transactionWithServiceIdentifier:*(a1 + 40) transactionSourceIdentifier:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(PKPaymentTransaction);
    [v5 setTransactionType:3];
    [v5 addUpdateReasons:256];
    [v5 setServiceIdentifier:*(a1 + 40)];
    v6 = +[NSDate date];
    [v5 setTransactionDate:v6];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [v5 peerPaymentMemo];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      [v5 setPeerPaymentMemo:*(a1 + 48)];
      v10 = [*(a1 + 32) _insertOrUpdatePaymentTransaction:v5 transactionSourceIdentifier:v4 transactionArchive:0 originDeviceID:0 insertionMode:0 performTruncation:0 insertedTransaction:0];
    }
  }

  return 1;
}

uint64_t sub_1001523D8(uint64_t a1)
{
  v2 = [PeerPaymentAccount associatedPassUniqueIDInDatabase:*(*(a1 + 32) + 8)];
  v3 = [*(a1 + 32) primaryPaymentApplicationForPassUniqueIdentifier:v2];
  v4 = [v3 transactionSourceIdentifier];
  v5 = [*(a1 + 32) transactionWithServiceIdentifier:*(a1 + 40) transactionSourceIdentifier:v4];
  v6 = v5;
  if (v5 && *(a1 + 48))
  {
    [v5 setPeerPaymentMessageReceivedDate:?];
    [v6 addUpdateReasons:512];
    v7 = [*(a1 + 32) _insertOrUpdatePaymentTransaction:v6 transactionSourceIdentifier:v4 transactionArchive:0 originDeviceID:0 insertionMode:0 performTruncation:0 insertedTransaction:0];
  }

  return 1;
}

void sub_100152630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100152648(uint64_t a1)
{
  v2 = [PeerPaymentAccount associatedPassUniqueIDInDatabase:*(*(a1 + 32) + 8)];
  v3 = [*(a1 + 32) primaryPaymentApplicationForPassUniqueIdentifier:v2];
  v4 = [v3 transactionSourceIdentifier];
  v5 = [*(a1 + 32) transactionWithServiceIdentifier:*(a1 + 40) transactionSourceIdentifier:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(PKPaymentTransaction);
    [v5 setTransactionType:3];
    [v5 setPeerPaymentPaymentMode:2];
    [v5 addUpdateReasons:256];
    [v5 setServiceIdentifier:*(a1 + 40)];
    v6 = +[NSDate date];
    [v5 setTransactionDate:v6];
  }

  [v5 setPeerPaymentMemo:*(a1 + 48)];
  [v5 setPeerPaymentCounterpartImageRecordIdentifier:*(a1 + 56)];
  [v5 setOriginatedByDevice:1];
  v7 = [*(a1 + 32) _insertOrUpdatePaymentTransaction:v5 transactionSourceIdentifier:v4 transactionArchive:0 originDeviceID:0 insertionMode:0 performTruncation:0 insertedTransaction:0];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

uint64_t sub_100154458(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [PaymentCommutePlanDetail deleteEntitiesForPass:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8)];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [PaymentCommutePlanDetail insertPaymentPlan:*(*(&v16 + 1) + 8 * v7) withPaymentPass:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8)];
        v9 = [v8 paymentPlan];
        [v2 addObject:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100154630;
  v13[3] = &unk_100848738;
  v14 = *(a1 + 56);
  v15 = v2;
  v11 = v2;
  [v10 dispatchDelegateCallback:v13];

  return 1;
}

uint64_t sub_100154E2C(uint64_t a1)
{
  [PaymentBalance deleteEntitiesForPass:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [PaymentBalance insertPaymentBalance:*(*(&v9 + 1) + 8 * v6) withPaymentPass:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8), v9];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_100154F50(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 copy];
  [v5 paymentPassWithUniqueIdentifier:v3 didUpdateBalancesFrom:v6 toBalances:a1[6]];
}

void sub_1001551B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  [v4 paymentPassWithUniqueIdentifier:v2 didUpdateBalancesFrom:0 toBalances:v5];
}

void sub_100155300(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[NSArray array];
  [v3 paymentPassWithUniqueIdentifier:v2 didUpdateBalancesFrom:0 toBalances:v4];
}

void sub_100155E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100155E54(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) identifier];
    v165 = [*(a1 + 40) serviceIdentifier];
    v164 = [*(a1 + 40) paymentHash];
    v161 = [*(a1 + 40) transactionDate];
    v3 = [*(a1 + 40) hasNotificationServiceData];
    v4 = [*(a1 + 40) hasTransactionSource];
    v158 = [*(a1 + 40) updateReasons];
    v160 = [*(a1 + 48) _updateCameExclusivelyFromCloudStore:?];
    v5 = [*(a1 + 48) passUniqueIdentifierForTransactionSourceIdentifier:*(a1 + 32)];
    v6 = [*(a1 + 48) paymentApplicationForTransactionSourceIdentifier:*(a1 + 32)];

    v162 = v5;
    if (v6)
    {
      v163 = [NSSet setWithObject:*(a1 + 32)];
    }

    else
    {
      v10 = [*(a1 + 48) transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:v5];
      v11 = [NSSet setWithObject:*(a1 + 32)];
      v163 = [v11 setByAddingObjectsFromSet:v10];
    }

    v12 = [*(a1 + 40) accountIdentifier];
    v13 = [*(a1 + 40) accountType];
    v14 = [*(a1 + 48) transactionSourceTypeForTransactionSourceIdentifier:*(a1 + 32)];
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 72);
      *buf = 134218754;
      *v205 = v16;
      *&v205[8] = 2114;
      *&v205[10] = v2;
      v206 = 2048;
      *v207 = v14;
      *&v207[8] = 2048;
      v208 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "will insert or update (%lu) transaction: %{public}@ source: %lu, %ld", buf, 0x2Au);
    }

    if ([v2 length])
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withIdentifier:v2];
      v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v18)
        {
          *buf = 138543362;
          *v205 = v2;
          v19 = "Matched Transaction to Transaction with Identifier: %{public}@";
          v20 = v15;
          v21 = 12;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v18)
      {
        *buf = 138543362;
        *v205 = v2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Identifier: %{public}@", buf, 0xCu);
      }
    }

    if ([v165 length])
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withServiceIdentifier:v165 forTransactionSourceIdentifier:*(a1 + 32)];
      v22 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v22)
        {
          v23 = *(a1 + 32);
          *buf = 138543618;
          *v205 = v165;
          *&v205[8] = 2112;
          *&v205[10] = v23;
          v19 = "Matched Transaction to Transaction with Service Identifier: %{public}@, transactionSourceIdentifier: %@";
          v20 = v15;
          v21 = 22;
          goto LABEL_20;
        }

LABEL_21:

        v24 = v164;
        goto LABEL_22;
      }

      if (v22)
      {
        v63 = *(a1 + 32);
        *buf = 138543618;
        *v205 = v165;
        *&v205[8] = 2112;
        *&v205[10] = v63;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Service Identifier: %{public}@, transactionSourceIdentifier: %@", buf, 0x16u);
      }
    }

    if ([v12 length] && v13)
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withServiceIdentifier:v165 accountIdentifier:v12 accountType:v13];
      v64 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v64)
        {
          v65 = PKPaymentTransactionAccountTypeToString();
          *buf = 138543874;
          *v205 = v165;
          *&v205[8] = 2112;
          *&v205[10] = v12;
          v206 = 2114;
          *v207 = v65;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Matched Transaction to Transaction with Service Identifier: %{public}@, accountIdentifier: %@, accountType %{public}@", buf, 0x20u);
        }

        goto LABEL_21;
      }

      if (v64)
      {
        v71 = PKPaymentTransactionAccountTypeToString();
        *buf = 138543874;
        *v205 = v165;
        *&v205[8] = 2112;
        *&v205[10] = v12;
        v206 = 2114;
        *v207 = v71;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Service Identifier: %{public}@, accountIdentifier: %@, accountType %{public}@", buf, 0x20u);
      }
    }

    v24 = v164;
    if ([v164 length])
    {
      if (v4)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      if (v3)
      {
        v73 = 2;
      }

      else
      {
        v73 = 1;
      }

      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withPaymentHash:v164 withTransactionSource:v72 withNotificationServiceData:v73 transactionSourceIdentifiers:v163];
      v74 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v74)
        {
          *buf = 138412290;
          *v205 = v164;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Matched Transaction to Transaction with Payment Hash: %@", buf, 0xCu);
        }

LABEL_22:
        v25 = *(a1 + 72);
        if (v25 >= 2)
        {
          if (v25 == 2)
          {
            if (v17)
            {
              v157 = v12;
              v50 = [v17 identifier];
              v27 = [v17 serviceIdentifier];
              v51 = [v17 paymentTransaction];
              v52 = *(a1 + 48);
              v173[0] = _NSConcreteStackBlock;
              v173[1] = 3221225472;
              v173[2] = sub_100158018;
              v173[3] = &unk_100848738;
              v174 = *(a1 + 32);
              v30 = v51;
              v175 = v30;
              [v52 dispatchDelegateCallback:v173];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *v205 = v50;
                *&v205[8] = 2114;
                *&v205[10] = v27;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing Existing Transaction with Identifier: %{public}@, serviceIdentifier: %{public}@", buf, 0x16u);
              }

              [v17 deleteFromDatabase];
              if ((v160 & 1) == 0)
              {
                WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
                v54 = [WeakRetained applePayContainer];
                v55 = v27;
                v56 = *(a1 + 32);
                v169[0] = _NSConcreteStackBlock;
                v169[1] = 3221225472;
                v169[2] = sub_100158024;
                v169[3] = &unk_10083DE10;
                v169[4] = *(a1 + 48);
                v170 = v30;
                v171 = v55;
                v172 = *(a1 + 32);
                v57 = v56;
                v27 = v55;
                [v54 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v57 completion:v169];
              }

              v58 = *(a1 + 48);
              v166[0] = _NSConcreteStackBlock;
              v166[1] = 3221225472;
              v166[2] = sub_10015812C;
              v166[3] = &unk_100848738;
              v167 = *(a1 + 32);
              v168 = v50;
              v42 = v50;
              [v58 dispatchDelegateCallback:v166];

              v7 = 0;
              v24 = v164;
              v43 = v162;
              v12 = v157;
              goto LABEL_173;
            }
          }

          else if (v25 == 3)
          {
            if (!v17)
            {
              v26 = [*(a1 + 40) merchant];
              v27 = [v26 name];

              v28 = [PaymentTransaction closestPendingTransactionInDatabase:*(*(a1 + 48) + 8) fromTransactionDate:v161 withNotificationServiceData:1 forMerchantName:v27 forTransactionSourceIdentifiers:v163];
              v17 = v28;
              if (!v28)
              {
                v7 = 0;
                v43 = v162;
                goto LABEL_175;
              }

              v29 = [v28 identifier];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v205 = v29;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Soft-Matched Transaction to Transaction with Identifier: %{public}@", buf, 0xCu);
              }
            }

            v27 = [v17 identifier];
            v30 = [v17 paymentTransaction];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v31 = *(a1 + 40);
              *buf = 138543618;
              *v205 = v27;
              *&v205[8] = 2112;
              *&v205[10] = v31;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Replacing Existing Transaction with Identifier: %{public}@ with Transaction: %@", buf, 0x16u);
            }

            [v17 replaceWithPaymentTransaction:*(a1 + 40)];
            v32 = [v17 paymentTransaction];
            v33 = *(*(a1 + 64) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;

            [*(*(*(a1 + 64) + 8) + 40) addUpdateReasons:v158];
            v35 = *(*(*(a1 + 64) + 8) + 40);
            if (!v35)
            {
              v7 = 0;
              v43 = v162;
LABEL_174:

LABEL_175:
              goto LABEL_176;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v205 = v27;
              *&v205[8] = 2112;
              *&v205[10] = v35;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resulting Transaction with identifier %{public}@: %@", buf, 0x16u);
            }

            if ((v160 & 1) == 0 && ([*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload] & 1) == 0)
            {
              v36 = *(a1 + 48);
              v202 = *(*(*(a1 + 64) + 8) + 40);
              [NSArray arrayWithObjects:&v202 count:1];
              v38 = v37 = v12;
              [v36 _updateCloudStoreWithTransactions:v38 transactionSourceIdentifier:*(a1 + 32)];

              v12 = v37;
            }

            v39 = *(a1 + 48);
            v176[0] = _NSConcreteStackBlock;
            v176[1] = 3221225472;
            v176[2] = sub_100158000;
            v176[3] = &unk_100848A20;
            v40 = *(a1 + 32);
            v41 = *(a1 + 64);
            v177 = v40;
            v179 = v41;
            v30 = v30;
            v178 = v30;
            [v39 dispatchDelegateCallback:v176];

            v7 = 0;
            v42 = v177;
            v43 = v162;
LABEL_173:

            goto LABEL_174;
          }

          v7 = 0;
          v43 = v162;
LABEL_176:

          goto LABEL_177;
        }

        v155 = v2;
        v156 = v12;
        if (v17)
        {
          LODWORD(v44) = 0;
          goto LABEL_41;
        }

        if (![*(a1 + 40) supportsFuzzyMatching])
        {
LABEL_197:
          if (*(a1 + 72) == 1)
          {
            v146 = 0;
            v153 = 0;
            v30 = 0;
            v27 = 0;
            v17 = 0;
            goto LABEL_150;
          }

          if (v3)
          {
            v124 = 1;
          }

          else
          {
            v124 = 2;
          }

          v99 = [Pass anyInDatabase:*(*(a1 + 48) + 8) withUniqueID:v162];
          v100 = [*(a1 + 48) paymentApplicationIdentifierForTransactionSourceIdentifier:*(a1 + 32)];
          v125 = *(a1 + 48);
          v126 = *(v125 + 8);
          v127 = [*(v125 + 64) secureElementIdentifiers];
          v128 = [PaymentApplication anyInDatabase:v126 withApplicationIdentifier:v100 secureElementIdentifiers:v127];

          v151 = v128;
          [v128 paymentNetworkIdentifier];
          v129 = PKMaxPaymentTransactionsForCredentialType();
          if (([v99 hasAssociatedPeerPaymentAccount] & 1) == 0)
          {
            v12 = v156;
            if ((PKDisableTransactionTableTruncation() & 1) == 0)
            {
              v130 = [v99 associatedAccountIdentifier];
              if (!v130)
              {
                v131 = 0;
                if ((PKTransactionsUnlimitedForCredentialType() & 1) == 0 && (v14 - 1) >= 3)
                {
                  if ([PaymentTransaction numberOfPaymentTransactionsInDatabase:*(*(a1 + 48) + 8) forTransactionSourceIdentifiers:v163 withNotificationServiceData:v124 newerThanDate:v161]>= v129)
                  {
                    v153 = 0;
                    v27 = 0;
                    v17 = 0;
                    v24 = v164;
LABEL_221:

                    v146 = 0;
                    v30 = 0;
LABEL_149:

                    v2 = v155;
LABEL_150:
                    v101 = *(*(*(a1 + 64) + 8) + 40);
                    if (!v101)
                    {
                      v102 = [v17 paymentTransaction];
                      v103 = *(*(a1 + 64) + 8);
                      v104 = *(v103 + 40);
                      *(v103 + 40) = v102;

                      v101 = *(*(*(a1 + 64) + 8) + 40);
                    }

                    [v101 addUpdateReasons:v158];
                    v7 = [v27 transactionArchive];
                    if (!v7)
                    {
                      v105 = PKLogFacilityTypeGetObject();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        v106 = *(*(*(a1 + 64) + 8) + 40);
                        *buf = 138543618;
                        *v205 = v2;
                        *&v205[8] = 2112;
                        *&v205[10] = v106;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Error: There is no transaction archive for transaction with identifier %{public}@ %@", buf, 0x16u);
                      }
                    }

                    v107 = *(*(*(a1 + 64) + 8) + 40);
                    if (v107)
                    {
                      v159 = v27;
                      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543874;
                        *v205 = v2;
                        *&v205[8] = 2112;
                        *&v205[10] = v107;
                        v206 = 2112;
                        *v207 = v7;
                        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "resulting transaction for identifier %{public}@: %@ and archive: %@", buf, 0x20u);
                      }

                      if ((v146 | [*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload] ^ 1) == 1)
                      {
                        v108 = [*(*(*(a1 + 64) + 8) + 40) hasCloudArchivableDeviceData];
                        v150 = [v30 isCloudArchivableDeviceDataEqual:*(*(*(a1 + 64) + 8) + 40)] ^ 1;
                        v109 = [v153 allArchiveLocationsWithType:0 areArchived:1];
                        v110 = [v7 allArchiveLocationsWithType:0 areArchived:1];
                        v111 = v110;
                        v147 = v109 & v110;
                        v112 = [*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload];
                        if (v112)
                        {
                          v113 = v108;
                          v114 = 0;
                        }

                        else
                        {
                          v113 = v108;
                          if (((v160 ^ 1) & v108) == 1 && (v30 == 0) | v150 & 1)
                          {
                            v114 = 1;
                          }

                          else
                          {
                            v114 = v160 & (v147 ^ 1);
                          }
                        }

                        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138545922;
                          *v205 = v155;
                          *&v205[8] = 2114;
                          *&v205[10] = v165;
                          v206 = 1024;
                          *v207 = v114;
                          *&v207[4] = 1024;
                          *&v207[6] = v30 != 0;
                          LOWORD(v208) = 1024;
                          *(&v208 + 2) = v113;
                          HIWORD(v208) = 1024;
                          v209 = v150;
                          v210 = 1024;
                          v211 = v109;
                          v212 = 1024;
                          v213 = v111 & 1;
                          v214 = 1024;
                          v215 = v147;
                          v216 = 1024;
                          v217 = v160;
                          v218 = 1024;
                          v219 = v112;
                          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "should update cloud store for id %{public}@ service id %{public}@: %d (%d, %d, %d, %d, %d, %d, %d, %d)", buf, 0x4Cu);
                        }

                        v2 = v155;
                        v12 = v156;
                        v24 = v164;
                        if (v114)
                        {
                          v115 = *(a1 + 48);
                          v203 = *(*(*(a1 + 64) + 8) + 40);
                          v116 = [NSArray arrayWithObjects:&v203 count:1];
                          [v115 _updateCloudStoreWithTransactions:v116 transactionSourceIdentifier:*(a1 + 32)];

                          v12 = v156;
                        }
                      }

                      v117 = *(a1 + 48);
                      v180[0] = _NSConcreteStackBlock;
                      v180[1] = 3221225472;
                      v180[2] = sub_100157FE8;
                      v180[3] = &unk_100848A20;
                      v118 = *(a1 + 32);
                      v119 = *(a1 + 64);
                      v181 = v118;
                      v183 = v119;
                      v30 = v30;
                      v182 = v30;
                      [v117 dispatchDelegateCallback:v180];

                      v43 = v162;
                      v27 = v159;
                    }

                    else
                    {
                      v43 = v162;
                    }

                    v42 = v153;
                    goto LABEL_173;
                  }

                  v131 = 1;
                }

LABEL_207:
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = *(a1 + 40);
                  *buf = 138543618;
                  *v205 = v155;
                  *&v205[8] = 2112;
                  *&v205[10] = v132;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Inserting New Transaction with identifier %{public}@: %@", buf, 0x16u);
                }

                v133 = v129;

                v134 = *(a1 + 80);
                if (v134)
                {
                  *v134 = 1;
                }

                v148 = [TransactionSource anyInDatabase:*(*(a1 + 48) + 8) withIdentifier:*(a1 + 32)];
                v17 = [PaymentTransaction insertPaymentTransaction:"insertPaymentTransaction:withTransactionSource:inDatabase:" withTransactionSource:*(a1 + 40) inDatabase:?];
                v27 = [v17 dbPaymentTransactionArchive];
                v153 = [v27 transactionArchive];
                [v27 updateWithTransactionArchive:*(a1 + 56)];
                if ([v99 associatedAccountFeatureIdentifier] != 4 || +[PKPaymentMessage canArchiveWithTransaction:](PKPaymentMessage, "canArchiveWithTransaction:", *(a1 + 40)) && (+[PaymentMessage paymentMessagesInDatabase:forPaymentPassUniqueIdentifier:](PaymentMessage, "paymentMessagesInDatabase:forPaymentPassUniqueIdentifier:", *(*(a1 + 48) + 8), v162), v135 = objc_claimAutoreleasedReturnValue(), v192[0] = _NSConcreteStackBlock, v192[1] = 3221225472, v192[2] = sub_100157E4C, v192[3] = &unk_1008489D0, v193 = *(a1 + 40), v136 = objc_msgSend(v135, "pk_hasObjectPassingTest:", v192), v193, v135, v136))
                {
                  [PaymentMessage archiveMessagesOfType:1 forPass:v99 inDatabase:*(*(a1 + 48) + 8)];
                }

                if ((v131 & *(a1 + 88)) == 1)
                {
                  v137 = objc_alloc_init(NSMutableSet);
                  v187[0] = _NSConcreteStackBlock;
                  v187[1] = 3221225472;
                  v187[2] = sub_100157E58;
                  v187[3] = &unk_1008489F8;
                  v138 = v163;
                  v139 = *(a1 + 48);
                  v188 = v138;
                  v189 = v139;
                  v191 = v133;
                  v140 = v137;
                  v190 = v140;
                  v141 = objc_retainBlock(v187);
                  (v141[2])(v141, 1, 1);
                  (v141[2])(v141, 1, 2);
                  (v141[2])(v141, 2, 0);
                  v142 = *(a1 + 48);
                  v184[0] = _NSConcreteStackBlock;
                  v184[1] = 3221225472;
                  v184[2] = sub_100157EDC;
                  v184[3] = &unk_100848738;
                  v185 = v140;
                  v186 = *(a1 + 32);
                  v143 = v140;
                  [v142 dispatchDelegateCallback:v184];
                  v24 = v164;
                  if (([v17 existsInDatabase] & 1) == 0)
                  {

                    v17 = 0;
                  }

                  v12 = v156;
                }

                else
                {
                  v24 = v164;
                  v12 = v156;
                }

                goto LABEL_221;
              }
            }
          }

          v131 = 0;
          goto LABEL_207;
        }

        v59 = [*(a1 + 48) passWithUniqueIdentifier:v162];
        v60 = [v59 paymentPass];

        v61 = v12;
        if ([v60 hasAssociatedPeerPaymentAccount])
        {
          v62 = [v24 length] == 0;
        }

        else
        {
          v75 = [v60 associatedAccountServiceAccountIdentifier];
          if (v75)
          {
            v62 = [v24 length] == 0;
          }

          else
          {
            v62 = 1;
          }
        }

        v121 = [*(a1 + 40) dpanIdentifier];
        v122 = [*(a1 + 40) altDSID];
        if (!v62)
        {
          LODWORD(v44) = 0;
          v17 = 0;
          v12 = v61;
          goto LABEL_196;
        }

        v154 = v122;
        if ([v121 length])
        {
          v44 = [*(a1 + 48) paymentApplicationWithDPANIdentifier:v121];

          v12 = v61;
          if (!v44)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v12 = v61;
          if ([v154 length] && !PKAltDSIDIsCurrentUser())
          {
            LODWORD(v44) = 0;
LABEL_194:
            v17 = 0;
LABEL_195:
            v122 = v154;
LABEL_196:

            v2 = v155;
            v24 = v164;
            if (v17)
            {
LABEL_41:
              v45 = [v17 paymentTransaction];
              v46 = [PaymentTransactionArchive anyInDatabase:*(*(a1 + 48) + 8) forTransaction:v17];
              v152 = [v46 transactionArchive];
              v47 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v205 = v152;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Existing transaction archive %@", buf, 0xCu);
              }

              v48 = *(a1 + 56);
              if (v48)
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v205 = v48;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updating existing transaction archive with new archive %@", buf, 0xCu);
                }

                [v46 updateWithTransactionArchive:*(a1 + 56)];
              }

              v149 = [v46 transactionArchive];
              if (v160 & 1) != 0 || ![*(a1 + 40) hasCloudArchivableDeviceData] || (objc_msgSend(*(a1 + 40), "isCloudArchivableDeviceDataEqual:", v45))
              {
                v49 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
                if ((v158 & 0x10000) != 0)
                {
                  if (v49)
                  {
                    *buf = 138543618;
                    *v205 = v165;
                    *&v205[8] = 2114;
                    *&v205[10] = v2;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to NO because of upload-after-reset for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                  }

                  [v149 updateArchiveLocationsWithType:0 isArchived:0];
                }

                else
                {
                  if (v49)
                  {
                    *buf = 138543618;
                    *v205 = v2;
                    *&v205[8] = 2114;
                    *&v205[10] = v165;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to YES on every matching location in the archive for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                  }

                  [v149 updateTransactionArchiveLocationsWithArchive:v152 type:0 archived:1];
                }

                v146 = 0;
                if (!v44)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *v205 = v2;
                  *&v205[8] = 2114;
                  *&v205[10] = v165;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to NO because the local device data has changed for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                }

                [v149 updateArchiveLocationsWithType:0 isArchived:0];
                v146 = 1;
                if (!v44)
                {
                  goto LABEL_79;
                }
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *v205 = v2;
                *&v205[8] = 2114;
                *&v205[10] = v165;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "marking transaction as fuzzy matched: %{public}@ service: %{public}@", buf, 0x16u);
              }

              [*(a1 + 40) setFuzzyMatched:1];
LABEL_79:
              v145 = v46;
              if (v45)
              {
                v66 = v160;
              }

              else
              {
                v66 = 0;
              }

              if (v66 == 1)
              {
                v67 = [v45 merchant];
                v68 = [*(a1 + 40) merchant];
                if ([v67 mapsDataIsFromLocalMatch] & 1) != 0 || (objc_msgSend(v67, "shouldIgnoreMapsMatches"))
                {
                  v69 = 0;
                  v70 = 0;
                }

                else
                {
                  v76 = [v67 mapsBrand];
                  v70 = [v76 identifier];

                  v77 = [v67 mapsMerchant];
                  v69 = [v77 identifier];
                }

                if ([v68 mapsDataIsFromLocalMatch] & 1) != 0 || (objc_msgSend(v68, "shouldIgnoreMapsMatches"))
                {
                  v78 = 0;
                  v79 = 0;
                }

                else
                {
                  v80 = [v68 mapsBrand];
                  v79 = [v80 identifier];

                  [v68 mapsMerchant];
                  v144 = v68;
                  v82 = v81 = v67;
                  v78 = [v82 identifier];

                  v67 = v81;
                  v68 = v144;
                }

                if (v70 == v79 && v69 == v78)
                {
                  if ([*(a1 + 40) requiresMerchantReprocessing])
                  {
                    v83 = 1;
                  }

                  else
                  {
                    v83 = [v45 requiresMerchantReprocessing];
                  }

                  v2 = v155;
                  v24 = v164;
                  [*(a1 + 40) setRequiresMerchantReprocessing:v83];
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109378;
                    *v205 = v83;
                    *&v205[4] = 2114;
                    *&v205[6] = v155;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "maps data did not change, setting last reprocessing date: %d for transaction: %{public}@", buf, 0x12u);
                  }

                  if (v83)
                  {
                    v84 = *(a1 + 40);
                    v85 = [v45 lastMerchantReprocessingDate];
                    [v84 setLastMerchantReprocessingDate:v85];
                  }
                }

                else
                {
                  v2 = v155;
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *v205 = v155;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "maps data changed for transaction: %{public}@", buf, 0xCu);
                  }

                  [*(a1 + 40) setRequiresMerchantReprocessing:0];
                  [*(a1 + 40) setLastMerchantReprocessingDate:0];
                  v24 = v164;
                }
              }

              v86 = [*(a1 + 40) transactionStatus];
              v87 = [v45 transactionStatus];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                *v205 = v87;
                *&v205[8] = 2048;
                *&v205[10] = v86;
                v206 = 2114;
                *v207 = v2;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updating state from %ld to %ld for transaction: %{public}@", buf, 0x20u);
              }

              if (v45 && (v86 & 0xFFFFFFFFFFFFFFFDLL) == 1 && !v87)
              {
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v205 = v2;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "stated changed, will require merchant reprocessing for transaction: %{public}@", buf, 0xCu);
                }

                v88 = [*(a1 + 40) dpanIdentifier];
                if (!v88 || ([*(a1 + 48) paymentApplicationWithDPANIdentifier:v88], v89 = objc_claimAutoreleasedReturnValue(), v89, v89))
                {
                  [*(a1 + 40) setRequiresMerchantReprocessing:1];
                }
              }

              if (v86 == 1)
              {
                v90 = [v45 amount];
                if (v90)
                {

                  if ((v87 & 0xFFFFFFFFFFFFFFF7) == 0)
                  {
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *v205 = v2;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updating amount added to auth for transaction: %{public}@", buf, 0xCu);
                    }

                    v91 = *(a1 + 40);
                    v92 = [v91 amount];
                    v93 = [v45 amount];
                    v94 = [v92 decimalNumberBySubtracting:v93];
                    [v91 setAmountAddedToAuth:v94];
                  }
                }
              }

              v95 = [v45 fkPaymentTransaction];
              v96 = [*(a1 + 40) fkPaymentTransaction];
              v97 = PKEqualObjects();

              if ((v97 & 1) == 0)
              {
                [*(a1 + 40) setNeedsSyncWithFinance:1];
              }

              [*(a1 + 40) setUpdateSequenceNumber:{objc_msgSend(v45, "updateSequenceNumber") + 1}];
              [v17 updateWithPaymentTransactionSource:*(a1 + 32)];
              v98 = *(*(a1 + 48) + 8);
              v194[0] = _NSConcreteStackBlock;
              v194[1] = 3221225472;
              v194[2] = sub_100157D14;
              v194[3] = &unk_1008489A8;
              v30 = v45;
              v195 = v30;
              v196 = *(a1 + 40);
              v197 = v2;
              v17 = v17;
              v198 = v17;
              v153 = v152;
              v199 = v153;
              v99 = v149;
              v200 = v99;
              v27 = v145;
              v201 = v27;
              sub_1005D4424(v98, v194);

              v100 = v195;
              v12 = v156;
              goto LABEL_149;
            }

            goto LABEL_197;
          }
        }

        v123 = [PaymentTransaction closestTransactionInDatabase:*(*(a1 + 48) + 8) fromTransaction:*(a1 + 40) forTransactionSourceIdentifiers:v163];
        v17 = v123;
        if (v123)
        {
          v44 = [v123 identifier];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v205 = v44;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fuzzy-Matched Transaction to Transaction with Identifier: %{public}@", buf, 0xCu);
          }

          LODWORD(v44) = 1;
        }

        else
        {
          LODWORD(v44) = 0;
        }

        goto LABEL_195;
      }

      if (v74)
      {
        *buf = 138412290;
        *v205 = v164;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Payment Hash: %@", buf, 0xCu);
      }

      PKAnalyticsSendEvent();
    }

    v17 = 0;
    goto LABEL_22;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) serviceIdentifier];
    v9 = *(a1 + 40);
    *buf = 138543618;
    *v205 = v8;
    *&v205[8] = 2112;
    *&v205[10] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: Cannot insert transaction with service ID %{public}@ with a nil transactionSourceIdentifier %@", buf, 0x16u);
  }

LABEL_177:

  return 1;
}