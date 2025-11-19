uint64_t sub_10000135C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 commerceQuotaInfo];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v5 bundleQuotaInfo];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v16 = "Current iCloudStorageLevel: %@ appleOneStorageLevel %@";
      v17 = v13;
      v18 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
    }
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      v16 = "No premium offer return with error: %@";
      v17 = v13;
      v18 = 12;
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000014F4(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;
  v5 = *(*(a1[6] + 8) + 40);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = +[NSNull null];
  }

  v7 = v6;
  v21 = @"json-payload";
  v19[0] = @"response";
  v17[0] = @"icloudOriginalStorageLevel";
  v8 = +[NSNull null];
  v18[0] = v8;
  v17[1] = @"appleOneOriginalStorageLevel";
  v9 = +[NSNull null];
  v18[1] = v9;
  v18[2] = v7;
  v17[2] = @"icloudCurrentStorageLevel";
  v17[3] = @"appleOneCurrentStorageLevel";
  v18[3] = v4;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v19[1] = @"error";
  v20[0] = v10;
  v11 = +[NSNull null];
  v20[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning a fetchStorageLevel response to JS: %@ ", &v15, 0xCu);
  }

  (*(a1[4] + 16))();
}

void sub_100001730(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 value];

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = [v5 value];

    if (v8)
    {
      v9 = [v5 value];
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v13 = *(*(a1 + 40) + 8);
      v9 = *(v13 + 40);
      *(v13 + 40) = &off_1000043C8;
    }
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Camera count: %@", &v16, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_10:
}

void sub_1000018A8(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;
  v16 = @"json-payload";
  v13 = v3;
  v14[0] = @"response";
  v12 = @"cameraCount";
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v14[1] = @"error";
  v15[0] = v5;
  v6 = +[NSNull null];
  v15[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Returning a fetchCameraCount response to JS: %@", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}