int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(ServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100000F80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Returning %@ for transaction %@.", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v3)
  {
    v8 = UIImagePNGRepresentation(v3);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000011A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [v3 passWithUniqueID:*(a1 + 32)];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 uniqueID];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Getting snapshopt for pass %@", &v12, 0xCu);
    }

    v7 = [[PKPassView alloc] initWithPass:v4 content:4 suppressedContent:2039];
    v8 = [v7 snapshotOfFrontFaceWithRequestedSize:{*(a1 + 48), *(a1 + 56)}];
    v9 = v8;
    v10 = *(a1 + 40);
    if (v8)
    {
      v11 = UIImagePNGRepresentation(v8);
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      (*(v10 + 16))(v10, 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000141C(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = PKPeerPaymentRecurringPaymentMemoImage();
  v6 = a1[5];
  v8 = v5;
  if (v5)
  {
    v7 = UIImagePNGRepresentation(v5);
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}