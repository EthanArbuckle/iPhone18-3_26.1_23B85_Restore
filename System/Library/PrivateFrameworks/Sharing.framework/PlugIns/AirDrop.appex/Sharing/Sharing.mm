void sub_100002F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100002FE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained currentSnapshot];
    v13 = [v12 sectionIdentifiers];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

    if ([v14 isEqualToString:@"OtherSection"])
    {
      v15 = [v7 dequeueReusableCellWithReuseIdentifier:@"OtherCellID" forIndexPath:v8];
      v16 = +[UIColor clearColor];
      v17 = [v15 contentView];
      [v17 setBackgroundColor:v16];
    }

    else
    {
      v15 = [v7 dequeueReusableCellWithReuseIdentifier:@"PersonCellID" forIndexPath:v8];
      v18 = [v11 view];
      [v18 frame];
      [v15 setActivitySheetWidth:v19];

      [v15 setDarkStyleOnLegacyApp:0];
      [v15 setStateBeingRestored:1];
      [v15 setDelegate:v11];
      [v15 setSessionID:v11[12]];
      v20 = [v11[3] nodeIDToNode];
      v16 = [v20 objectForKeyedSubscript:v9];

      [v15 setPerson:v16];
      v21 = v11[9];
      v22 = [v16 realName];
      v17 = [v21 objectForKeyedSubscript:v22];

      if (v17)
      {
        [v15 restoreCellStateFromFinalTransferState:{objc_msgSend(v17, "integerValue")}];
      }

      v23 = v11[8];
      v24 = [v16 realName];
      v25 = [v23 objectForKeyedSubscript:v24];

      [v15 setProgress:v25];
      if (v25)
      {
        [v7 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
      }

      else
      {
        [v7 deselectItemAtIndexPath:v8 animated:0];
      }

      [v15 setSelected:v25 != 0];
      [v15 setStateBeingRestored:0];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1000032A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v8 isEqualToString:UICollectionElementKindSectionHeader])
    {
      v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"HeaderID" forIndexPath:v9];
      v12 = [WeakRetained currentSnapshot];
      v13 = [WeakRetained dataSource];
      v14 = [v13 itemIdentifierForIndexPath:v9];
      v15 = [v12 sectionIdentifierForSectionContainingItemIdentifier:v14];

      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:v15 value:&stru_10002D8A8 table:0];
      v18 = [v11 titleLabel];
      [v18 setText:v17];

      goto LABEL_8;
    }

    v19 = airdrop_ui_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_10001D830();
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void sub_100003510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100003534(uint64_t a1, uint64_t a2, void *a3)
{
  v64 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraExtraLarge, v7);

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 currentSnapshot];
  v13 = [v12 sectionIdentifiers];

  v63 = v13;
  v62 = [v13 objectAtIndexedSubscript:a2];
  if ([v62 isEqualToString:@"OtherSection"])
  {
    v14 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v15 = [NSCollectionLayoutDimension absoluteDimension:234.0];
    v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];
    v17 = [NSCollectionLayoutItem itemWithLayoutSize:v16];
    v18 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];
    v66 = v17;
    v19 = [NSArray arrayWithObjects:&v66 count:1];
    v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v18 subitems:v19];

    v21 = [NSCollectionLayoutSection sectionWithGroup:v20];
  }

  else
  {
    v14 = [NSCollectionLayoutDimension estimatedDimension:100.0];
    v61 = v8;
    if (v8 == NSOrderedAscending)
    {
      v23 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    }

    else
    {
      v22 = 62.0;
      if (v10 == 6)
      {
        v22 = 72.0;
      }

      v23 = [NSCollectionLayoutDimension estimatedDimension:v22];
    }

    v15 = v23;
    v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v23 heightDimension:v14];
    v17 = [NSCollectionLayoutItem itemWithLayoutSize:v16];
    v24 = +[UIScreen mainScreen];
    [v24 _referenceBounds];
    v26 = v25;
    v28 = v27;

    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = [v29 view];
    [v30 directionalLayoutMargins];
    v32 = v31;

    v33 = [UIApp activeInterfaceOrientation] - 3;
    LODWORD(v29) = SFDeviceModelCodeGet();
    v34 = +[UIDevice currentDevice];
    v35 = [v34 userInterfaceIdiom];

    v36 = v35 & 0xFFFFFFFFFFFFFFFBLL;
    v37 = 3;
    if (v29 != 2)
    {
      v37 = 4;
    }

    if (v33 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 6;
    }

    if (v26 == 414.0)
    {
      v39 = 20.0;
    }

    else
    {
      v39 = 16.0;
    }

    v40 = v36 == 1 || v26 < 414.0;
    if (v36 == 1)
    {
      v41 = [v64 container];
      [v41 contentSize];
      if (v42 <= 414.0)
      {
        v38 = 4;
      }

      else
      {
        v38 = 6;
      }

      v43 = 24.0;
    }

    else if (v28 == 568.0 && v26 == 320.0)
    {
      v43 = 33.0;
    }

    else
    {
      v43 = 26.0;
      if (v28 != 667.0 || v26 != 375.0)
      {
        if (v28 == 736.0 && v26 == 414.0)
        {
          v43 = 30.0;
        }

        else if (v28 != 812.0 || v26 != 375.0)
        {
          v44 = v26 == 414.0 && v28 == 896.0;
          v43 = 30.0;
          if (!v44)
          {
            v43 = v32;
          }
        }
      }
    }

    v45 = 12.0;
    if (!v40)
    {
      v45 = 8.0;
    }

    v46 = v43 - v45;
    if (v10 == 6)
    {
      v47 = 32.0;
    }

    else
    {
      v47 = 0.0;
    }

    if (v10 == 6)
    {
      v48 = 8.0;
    }

    else
    {
      v48 = 0.0;
    }

    if (v10 == 6)
    {
      v49 = 8.0;
    }

    else
    {
      v49 = v39;
    }

    if (v10 == 6)
    {
      v50 = 4;
    }

    else
    {
      v50 = v38;
    }

    if (v10 == 6)
    {
      v51 = 16.0;
    }

    else
    {
      v51 = v46;
    }

    v52 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v18 = [NSCollectionLayoutSize sizeWithWidthDimension:v52 heightDimension:v14];

    if (v61 == NSOrderedAscending)
    {
      v53 = 1;
    }

    else
    {
      v53 = v50;
    }

    v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v18 subitem:v17 count:v53];
    if (v10 == 6)
    {
      v54 = [NSCollectionLayoutSpacing fixedSpacing:4.0];
      [v20 setInterItemSpacing:v54];
    }

    v21 = [NSCollectionLayoutSection sectionWithGroup:v20];
    [v21 setContentInsets:{v48, v51, v47, v51}];
    [v21 setInterGroupSpacing:v49];
    v55 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v56 = [NSCollectionLayoutDimension estimatedDimension:60.0];
    v57 = [NSCollectionLayoutSize sizeWithWidthDimension:v55 heightDimension:v56];

    v58 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v57 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v65 = v58;
    v59 = [NSArray arrayWithObjects:&v65 count:1];
    [v21 setBoundarySupplementaryItems:v59];

    [v21 setSupplementariesFollowContentInsets:1];
  }

  return v21;
}

void sub_1000043EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000440C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setAlpha:1.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 airDropNoContentView];
  [v4 setAlpha:0.0];
}

void sub_10000475C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004784(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1 && *(a1 + 42) != 1 || (v2 = objc_loadWeakRetained((a1 + 32)), v3 = [v2 canShowNoContentView], v2, !v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [WeakRetained collectionView];
    [v9 setAlpha:1.0];

    v11 = objc_loadWeakRetained((a1 + 32));
    v10 = [v11 airDropNoContentView];
    [v10 setAlpha:0.0];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 collectionView];
    [v5 setAlpha:0.0];

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 airDropNoContentView];
    [v7 setAlpha:1.0];

    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setCanShowNoContentView:0];
  }
}

void sub_100005048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000508C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 airDropNoContentView];
  [v4 setAlpha:1.0];
}

void sub_10000511C(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained airDropNoContentView];
    v4 = [v3 viewType];

    if (!v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100005204;
      v5[3] = &unk_10002CFF0;
      objc_copyWeak(&v6, (a1 + 32));
      [UIView animateWithDuration:v5 animations:0.25];
      objc_destroyWeak(&v6);
    }
  }
}

void sub_100005204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained airDropNoContentView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 collectionView];
  [v4 setAlpha:1.0];
}

void *sub_100006260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_personRealName];
  [v3 setSf_initiator:1];
  v5 = [*(a1 + 32) realNamesWithTransfersStartedFromMagicHead];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    [v3 setSf_initiator:2];
  }

  [*(a1 + 32) subscribedProgress:v3 forPersonWithRealName:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000637C;
  v10[3] = &unk_10002D068;
  v10[4] = *(a1 + 32);
  v11 = v4;
  v7 = v4;
  v8 = objc_retainBlock(v10);

  return v8;
}

void sub_1000074C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100007564;
    v5[3] = &unk_10002D120;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v5[5] = v4;
    dispatch_async(v3, v5);
  }
}

void sub_100007564(uint64_t a1)
{
  [*(*(a1 + 32) + 136) waitUntilAllOperationsAreFinished];
  v2 = *(a1 + 32);
  if (*(v2 + 152) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 112);
      v5 = *(v2 + 160);
      v6 = [NSNumber numberWithInt:v3];
      v7 = [v5 objectForKeyedSubscript:v6];
      [v4 addObject:v7];

      v3 = (v3 + 1);
      v2 = *(a1 + 32);
    }

    while (v3 < *(v2 + 152));
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000076A4;
  v9[3] = &unk_10002D120;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v9[5] = v8;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1000076A4(uint64_t a1)
{
  [*(a1 + 32) generateSpecialPreviewPhotoForRequestID:*(a1 + 40)];
  *(*(a1 + 32) + 129) = 1;
  v2 = *(a1 + 32);
  v3 = [v2[4] allObjects];
  [v2 startTransferForPeople:v3];
}

id sub_100007B68(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareWithActivityExtensionItemData:a2];
  v3 = *(a1 + 32);

  return [v3 performActivity];
}

void sub_100008368(uint64_t a1)
{
  if ([*(a1 + 32) isFileURL])
  {
    v2 = [*(a1 + 32) path];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v4, 0);
      if (PreferredIdentifierForTag)
      {
        v6 = PreferredIdentifierForTag;
        if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
        {
          v7 = *(a1 + 32);
          [*(a1 + 40) suggestedThumbnailSize];
          v8 = +[UIScreen mainScreen];
          [v8 scale];
          v9 = SFCreateThumbnailImage();
        }

        else
        {
          v9 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v10 = airdrop_ui_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10001DA08();
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 48) previewImage:v9 identifier:*(*(a1 + 40) + 104)];
  v12 = *(*(a1 + 40) + 160);
  objc_sync_enter(v12);
  v13 = *(*(a1 + 40) + 160);
  v14 = [NSNumber numberWithInt:*(a1 + 56)];
  [v13 setObject:v11 forKeyedSubscript:v14];

  objc_sync_exit(v12);
}

void sub_100008544(uint64_t a1)
{
  v5 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:*(a1 + 48) identifier:*(*(a1 + 56) + 104)];
  v2 = *(*(a1 + 56) + 160);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 56) + 160);
  v4 = [NSNumber numberWithInt:*(a1 + 64)];
  [v3 setObject:v5 forKeyedSubscript:v4];

  objc_sync_exit(v2);
}

void sub_1000088D0(uint64_t a1)
{
  v7 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  [v7 writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v3 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 104)];

  v4 = *(*(a1 + 64) + 160);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 64) + 160);
  v6 = [NSNumber numberWithInt:*(a1 + 72)];
  [v5 setObject:v3 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

void sub_100008F50(uint64_t a1)
{
  [*(a1 + 32) writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v7 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 104)];

  v3 = *(*(a1 + 64) + 160);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 64) + 160);
  v5 = [NSNumber numberWithInt:*(a1 + 80)];
  [v4 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(v3);
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

void sub_1000097E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000981C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009884(uint64_t a1)
{
  v2 = +[PLPhotoLibrary photoOutboundSharingTmpDirectoryURL];
  v3 = [*(*(*(a1 + 56) + 8) + 40) videoURL];
  v4 = [*(*(*(a1 + 56) + 8) + 40) imageURL];
  v5 = [*(*(*(a1 + 56) + 8) + 40) uniqueIdentifier];
  v10 = SFCreateLivePhotoBundle();

  v6 = [SFAirDropPayload newPayloadWithURL:v10 description:*(a1 + 32) previewImage:*(a1 + 40) identifier:*(*(a1 + 48) + 104)];
  v7 = *(*(a1 + 48) + 160);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 48) + 160);
  v9 = [NSNumber numberWithInt:*(a1 + 64)];
  [v8 setObject:v6 forKeyedSubscript:v9];

  objc_sync_exit(v7);
}

void sub_100009C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009C28(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A290(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001DAFC(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B53C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v9 attachments];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v4[2](v4, *(*(&v15 + 1) + 8 * v14));
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_10000B6DC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) attachmentNameForItem:v12];
  v4 = [*(a1 + 32) subjectForItem:v12];
  if ([*(a1 + 40) maxPreviews] >= 1)
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    if (v5 >= [*(a1 + 40) maxPreviews])
    {
      goto LABEL_9;
    }
  }

  v6 = [*(a1 + 32) previewImageForItem:v12];
  if (v6)
  {
    v7 = v6;
LABEL_5:
    v8 = v12;
    ++*(*(*(a1 + 56) + 8) + 24);
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) previewImageDataForItem:v12];
  if (v9)
  {
    v10 = v9;
    v7 = [UIImage imageWithData:v9];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v8 = v12;
LABEL_11:
  v11 = [*(a1 + 32) dataTypeForItem:v8];
  [*(a1 + 48) addItemProvider:v12 withDataType:v11 attachmentName:v3 description:v4 previewImage:v7];
}

void sub_10000B99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasItemConformingToTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext"])
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = *(a1 + 40);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000BAB8;
    v5[3] = &unk_10002D368;
    objc_copyWeak(&v7, (a1 + 48));
    v6 = *(a1 + 32);
    [v3 loadItemForTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext" options:v4 completionHandler:v5];

    objc_destroyWeak(&v7);
  }
}

void sub_10000BAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained startAccessingSecurityScopedResourcesInContext:v3];

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

uint64_t sub_10000CA78()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033438);
  v1 = sub_100018370(v0, qword_100033438);
  if (qword_100033460 != -1)
  {
    swift_once();
  }

  v2 = sub_100018370(v0, qword_100033B28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t variable initialization expression of AirDropDiscoveryViewController.securityContexts()
{
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyArrayStorage;
  return v0;
}

uint64_t AirDropDiscoveryViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AirDropDiscoveryViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10000CCD0;
}

void sub_10000CCD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t variable initialization expression of AirDropDiscoveryViewController.pendingTransferID()
{
  v0 = *(*(sub_10001DC60() - 8) + 64);
  __chkstk_darwin();
  sub_10001DC50();
  return sub_10001DFD0();
}

id AirDropDiscoveryViewController.init(hostAppBundleID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = a1;
  v18[2] = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_10001DD00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001DF00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10001DC60() - 8) + 64);
  __chkstk_darwin();
  v15 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts;
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = &_swiftEmptyArrayStorage;
  *&v3[v15] = v16;
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_activityExtensionItemData] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask] = 0;
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask] = 0;
  sub_10001DC50();
  sub_10001DFD0();
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID] = &_swiftEmptyDictionarySingleton;
  sub_10001DF40();
  (*(v10 + 104))(v13, enum case for SFAirDropClient.Identifier.shareSheet(_:), v9);
  *&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropClient] = sub_10001DF10();

  sub_10001DC90();
  (*(v5 + 32))(&v3[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView], v8, v4);
  v20.receiver = v3;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall AirDropDiscoveryViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10001DD00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v85 - v8;
  v10 = sub_10001DC80();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001E110();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10001DE30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90.receiver = v1;
  v90.super_class = ObjectType;
  objc_msgSendSuper2(&v90, "viewDidLoad");
  sub_10001DE20();
  LOBYTE(ObjectType) = sub_10001DE10();
  v19 = *(v15 + 8);
  v87 = v15 + 8;
  v88 = v14;
  v86 = v19;
  v19(v18, v14);
  if ((ObjectType & 1) == 0 || (sub_10001DFB0(), v20 = sub_10001DFA0(), v21 = sub_10001DF80(), v20, (v21 & 1) == 0))
  {
    sub_10001E100();
    sub_10001DC70();
    sub_10001E140();
    v22 = sub_10001E120();

    [v1 setTitle:v22];

    v23 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v23 configureWithTransparentBackground];
    v24 = objc_opt_self();
    v25 = [v24 separatorColor];
    [v23 setShadowColor:v25];

    v26 = [v1 navigationItem];
    [v26 setScrollEdgeAppearance:v23];

    v27 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v27 configureWithDefaultBackground];
    v28 = [v24 separatorColor];
    [v27 setShadowColor:v28];

    v29 = [v1 navigationItem];
    [v29 setStandardAppearance:v27];
  }

  v30 = *(v4 + 16);
  v30(v9, &v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView], v3);
  v31 = objc_allocWithZone(type metadata accessor for AirDropHostingController(0));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v30(v89, v9, v3);
  v32 = sub_10001DFE0();
  (*(v4 + 8))(v9, v3);
  v33 = v32;
  [v1 addChildViewController:v33];
  v34 = [v1 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v33 view];
  if (!v36)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = v36;
  [v35 addSubview:v36];

  [v33 didMoveToParentViewController:v1];
  v38 = [v33 view];

  if (!v38)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [v1 navigationController];
  v40 = 0.0;
  Height = 0.0;
  if (v39)
  {
    v42 = v39;
    v43 = [v39 navigationBar];

    [v43 frame];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v91.origin.x = v45;
    v91.origin.y = v47;
    v91.size.width = v49;
    v91.size.height = v51;
    Height = CGRectGetHeight(v91);
  }

  sub_10001DE20();
  v52 = sub_10001DE10();
  v86(v18, v88);
  if (v52)
  {
    sub_10001DFB0();
    v53 = sub_10001DFA0();
    v54 = sub_10001DF80();

    if (v54)
    {
      v40 = -Height;
    }

    else
    {
      v40 = 0.0;
    }
  }

  sub_10000DB68(&qword_1000334B0, &unk_100022C20);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_100022C00;
  v56 = [v33 view];

  if (!v56)
  {
    goto LABEL_25;
  }

  v57 = [v56 topAnchor];

  v58 = [v1 view];
  if (!v58)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v59 = v58;
  v60 = [v58 topAnchor];

  v61 = [v57 constraintEqualToAnchor:v60 constant:v40];
  *(v55 + 32) = v61;
  v62 = [v33 view];

  if (!v62)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v63 = [v62 bottomAnchor];

  v64 = [v1 view];
  if (!v64)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v65 = v64;
  v66 = [v64 bottomAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  *(v55 + 40) = v67;
  v68 = [v33 view];

  if (!v68)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v69 = [v68 leadingAnchor];

  v70 = [v1 view];
  if (!v70)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v71 = v70;
  v72 = [v70 leadingAnchor];

  v73 = [v69 constraintEqualToAnchor:v72];
  *(v55 + 48) = v73;
  v74 = [v33 view];

  if (!v74)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v75 = [v74 trailingAnchor];

  v76 = [v1 view];
  if (v76)
  {
    v77 = v76;
    v78 = objc_opt_self();
    v79 = [v77 trailingAnchor];

    v80 = [v75 constraintEqualToAnchor:v79];
    *(v55 + 56) = v80;
    sub_100018968(0, &qword_1000334B8, NSLayoutConstraint_ptr);
    isa = sub_10001E190().super.isa;

    [v78 activateConstraints:isa];

    v82 = objc_opt_self();
    v83 = [v82 defaultCenter];
    [v83 addObserver:v1 selector:"willEnterForegroundWithNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

    v84 = [v82 defaultCenter];
    [v84 addObserver:v1 selector:"didEnterBackgroundWithNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10000DB68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall AirDropDiscoveryViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v28 = &v27 - v7;
  v8 = sub_10001DE30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "viewWillAppear:", a1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100018968(0, &qword_1000334C8, UIBarButtonItem_ptr);
  sub_100018968(0, &qword_1000334D0, UIAction_ptr);

  v30.value.super.super.isa = sub_10001E2F0();
  v30.is_nil = 0;
  v13.super.super.isa = sub_10001E2E0(UIBarButtonSystemItemDone, v30, v32).super.super.isa;

  v31.value.super.super.isa = sub_10001E2F0();
  v31.is_nil = 0;
  v14.super.super.isa = sub_10001E2E0(UIBarButtonSystemItemClose, v31, v33).super.super.isa;
  v15 = [v2 navigationItem];
  sub_10001DE20();
  v16 = sub_10001DE10();
  (*(v9 + 8))(v12, v8);
  isa = v13.super.super.isa;
  if (v16)
  {
    sub_10001DFB0();
    v18 = sub_10001DFA0();
    v19 = sub_10001DF80();

    if (v19)
    {
      isa = v14.super.super.isa;
    }

    else
    {
      isa = v13.super.super.isa;
    }
  }

  [v15 setRightBarButtonItem:isa];

  v20 = sub_10001E230();
  v21 = v28;
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  sub_10001E210();
  v22 = v2;
  v23 = sub_10001E200();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  v25 = sub_10000F3EC(0, 0, v21, &unk_100022C38, v24);

  v26 = *&v22[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask];
  *&v22[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask] = v25;
}

uint64_t sub_10000DFB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DFE8()
{
  v0 = sub_10001DD00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    (*(v1 + 16))(v4, result + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView, v0);

    sub_10001DCC0();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_10000E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10001DC60();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = *(*(sub_10000DB68(&qword_1000335E0, &qword_100022D40) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = sub_10000DB68(&qword_1000335E8, &qword_100022D48);
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = sub_10000DB68(&qword_1000335F0, &unk_100022D50);
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = sub_10001E210();
  v4[21] = sub_10001E200();
  v16 = sub_10001E1E0();
  v4[22] = v16;
  v4[23] = v15;

  return _swift_task_switch(sub_10000E304, v16, v15);
}

uint64_t sub_10000E304()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[9] + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView;
  sub_10001DCE0();
  sub_10001DDD0();
  (*(v3 + 8))(v2, v4);
  v6 = v0[20];
  v0[24] = sub_10001E200();
  v7 = sub_100018B20(&qword_1000335F8, &qword_1000335F0, &unk_100022D50);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_10000E444;
  v10 = v0[19];
  v11 = v0[17];
  v12 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v7);
}

uint64_t sub_10000E444()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_10001E1E0();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_10000E7F0;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_10001E1E0();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_10000E5DC;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_10000E5DC()
{
  v1 = v0[24];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10000E640, v2, v3);
}

uint64_t sub_10000E640()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    v5 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong airDropViewServiceDidRequestDismissal];
      swift_unknownObjectRelease();
    }

    v7 = v0[19];
    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v3 + 32))(v0[12], v1, v2);
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_10000E98C;
    v14 = v0[12];
    v15 = v0[9];

    return sub_10000ED90(v14);
  }
}

uint64_t sub_10000E7F0()
{
  v1 = v0[24];
  v0[8] = v0[26];
  sub_10000DB68(&qword_100033600, qword_100022F60);
  swift_willThrowTypedImpl();

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10000E88C, v2, v3);
}

uint64_t sub_10000E88C()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[9];

  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v0[26];
  if (Strong)
  {
    [Strong airDropViewServiceDidRequestDismissal];
    swift_unknownObjectRelease();
  }

  v8 = v0[19];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000E98C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_10000EAAC, v4, v3);
}

uint64_t sub_10000EAAC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[20];
  v0[24] = sub_10001E200();
  v2 = sub_100018B20(&qword_1000335F8, &qword_1000335F0, &unk_100022D50);
  v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10000E444;
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v2);
}

uint64_t sub_10000EBA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC9C;

  return sub_10000E104(a1, v4, v5, v6);
}

uint64_t sub_10000EC9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000ED90(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10001DFC0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_10001DC60();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_10001E210();
  v2[13] = sub_10001E200();
  v10 = sub_10001E1E0();
  v2[14] = v10;
  v2[15] = v9;

  return _swift_task_switch(sub_10000EEE0, v10, v9);
}

uint64_t sub_10000EEE0()
{
  v35 = v0;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = sub_10001DDC0();
  sub_100018370(v5, qword_100033438);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10001DDA0();
  v7 = sub_10001E2C0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v14 = sub_10001E3E0();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100016BAC(v14, v16, &v34);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "User selected endpoint with UUID: %s", v12, 0xCu);
    sub_1000183A8(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];
  v19 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (*(v20 + 16) && (v21 = sub_10001A1FC(v0[5]), (v22 & 1) != 0))
  {
    (*(v0[8] + 16))(v0[9], *(v20 + 56) + *(v0[8] + 72) * v21, v0[7]);
    swift_endAccess();
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_10000F230;
    v24 = v0[9];
    v25 = v0[5];
    v26 = v0[6];

    return sub_100014F94(v24, v25);
  }

  else
  {
    v28 = v0[13];
    v30 = v0[5];
    v29 = v0[6];
    swift_endAccess();

    sub_1000101B4(v30);
    v31 = v0[12];
    v32 = v0[9];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_10000F230()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_10000F350, v4, v3);
}

uint64_t sub_10000F350()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000184B8(a3, v27 - v11);
  v13 = sub_10001E230();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100018760(v12, &qword_1000334C0, &qword_100022F00);
  }

  else
  {
    sub_10001E220();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10001E1E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10001E150() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100018760(a3, &qword_1000334C0, &qword_100022F00);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100018760(a3, &qword_1000334C0, &qword_100022F00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall AirDropDiscoveryViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1);
  v3 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask;
  if (*&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask])
  {
    v4 = *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask];

    sub_10001E240();

    v5 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v6 = *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask];
  *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask] = 0;

  sub_10000F7EC();
}

void sub_10000F7EC()
{
  v1 = sub_10001DC20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  if (*(*(v0 + v9) + 16))
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v10 = sub_10001DDC0();
    sub_100018370(v10, qword_100033438);
    v11 = sub_10001DDA0();
    v12 = sub_10001E280();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Could not clear temporary files, transfer in progress";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_12:

    return;
  }

  v53 = v8;
  if (*(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask))
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v15 = sub_10001DDC0();
    sub_100018370(v15, qword_100033438);
    v11 = sub_10001DDA0();
    v12 = sub_10001E280();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Could not clear temporary files, picker is still showing";
    goto LABEL_11;
  }

  v16 = NSTemporaryDirectory();
  sub_10001E130();

  v17 = v53;
  sub_10001DBD0();

  v51 = objc_opt_self();
  v18 = [v51 defaultManager];
  sub_10001DBC0();
  v19 = sub_10001E120();

  v20 = [v18 enumeratorAtPath:v19];

  v52 = v20;
  if (v20)
  {
    v22 = (v2 + 8);
    *&v21 = 136315138;
    v49 = v21;
    *&v21 = 136315394;
    v48 = v21;
    v50 = v1;
    while (1)
    {
      if ([v52 nextObject])
      {
        sub_10001E300();
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v58[0] = v56;
      v58[1] = v57;
      if (!*(&v57 + 1))
      {
        (*v22)(v53, v1);

        sub_100018760(v58, &qword_100033720, &qword_100022D10);
        return;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v24 = v54;
      v25 = v55;
      if (qword_100033430 != -1)
      {
        swift_once();
      }

      v26 = sub_10001DDC0();
      sub_100018370(v26, qword_100033438);

      v27 = sub_10001DDA0();
      v28 = sub_10001E2C0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v58[0] = v30;
        *v29 = v49;
        *(v29 + 4) = sub_100016BAC(v24, v25, v58);
        _os_log_impl(&_mh_execute_header, v27, v28, "Removing stale AirDrop download %s", v29, 0xCu);
        sub_1000183A8(v30);
        v1 = v50;
      }

      v31 = [v51 defaultManager];
      sub_10001DC10();
      sub_10001DC00(v32);
      v34 = v33;
      (*v22)(v6, v1);
      *&v58[0] = 0;
      v35 = [v31 removeItemAtURL:v34 error:v58];

      if (v35)
      {
        v23 = *&v58[0];
      }

      else
      {
        v36 = *&v58[0];
        sub_10001DBB0();

        swift_willThrow();

        swift_errorRetain();
        v37 = sub_10001DDA0();
        v38 = sub_10001E2A0();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v58[0] = v41;
          *v39 = v48;
          v42 = sub_100016BAC(v24, v25, v58);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2112;
          swift_errorRetain();
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 14) = v43;
          *v40 = v43;
          _os_log_impl(&_mh_execute_header, v37, v38, "Failed to delete file %s %@", v39, 0x16u);
          sub_100018760(v40, &qword_1000335D0, &qword_100022D18);
          v1 = v50;

          sub_1000183A8(v41);
        }

        else
        {
        }
      }
    }

    (*v22)(v53, v1);
  }

  else
  {
    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v44 = sub_10001DDC0();
    sub_100018370(v44, qword_100033438);
    v45 = sub_10001DDA0();
    v46 = sub_10001E2A0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create enumerator for AirDropHashDB directory", v47, 2u);
    }

    (*(v2 + 8))(v17, v1);
  }
}

uint64_t sub_1000100B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10001DBA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DB90();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

void sub_1000101B4(uint64_t a1)
{
  v3 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v131 = &v115 - v5;
  v6 = sub_10001DFC0();
  v7 = *(v6 - 8);
  v138 = v6;
  v139 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v127 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10001DD10();
  v123 = *(v124 - 8);
  v10 = *(v123 + 64);
  __chkstk_darwin(v124);
  v125 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10001DD20();
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = *(v129 + 64);
  __chkstk_darwin(v12);
  v128 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001DC60();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = *(v136 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v115 - v21;
  v23 = __chkstk_darwin(v20);
  v133 = &v115 - v24;
  v126 = v25;
  __chkstk_darwin(v23);
  v27 = &v115 - v26;
  v28 = sub_10000DB68(&qword_100033630, &qword_100022D80);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v115 - v30;
  v32 = sub_10001DE00();
  v132 = *(v32 - 8);
  v33 = *(v132 + 8);
  __chkstk_darwin(v32);
  v35 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v121 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v115 - v40;
  v42 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID;
  swift_beginAccess();
  v134 = v1;
  v120 = v42;
  v43 = *&v1[v42];
  v44 = *(v43 + 16);
  v135 = a1;
  v122 = v22;
  if (v44 && (v45 = sub_10001A1FC(a1), (v46 & 1) != 0))
  {
    (*(v139 + 16))(v41, *(v43 + 56) + *(v139 + 72) * v45, v138);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v49 = v138;
  v48 = v139;
  v50 = *(v139 + 56);
  v50(v41, v47, 1, v138);
  swift_endAccess();
  LODWORD(v49) = (*(v48 + 48))(v41, 1, v49);
  sub_100018760(v41, &qword_100033618, &qword_100022D70);
  if (v49 == 1)
  {
    v51 = v134;
    v119 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView;
    sub_10001DCD0();
    v52 = v132;
    v53 = (*(v132 + 6))(v31, 1, v32);
    v118 = v50;
    if (v53 == 1)
    {
      sub_100018760(v31, &qword_100033630, &qword_100022D80);
      v54 = v136;
      if (qword_100033430 != -1)
      {
        swift_once();
      }

      v55 = sub_10001DDC0();
      sub_100018370(v55, qword_100033438);
      v56 = v137;
      v132 = *(v54 + 16);
      v132(v27, v135, v137);
      v57 = sub_10001DDA0();
      v58 = sub_10001E2A0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v140[0] = v60;
        *v59 = 136315138;
        sub_100018718(&qword_100033608, &type metadata accessor for UUID);
        v61 = sub_10001E3E0();
        v63 = v62;
        (*(v136 + 8))(v27, v137);
        v64 = sub_100016BAC(v61, v63, v140);
        v56 = v137;

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "Could not resolve endpoint UUID: %s", v59, 0xCu);
        sub_1000183A8(v60);
        v54 = v136;
      }

      else
      {

        (*(v54 + 8))(v27, v56);
      }

      v85 = v132;
      goto LABEL_30;
    }

    (*(v52 + 4))(v35, v31, v32);
    sub_10001D420(v35);
    v78 = v77;
    sub_10001D420(v35);
    v80 = v79;
    v117 = sub_10001D438(v35);
    v82 = v81;
    if (v78)
    {
      v83 = sub_10001E120();

      if (v80)
      {
LABEL_17:
        v84 = sub_10001E120();

LABEL_23:
        v86.super.isa = sub_10001E270().super.isa;
        if (v82)
        {
          v87 = sub_10001E120();
        }

        else
        {
          v87 = 0;
        }

        v88 = [objc_allocWithZone(SFShareSheetRecipient) initWithRealName:v83 displayName:v84 formattedHandles:v86.super.isa contactIdentifier:v87];

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong airDropViewServiceWillStartTransferToRecipient:v88];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v56 = v137;
        (*(v132 + 1))(v35, v32);
        v54 = v136;
        v85 = *(v136 + 16);
LABEL_30:
        v90 = v133;
        v91 = v135;
        v85(v133, v135, v56);
        v92 = *(v139 + 16);
        v116 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID;
        v93 = v121;
        v94 = v138;
        v139 += 16;
        v117 = v92;
        v92(v121, &v51[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID], v138);
        v118(v93, 0, 1, v94);
        swift_beginAccess();
        sub_1000110A0(v93, v90);
        swift_endAccess();
        if (qword_100033430 != -1)
        {
          swift_once();
        }

        v95 = sub_10001DDC0();
        sub_100018370(v95, qword_100033438);
        v96 = v122;
        v132 = v85;
        v85(v122, v91, v56);
        v97 = sub_10001DDA0();
        v98 = sub_10001E2C0();
        v99 = v91;
        if (os_log_type_enabled(v97, v98))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v140[0] = v101;
          *v100 = 136315138;
          sub_100018718(&qword_100033608, &type metadata accessor for UUID);
          v102 = sub_10001E3E0();
          v104 = v103;
          (*(v136 + 8))(v96, v137);
          v105 = sub_100016BAC(v102, v104, v140);
          v56 = v137;

          *(v100 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v97, v98, "Starting send to endpoint %s", v100, 0xCu);
          sub_1000183A8(v101);
          v54 = v136;
        }

        else
        {

          (*(v54 + 8))(v96, v56);
        }

        v106 = v125;
        *v125 = nullsub_2;
        v106[1] = 0;
        (*(v123 + 104))(v106, enum case for _DDNodeDecoration.Kind.waiting(_:), v124);
        sub_10001DFF0();
        v107 = v134;
        v117(v127, &v134[v116], v138);
        v108 = v128;
        sub_10001DD30();
        sub_10001DCA0();
        v109 = sub_10001E230();
        v110 = v131;
        (*(*(v109 - 8) + 56))(v131, 1, 1, v109);
        v111 = v133;
        v132(v133, v99, v56);
        v112 = (*(v54 + 80) + 24) & ~*(v54 + 80);
        v113 = swift_allocObject();
        *(v113 + 16) = v107;
        (*(v54 + 32))(v113 + v112, v111, v56);
        v114 = v107;
        sub_10001E250();

        sub_100018760(v110, &qword_1000334C0, &qword_100022F00);
        (*(v129 + 8))(v108, v130);
        return;
      }
    }

    else
    {
      v83 = 0;
      if (v80)
      {
        goto LABEL_17;
      }
    }

    v84 = 0;
    goto LABEL_23;
  }

  v65 = v136;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v66 = sub_10001DDC0();
  sub_100018370(v66, qword_100033438);
  v67 = v137;
  (*(v65 + 16))(v19, v135, v137);
  v68 = sub_10001DDA0();
  v69 = sub_10001E290();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v65;
    v72 = swift_slowAlloc();
    v140[0] = v72;
    *v70 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v73 = sub_10001E3E0();
    v75 = v74;
    (*(v71 + 8))(v19, v67);
    v76 = sub_100016BAC(v73, v75, v140);

    *(v70 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v68, v69, "Ongoing send already present for %s", v70, 0xCu);
    sub_1000183A8(v72);
  }

  else
  {

    (*(v65 + 8))(v19, v67);
  }
}

uint64_t sub_1000110A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10001DFC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100018760(a1, &qword_100033618, &qword_100022D70);
    sub_100017228(a2, v8);
    v14 = sub_10001DC60();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100018760(v8, &qword_100033618, &qword_100022D70);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100017BB4(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_10001DC60();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1000112D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v4 = *(*(sub_10000DB68(&qword_100033618, &qword_100022D70) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = sub_10001DEF0();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = sub_10001DFC0();
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v11 = sub_10001DC60();
  v3[23] = v11;
  v12 = *(v11 - 8);
  v3[24] = v12;
  v13 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v14 = sub_10000DB68(&qword_100033638, &qword_100022D98);
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v16 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v17 = sub_10001DE80();
  v3[32] = v17;
  v18 = *(v17 - 8);
  v3[33] = v18;
  v19 = *(v18 + 64) + 15;
  v3[34] = swift_task_alloc();
  v20 = sub_10001DF70();
  v3[35] = v20;
  v21 = *(v20 - 8);
  v3[36] = v21;
  v22 = *(v21 + 64) + 15;
  v3[37] = swift_task_alloc();
  v23 = sub_10001DC20();
  v3[38] = v23;
  v24 = *(v23 - 8);
  v3[39] = v24;
  v25 = *(v24 + 64) + 15;
  v3[40] = swift_task_alloc();
  v26 = sub_10001DED0();
  v3[41] = v26;
  v27 = *(v26 - 8);
  v3[42] = v27;
  v28 = *(v27 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = sub_10001E210();
  v3[46] = sub_10001E200();
  v29 = swift_task_alloc();
  v3[47] = v29;
  *v29 = v3;
  v29[1] = sub_1000116D4;

  return sub_100013AA0();
}

uint64_t sub_1000116D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 360);
  v9 = *v1;
  v2[48] = a1;

  v7 = sub_10001E1E0();
  v2[49] = v7;
  v2[50] = v6;

  return _swift_task_switch(sub_100011820, v7, v6);
}

uint64_t sub_100011820()
{
  v38 = v0;
  if (v0[48])
  {
    v1 = swift_task_alloc();
    v0[51] = v1;
    *v1 = v0;
    v1[1] = sub_100011B7C;
    v2 = v0[14];

    return sub_1000140CC();
  }

  else
  {
    v4 = v0[46];

    if (qword_100033430 != -1)
    {
      swift_once();
    }

    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[23];
    v8 = v0[15];
    v9 = sub_10001DDC0();
    sub_100018370(v9, qword_100033438);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_10001DDA0();
    v11 = sub_10001E2A0();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315138;
      sub_100018718(&qword_100033608, &type metadata accessor for UUID);
      v18 = sub_10001E3E0();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_100016BAC(v18, v20, &v37);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not send items to endpoint %s due to lack of extension item data or sending app bundle ID", v16, 0xCu);
      sub_1000183A8(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v22 = v0[14];
    sub_100014B08(v0[15], 0);
    v24 = v0[43];
    v23 = v0[44];
    v25 = v0[40];
    v26 = v0[37];
    v27 = v0[34];
    v29 = v0[30];
    v28 = v0[31];
    v31 = v0[26];
    v30 = v0[27];
    v32 = v0[25];
    v34 = v0[22];
    v35 = v0[19];
    v36 = v0[16];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100011B7C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v9 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = a2;

  v6 = *(v3 + 400);
  v7 = *(v3 + 392);

  return _swift_task_switch(sub_100011CA4, v7, v6);
}

uint64_t sub_100011CA4()
{
  v54 = v0;
  v1 = v0[48];
  if (v0[53])
  {
    v2 = [v1 extensionItems];
    sub_100018968(0, &qword_100033640, NSExtensionItem_ptr);
    v3 = sub_10001E1A0();

    if (v3 >> 62)
    {
LABEL_30:
      v4 = sub_10001E3B0();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = &_swiftEmptyArrayStorage;
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = sub_10001E360();
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v10 = [v8 attachments];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_32;
            }
          }

          v11 = v6;
          v12 = v10;
          sub_100018968(0, &qword_100033648, NSItemProvider_ptr);
          v51 = sub_10001E1A0();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1000169F4(0, v11[2] + 1, 1, v11);
          }

          v14 = v11[2];
          v13 = v11[3];
          v15 = v11;
          if (v14 >= v13 >> 1)
          {
            v15 = sub_1000169F4((v13 > 1), v14 + 1, 1, v11);
          }

          v15[2] = v14 + 1;
          v16 = &v15[v14];
          v6 = v15;
          v16[4] = v51;
        }

        while (v5 != v4);
        goto LABEL_32;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = &_swiftEmptyArrayStorage;
LABEL_32:
    v48 = v0[14];

    v0[54] = sub_100014478(v6);

    v0[55] = *(v48 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts);

    return _swift_task_switch(sub_1000121B8, 0, 0);
  }

  v17 = v0[46];

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];
  v21 = v0[15];
  v22 = sub_10001DDC0();
  sub_100018370(v22, qword_100033438);
  (*(v19 + 16))(v18, v21, v20);
  v23 = sub_10001DDA0();
  v24 = sub_10001E2A0();
  v25 = os_log_type_enabled(v23, v24);
  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[23];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v53 = v30;
    *v29 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v31 = sub_10001E3E0();
    v33 = v32;
    (*(v27 + 8))(v26, v28);
    v34 = sub_100016BAC(v31, v33, &v53);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not send items to endpoint %s due to lack of extension item data or sending app bundle ID", v29, 0xCu);
    sub_1000183A8(v30);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v35 = v0[14];
  sub_100014B08(v0[15], 0);
  v37 = v0[43];
  v36 = v0[44];
  v38 = v0[40];
  v39 = v0[37];
  v40 = v0[34];
  v42 = v0[30];
  v41 = v0[31];
  v44 = v0[26];
  v43 = v0[27];
  v45 = v0[25];
  v49 = v0[22];
  v50 = v0[19];
  v52 = v0[16];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1000121B8()
{
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *(v1 + 16) = *(v0 + 432);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_10001229C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10001229C()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v4 = *v0;

  return _swift_task_switch(sub_1000123B4, 0, 0);
}

uint64_t sub_1000123CC()
{
  v1 = v0[54];
  v2 = v0[48];
  v3 = v0[14];
  sub_10001E0C0();
  v4 = sub_10001E090();
  v0[58] = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView;
  v5 = sub_10001DCF0();
  v7 = sub_10001C270(v2, v1, v4, v5, v6);
  v0[59] = v7;

  v8 = async function pointer to static SFAirDropSend.loadItemPromises(_:customPayload:)[1];
  v9 = swift_task_alloc();
  v0[60] = v9;
  *v9 = v0;
  v9[1] = sub_1000124E8;

  return static SFAirDropSend.loadItemPromises(_:customPayload:)(v7, 0, 0xF000000000000000);
}

uint64_t sub_1000124E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  v7 = v3[59];
  if (v1)
  {
    v8 = v4[53];

    v9 = v4[49];
    v10 = v4[50];
    v11 = sub_1000135B0;
  }

  else
  {

    v9 = v4[49];
    v10 = v4[50];
    v11 = sub_100012634;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100012634()
{
  v65 = v0;
  v1 = v0;
  v2 = v0[61];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[42];
    v61 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v56 = (v0[36] + 8);
    v57 = v0[39];
    v59 = (v4 + 8);
    v60 = *(v4 + 72);
    v6 = &_swiftEmptyArrayStorage;
    v7 = v5;
    v62 = *(v2 + 16);
    do
    {
      v8 = v1[44];
      v9 = v1[41];
      v10 = v1[37];
      v11 = v1[35];
      v61(v8, v7, v9);
      sub_10001DEB0();
      sub_10001DF60();
      (*v56)(v10, v11);
      v58 = *v59;
      (*v59)(v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100016818(0, v6[2] + 1, 1, v6, &qword_100033658, &unk_100022DC0, &type metadata accessor for URL);
      }

      v13 = v6[2];
      v12 = v6[3];
      v1 = v63;
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100016818(v12 > 1, v13 + 1, 1, v6, &qword_100033658, &unk_100022DC0, &type metadata accessor for URL);
      }

      v14 = v63[40];
      v15 = v63[38];
      v6[2] = v13 + 1;
      (*(v57 + 32))(v6 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v13, v14, v15);
      v7 += v60;
      --v3;
    }

    while (v3);
    v16 = (v63[33] + 8);
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = v1[43];
      v19 = v1[41];
      v20 = v1[34];
      v21 = v1[32];
      v61(v18, v5, v19);
      sub_10001DEC0();
      v22 = sub_10001DE60();
      v24 = v23;
      (*v16)(v20, v21);
      v58(v18, v19);
      if (v24 >> 60 == 15)
      {
        v1 = v63;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10001670C(0, *(v17 + 2) + 1, 1, v17);
        }

        v1 = v63;
        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        if (v26 >= v25 >> 1)
        {
          v17 = sub_10001670C((v25 > 1), v26 + 1, 1, v17);
        }

        *(v17 + 2) = v26 + 1;
        v27 = &v17[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
      }

      v5 += v60;
      --v62;
    }

    while (v62);
    v28 = v1[61];
  }

  else
  {

    v6 = &_swiftEmptyArrayStorage;
    v17 = &_swiftEmptyArrayStorage;
  }

  v1[63] = v6;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v29 = sub_10001DDC0();
  v1[64] = sub_100018370(v29, qword_100033438);

  v30 = sub_10001DDA0();
  v31 = sub_10001E2C0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v1[38];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v64 = v34;
    *v33 = 134218499;
    *(v33 + 4) = v6[2];

    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    v35 = v6;
    v36 = sub_10001E1B0();
    v38 = sub_100016BAC(v36, v37, &v64);

    *(v33 + 24) = v38;
    v1 = v63;
    _os_log_impl(&_mh_execute_header, v30, v31, "Loaded items (count=%ld): %{private,mask.hash}s", v33, 0x20u);
    sub_1000183A8(v34);
  }

  else
  {
    v35 = v6;
  }

  v39 = sub_10001DDA0();
  v40 = sub_10001E2C0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v64 = v42;
    *v41 = 136315138;
    v43 = sub_10001E1B0();
    v45 = sub_100016BAC(v43, v44, &v64);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Item preview data %s", v41, 0xCu);
    sub_1000183A8(v42);
  }

  v46 = *(v1[14] + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropClient);
  if (*(v17 + 2))
  {
    v47 = *(v17 + 4);
    v48 = *(v17 + 5);
    sub_100018A64(v47, v48);
  }

  else
  {
    v47 = 0;
    v48 = 0xF000000000000000;
  }

  v1[66] = v48;
  v1[65] = v47;

  v49 = async function pointer to SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)[1];
  v50 = swift_task_alloc();
  v1[67] = v50;
  *v50 = v1;
  v50[1] = sub_100012CAC;
  v51 = v1[52];
  v52 = v1[53];
  v53 = v1[31];
  v54 = v1[15];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v53, v35, v54, v47, v48, v51, v52, 0);
}

uint64_t sub_100012CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  v2[68] = v0;

  v5 = v2[66];
  v6 = v2[65];
  v7 = v2[63];
  v8 = v2[53];
  if (v0)
  {
    v9 = v2[53];

    sub_100018AB8(v6, v5);

    v10 = v2[49];
    v11 = v2[50];
    v12 = sub_100013828;
  }

  else
  {
    v13 = v2[63];

    sub_100018AB8(v6, v5);
    v10 = v2[49];
    v11 = v2[50];
    v12 = sub_100012E60;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100012E60()
{
  v56 = v0;
  v1 = v0[14];
  v0[69] = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong airDropViewServiceDidStartTransfer];
    swift_unknownObjectRelease();
  }

  v3 = v0[64];
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[15];
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  v54 = *(v6 + 16);
  v54(v4, v7, v5);
  v8 = sub_10001DDA0();
  v9 = sub_10001E280();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v14 = v0[28];
  v15 = v0[23];
  v16 = v0[24];
  if (v10)
  {
    v17 = v0[22];
    v49 = v0[27];
    v46 = v0[20];
    v47 = v0[21];
    v52 = v9;
    v45 = v0[28];
    v19 = v0[18];
    v18 = v0[19];
    v44 = v0[17];
    v48 = v0[23];
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v20 = 136315394;
    log = v8;
    sub_10001DF50();
    sub_10001DEE0();
    (*(v19 + 8))(v18, v44);
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v21 = sub_10001E3E0();
    v23 = v22;
    (*(v47 + 8))(v17, v46);
    v24 = *(v12 + 8);
    v24(v11, v45);
    v25 = sub_100016BAC(v21, v23, &v55);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v26 = sub_10001E3E0();
    v28 = v27;
    (*(v16 + 8))(v49, v48);
    v29 = sub_100016BAC(v26, v28, &v55);

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v52, "Adding current transfer %s for endpoint %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v13, v15);
    v24 = *(v12 + 8);
    v24(v11, v14);
  }

  v0[70] = v24;
  v30 = v0[31];
  v31 = v0[28];
  v32 = v0[26];
  v33 = v0[21];
  v51 = v0[20];
  v53 = v0[58];
  v34 = v0[18];
  v35 = v0[19];
  v37 = v0[16];
  v36 = v0[17];
  v38 = v0[14];
  v54(v32, v0[15], v0[23]);
  sub_10001DF50();
  sub_10001DEE0();
  (*(v34 + 8))(v35, v36);
  (*(v33 + 56))(v37, 0, 1, v51);
  swift_beginAccess();
  sub_1000110A0(v37, v32);
  swift_endAccess();
  v39 = async function pointer to AirDropDiscoveryView.handleTransferUpdates(transferUpdates:endpointUUID:)[1];
  v40 = swift_task_alloc();
  v0[71] = v40;
  *v40 = v0;
  v40[1] = sub_100013310;
  v41 = v0[31];
  v42 = v0[15];

  return AirDropDiscoveryView.handleTransferUpdates(transferUpdates:endpointUUID:)(v41, v42);
}

uint64_t sub_100013310(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 96) = a1;
  v3[11] = v1;
  v4 = v2[71];
  v8 = *v1;

  v5 = v2[50];
  v6 = v2[49];

  return _swift_task_switch(sub_100013438, v6, v5);
}

uint64_t sub_100013438()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 368);
  v3 = *(v0 + 112);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong airDropViewServiceDidFinishTransferWithSuccess:*(v0 + 96)];
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 560);
  v6 = *(v0 + 384);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  v10 = *(v0 + 112);
  sub_100014770(*(v0 + 120));

  v5(v7, v8);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v13 = *(v0 + 320);
  v14 = *(v0 + 296);
  v15 = *(v0 + 272);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v23 = *(v0 + 176);
  v24 = *(v0 + 152);
  v25 = *(v0 + 128);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000135B0()
{
  v33 = v0;
  v1 = v0[62];
  v2 = v0[46];

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v3 = sub_10001DDC0();
  sub_100018370(v3, qword_100033438);
  swift_errorRetain();
  v4 = sub_10001DDA0();
  v5 = sub_10001E2A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10001E400();
    v13 = sub_100016BAC(v11, v12, &v32);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "send failed %s", v6, 0xCu);
    sub_1000183A8(v7);
  }

  v14 = v0[48];
  v15 = v0[14];
  v16 = v0[15];
  swift_errorRetain();
  sub_100014B08(v16, v1);

  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[34];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[25];
  v29 = v0[22];
  v30 = v0[19];
  v31 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100013828()
{
  v33 = v0;
  v1 = v0[68];
  v2 = v0[46];

  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v3 = sub_10001DDC0();
  sub_100018370(v3, qword_100033438);
  swift_errorRetain();
  v4 = sub_10001DDA0();
  v5 = sub_10001E2A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10001E400();
    v13 = sub_100016BAC(v11, v12, &v32);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "send failed %s", v6, 0xCu);
    sub_1000183A8(v7);
  }

  v14 = v0[48];
  v15 = v0[14];
  v16 = v0[15];
  swift_errorRetain();
  sub_100014B08(v16, v1);

  v18 = v0[43];
  v17 = v0[44];
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[34];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[25];
  v29 = v0[22];
  v30 = v0[19];
  v31 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100013AA0()
{
  v1[4] = v0;
  v2 = *(*(sub_10000DB68(&qword_1000334C0, &qword_100022F00) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10001E210();
  v1[6] = sub_10001E200();
  v4 = sub_10001E1E0();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100013B70, v4, v3);
}

uint64_t sub_100013B70()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask;
  v3 = *&v1[OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask];
  v0[9] = v3;
  if (v3)
  {
    v4 = async function pointer to Task<>.value.getter[1];

    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = sub_10000DB68(&qword_100033690, &qword_100022E00);
    *v5 = v0;
    v5[1] = sub_100013D94;
    v7 = v0 + 3;
    v8 = v3;
  }

  else
  {
    v9 = v0[5];
    v10 = sub_10001E230();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    *(swift_allocObject() + 16) = v1;
    v11 = v1;
    v12 = sub_10000DB68(&qword_100033690, &qword_100022E00);
    v13 = sub_10001E250();
    v0[11] = v13;

    sub_100018760(v9, &qword_1000334C0, &qword_100022F00);
    v14 = *&v1[v2];
    *&v1[v2] = v13;

    v15 = async function pointer to Task<>.value.getter[1];
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_100013F30;
    v7 = v0 + 2;
    v8 = v13;
    v6 = v12;
  }

  return Task<>.value.getter(v7, v8, v6);
}

uint64_t sub_100013D94()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_100013EB4, v4, v3);
}

uint64_t sub_100013EB4()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[3];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_100013F30()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_100014050, v4, v3);
}

uint64_t sub_100014050()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[2];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000140CC()
{
  v1[23] = v0;
  sub_10001E210();
  v1[24] = sub_10001E200();
  v3 = sub_10001E1E0();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100014164, v3, v2);
}

uint64_t sub_100014164()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1000142F0;
    v4 = swift_continuation_init();
    v0[17] = sub_10000DB68(&qword_100033688, &qword_100022DE8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100015CE8;
    v0[13] = &unk_10002D650;
    v0[14] = v4;
    [v3 airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v5 = v0[24];

    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_1000142F0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_1000143F8, v2, v1);
}

uint64_t sub_1000143F8()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[21];
  v4 = v0[22];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_100014478(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &unk_100033670;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_10001E3B0();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_10001E3B0();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_10001E3B0();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_10001E370();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_100018B20(&qword_100033678, v3, &qword_100022DD8);
      for (i = 0; i != v15; ++i)
      {
        sub_10000DB68(v3, &qword_100022DD8);
        v19 = v3;
        v20 = sub_10001C1E8(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100018968(0, &qword_100033648, NSItemProvider_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_10001E3B0();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_100014770(uint64_t a1)
{
  v3 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_10001DC60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v14 = sub_10001DDC0();
  sub_100018370(v14, qword_100033438);
  v30 = *(v8 + 16);
  v30(v13, a1, v7);
  v15 = sub_10001DDA0();
  v16 = sub_10001E280();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v1;
    v27 = v19;
    v32 = v19;
    *v18 = 136315138;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v20 = sub_10001E3E0();
    v21 = a1;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_100016BAC(v20, v23, &v32);
    a1 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing current transfer for endpoint %s", v18, 0xCu);
    sub_1000183A8(v27);

    v6 = v28;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v31;
  v30(v31, a1, v7);
  v26 = sub_10001DFC0();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  swift_beginAccess();
  sub_1000110A0(v6, v25);
  swift_endAccess();
  sub_10000F7EC();
}

uint64_t sub_100014B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v42 = a1;
  v4 = sub_10001DFC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001DD10();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10001DD20();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001DD00();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000DB68(&qword_100033618, &qword_100022D70);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v34 - v23;
  v25 = sub_10001DC60();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v42);
  v30 = *(v5 + 56);
  v41 = v4;
  v30(v24, 1, 1, v4);
  swift_beginAccess();
  sub_1000110A0(v24, v28);
  swift_endAccess();
  (*(v17 + 16))(v20, v3 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropDiscoveryView, v16);
  if (v35)
  {
    swift_getErrorValue();
    v31 = sub_10001E400();
  }

  else
  {
    v32 = 0xED0000726F727265;
    v31 = 0x206E776F6E6B6E75;
  }

  *v11 = v31;
  v11[1] = v32;
  (*(v36 + 104))(v11, enum case for _DDNodeDecoration.Kind.failed(_:), v37);
  sub_10001DFF0();
  (*(v5 + 16))(v40, v3 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_pendingTransferID, v41);
  sub_10001DD30();
  sub_10001DCA0();
  (*(v38 + 8))(v15, v39);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_100014F94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10001DC60();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_10001DFC0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_10001E210();
  v3[12] = sub_10001E200();
  v11 = sub_10001E1E0();
  v3[13] = v11;
  v3[14] = v10;

  return _swift_task_switch(sub_1000150F4, v11, v10);
}

uint64_t sub_1000150F4()
{
  v26 = v0;
  if (qword_100033430 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_10001DDC0();
  v0[15] = sub_100018370(v5, qword_100033438);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_10001DDA0();
  v8 = sub_10001E2C0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v14 = sub_10001E3E0();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_100016BAC(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel transferID %s", v13, 0xCu);
    sub_1000183A8(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[18] = v17;
  v19 = *(v0[4] + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_airDropClient);
  v20 = async function pointer to SFAirDropClient.cancelTransfer(_:)[1];
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_10001538C;
  v22 = v0[2];

  return SFAirDropClient.cancelTransfer(_:)(v22);
}

uint64_t sub_10001538C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_100015544;
  }

  else
  {
    v7 = sub_1000154C8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000154C8()
{
  v1 = v0[12];

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100015544()
{
  v41 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v39 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v10 = v0[2];
  v9 = v0[3];

  (*(v8 + 16))(v6, v9, v7);
  v2(v4, v10, v5);
  v11 = sub_10001DDA0();
  v12 = sub_10001E2A0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[18];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  if (v13)
  {
    v38 = v12;
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v21 = 136315394;
    sub_100018718(&qword_100033608, &type metadata accessor for UUID);
    v37 = v14;
    v22 = sub_10001E3E0();
    v24 = v23;
    (*(v19 + 8))(v17, v20);
    v25 = sub_100016BAC(v22, v24, &v40);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_100018718(&qword_100033610, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v26 = sub_10001E3E0();
    v28 = v27;
    v37(v15, v18);
    v29 = sub_100016BAC(v26, v28, &v40);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v38, "Cancel failed for endpoint %s, removing transferID %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v14(v15, v18);
    (*(v19 + 8))(v17, v20);
  }

  v30 = v0[20];
  v31 = v0[4];
  sub_100014770(v0[3]);

  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[7];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100015854(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  sub_10001E210();
  v2[24] = sub_10001E200();
  v4 = sub_10001E1E0();
  v2[25] = v4;
  v2[26] = v3;

  return _swift_task_switch(sub_1000158EC, v4, v3);
}

uint64_t sub_1000158EC()
{
  v1 = *(v0 + 184);
  v2 = [objc_allocWithZone(AirDropExtensionActivity) init];
  *(v0 + 216) = v2;
  [v2 setMaxPreviews:3];
  v3 = [v2 itemDataRequest];
  *(v0 + 224) = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v5 = Strong;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_100015AE8;
    v6 = swift_continuation_init();
    *(v0 + 136) = sub_10000DB68(&qword_100033698, &qword_100022E08);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100015C84;
    *(v0 + 104) = &unk_10002D6A0;
    *(v0 + 112) = v6;
    [v5 airDropViewServiceRequestingSharedItemsWithDataRequest:v3 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 192);

    **(v0 + 176) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100015AE8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100015BF0, v2, v1);
}

uint64_t sub_100015BF0()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);

  v4 = *(v0 + 168);
  swift_unknownObjectRelease();

  **(v0 + 176) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100015C84(uint64_t a1, void *a2)
{
  v3 = sub_100018B80((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100015CE8(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100018B80((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_10001E130();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

id AirDropDiscoveryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10001E120();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AirDropDiscoveryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015F8C()
{
  swift_unknownObjectWeakInit();
  sub_10001E3A0();
  __break(1u);
}

void sub_100015FFC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for AirDropHostingController(0);
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, "setContentScrollView:forEdge:", v6, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setContentScrollView:v6 forEdge:{a4, v9.receiver, v9.super_class}];
}

id sub_100016114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropHostingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000161A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000161D8()
{
  result = sub_10001DD00();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10001DFC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10001633C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100016388(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100016480;

  return v7(a1);
}

uint64_t sub_100016480()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100016578(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_100016600(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB68(&qword_100033660, &unk_100022F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001670C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB68(&qword_100033650, &qword_100022DB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100016818(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000DB68(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000169F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB68(&qword_100033680, &qword_100022DE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000DB68(&qword_100033670, &qword_100022DD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100016B50(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100016BAC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100016BAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100016C78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000183F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000183A8(v11);
  return v7;
}

unint64_t sub_100016C78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100016D84(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001E380();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100016D84(uint64_t a1, unint64_t a2)
{
  v4 = sub_100016DD0(a1, a2);
  sub_100016F00(&off_10002D530);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100016DD0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100016FEC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001E380();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001E170();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100016FEC(v10, 0);
        result = sub_10001E350();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100016F00(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100017060(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100016FEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000DB68(&qword_1000335D8, &qword_100022D20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017060(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB68(&qword_1000335D8, &qword_100022D20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100017154(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100017164(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_100017184(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000171F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100017228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10001A1FC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100017EAC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_10001DC60();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_10001DFC0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100017870(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_10001DFC0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000173C8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_10001DFC0();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001DC60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000DB68(&unk_100033620, &qword_100022D78);
  v52 = a2;
  result = sub_10001E3D0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_100018718(&qword_100033820, &type metadata accessor for UUID);
      result = sub_10001E0E0();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_100017870(int64_t a1, uint64_t a2)
{
  v4 = sub_10001DC60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_10001E310();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_100018718(&qword_100033820, &type metadata accessor for UUID);
      v24 = sub_10001E0E0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_10001DFC0() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100017BB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10001DC60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10001A1FC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100017EAC();
      goto LABEL_7;
    }

    sub_1000173C8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_10001A1FC(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100017DB8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_10001E3F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_10001DFC0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100017DB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10001DC60();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10001DFC0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_100017EAC()
{
  v1 = v0;
  v43 = sub_10001DFC0();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10001DC60();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB68(&unk_100033620, &qword_100022D78);
  v6 = *v0;
  v7 = sub_10001E3C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_100018200()
{
  v1 = *(*(sub_10001DC60() - 8) + 64);
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_securityContexts;
  type metadata accessor for AirDropUtilities.SecurityContexts();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = &_swiftEmptyArrayStorage;
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_activityExtensionItemData) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_tapHandleTask) = 0;
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_existingItemDataTask) = 0;
  sub_10001DC50();
  sub_10001DFD0();
  *(v0 + OBJC_IVAR____TtC7AirDrop30AirDropDiscoveryViewController_currentTransfersByEndpointID) = &_swiftEmptyDictionarySingleton;
  sub_10001E3A0();
  __break(1u);
}

uint64_t sub_100018370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000183A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000183F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100018454(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000184B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018528(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100018D60;

  return sub_100016388(a1, v5);
}

uint64_t sub_1000185E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018618(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EC9C;

  return sub_100016388(a1, v5);
}

uint64_t sub_1000186D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100018718(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000DB68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000187C0()
{
  v1 = sub_10001DC60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100018884(uint64_t a1)
{
  v4 = *(sub_10001DC60() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100018D60;

  return sub_1000112D0(a1, v6, v1 + v5);
}

uint64_t sub_100018968(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000189B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100018D60;

  return sub_10001A89C(a1, a2, v7, v6);
}

uint64_t sub_100018A64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100018AB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018ACC(a1, a2);
  }

  return a1;
}

uint64_t sub_100018ACC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100018B20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000186D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100018B80(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100018BC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018D60;

  return sub_100015854(a1, v4);
}

__n128 sub_100018C9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100018CAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018CCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100018D08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100018D64()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_10001E300();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000DB68(&qword_100033818, &qword_100022E68);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1000191C0(v5);
  }

  return 0;
}

Swift::Void __swiftcall AirDropNavigationController.beginRequest(with:)(NSExtensionContext with)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10001E120();
    [v5 setAccessibilityIdentifier:v6];

    sub_100018968(0, &unk_100033710, NSUserDefaults_ptr);
    v7 = sub_10001E2D0();
    LOBYTE(v6) = sub_10001DF90();

    if (v6)
    {
      v8 = [v2 sheetPresentationController];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
        [v9 _setLargeBackground:v10];
      }

      v11 = sub_10001A58C(with.super.isa);
      v13 = v12;
      v14 = objc_allocWithZone(type metadata accessor for AirDropDiscoveryViewController(0));
      v15 = AirDropDiscoveryViewController.init(hostAppBundleID:)(v11, v13);
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      [v2 pushViewController:v15 animated:0];
      goto LABEL_21;
    }

    v16 = [(objc_class *)with.super.isa inputItems];
    v17 = sub_10001E1A0();

    if (*(v17 + 16))
    {
      sub_1000183F4(v17 + 32, v27);

      sub_100018968(0, &qword_100033640, NSExtensionItem_ptr);
      if (swift_dynamicCast())
      {
        v18 = v28[0];
        if (v28[0])
        {
          v19 = [v28[0] userInfo];
          if (v19)
          {
            v20 = v19;
            v21 = sub_10001E0D0();

            v25 = *&v2[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
            v26 = *&v2[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey + 8];

            sub_10001E340();
            if (*(v21 + 16))
            {
              v22 = sub_10001A280(v27);
              if (v23)
              {
                sub_1000183F4(*(v21 + 56) + 32 * v22, v28);
                sub_10001A2C4(v27);

                if (*(&v29 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v24 = v27[0];
LABEL_20:
                    v15 = [objc_allocWithZone(AirDropBrowserViewController) init];
                    [v15 setAirDropDelegate:v2];
                    [v15 setShowNoContentView:v24];
                    [v2 pushViewController:v15 animated:0];

LABEL_21:
                    return;
                  }

LABEL_19:
                  v24 = 0;
                  goto LABEL_20;
                }

LABEL_18:
                sub_1000191C0(v28);
                goto LABEL_19;
              }
            }

            sub_10001A2C4(v27);
          }
        }

LABEL_17:
        *v28 = 0u;
        v29 = 0u;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1000191C0(uint64_t a1)
{
  v2 = sub_10000DB68(&qword_100033720, &qword_100022D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000192B4(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

id sub_100019310(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

id AirDropNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id AirDropNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v6 = 0xD000000000000011;
  *(v6 + 1) = 0x8000000100027AB0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v7 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v7 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v7);
}

id AirDropNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

id AirDropNavigationController.init(rootViewController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x8000000100027AB0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithRootViewController:", a1);

  return v5;
}

id AirDropNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x8000000100027AB0;
  if (a2)
  {
    v8 = sub_10001E120();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id AirDropNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AirDropNavigationController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey];
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x8000000100027AB0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void AirDropNavigationController.airDropViewServiceWillStartTransfer(to:)(uint64_t a1)
{
  [v1 _hostAuditToken];
  v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v11);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10001E120();
    v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

    if (v6)
    {
      v7 = CFGetTypeID(v6);
      if (v7 == CFBooleanGetTypeID() && (type metadata accessor for CFBoolean(0), swift_unknownObjectRetain(), v8 = swift_dynamicCastUnknownClassUnconditional(), Value = CFBooleanGetValue(v8), v8, Value) && (v10 = sub_100018D64()) != 0)
      {
        [v10 airDropViewServiceWillStartTransferToRecipient:a1];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall AirDropNavigationController.airDropViewServiceDidFinishTransfer(withSuccess:)(Swift::Bool withSuccess)
{
  v2 = sub_100018D64();
  if (v2)
  {
    [v2 airDropViewServiceDidFinishTransferWithSuccess:withSuccess];

    swift_unknownObjectRelease();
  }
}

void AirDropNavigationController.airDropViewServiceRequestingSharedItems(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018D64();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      v9[4] = a2;
      v9[5] = a3;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100019CDC;
      v9[3] = &unk_10002D748;
      v8 = _Block_copy(v9);
    }

    else
    {
      v8 = 0;
    }

    [v7 airDropViewServiceRequestingSharedItemsWithDataRequest:a1 completionHandler:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void sub_100019CDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void AirDropNavigationController.airDropViewServiceRequestingSendingAppBundleIdentifier(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100018D64();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100019EF0;
      v7[3] = &unk_10002D770;
      v6 = _Block_copy(v7);
    }

    else
    {
      v6 = 0;
    }

    [v5 airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_100019EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_10001E130();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

void sub_10001A024(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_10001E120();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void *sub_10001A08C(SEL *a1)
{
  result = sub_100018D64();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10001A0EC(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  v4 = sub_100018D64();
  if (v4)
  {
    [v4 *a3];
    swift_unknownObjectRelease();
  }
}

uint64_t NWEndpoint.endpointUUID()()
{
  v0 = swift_slowAlloc();
  result = sub_10001DDF0();
  if (result)
  {
    nw_endpoint_get_service_identifier();
    swift_unknownObjectRelease();
    v2 = v0[7];
    v3 = v0[6];
    v4 = v0[5];
    v5 = v0[4];
    v6 = v0[3];
    v7 = v0[2];
    v8 = v0[1];
    v9 = *v0;
    v10 = *(v0 + 1);
    sub_10001DC40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10001A1FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10001DC60();
  sub_10001A73C(&qword_100033820);
  v5 = sub_10001E0E0();

  return sub_10001A318(a1, v5);
}

unint64_t sub_10001A280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001E320(*(v2 + 40));

  return sub_10001A4C4(a1, v4);
}

unint64_t sub_10001A318(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10001DC60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10001A73C(&qword_100033828);
      v16 = sub_10001E0F0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10001A4C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001A6E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001E330();
      sub_10001A2C4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001A58C(void *a1)
{
  [a1 _extensionHostAuditToken];
  CPCopyBundleIdentifierAndTeamFromAuditToken();
  return 0;
}

uint64_t sub_10001A640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A67C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001A68C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A73C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001DC60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001A790()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033830);
  v1 = sub_100018370(v0, qword_100033830);
  if (qword_100033460 != -1)
  {
    swift_once();
  }

  v2 = sub_100018370(v0, qword_100033B28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001A858()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(sub_10000DB68(&qword_1000334C0, &qword_100022F00) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001A948, 0, 0);
}

void sub_10001A948()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v27 = *(v0 + 80);
    }

    v2 = sub_10001E3B0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);

    v30 = *(v0 + 8);

    v30();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v31 = *(v0 + 80) + 32;
    v5 = &selRef_boundarySupplementaryItemWithLayoutSize_elementKind_alignment_;
    v32 = v1 & 0xC000000000000001;
    v33 = v2;
    while (1)
    {
      if (v4)
      {
        v6 = *(v0 + 80);
        v7 = sub_10001E360();
      }

      else
      {
        v7 = *(v31 + 8 * v3);
      }

      v8 = v7;
      v9 = sub_10001E120();
      v10 = [v8 v5[61]];

      if (v10)
      {
        break;
      }

LABEL_6:
      if (v2 == ++v3)
      {
        goto LABEL_23;
      }
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);
    v14 = sub_10001E230();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    v16 = swift_allocObject();
    v16[2] = 0;
    v17 = v16 + 2;
    v16[3] = 0;
    v16[4] = v8;
    v16[5] = v13;
    sub_1000184B8(v11, v12);
    LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);
    v34 = v8;

    v18 = *(v0 + 96);
    if (v11 == 1)
    {
      sub_100018760(*(v0 + 96), &qword_1000334C0, &qword_100022F00);
      if (*v17)
      {
LABEL_13:
        v19 = v16[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_10001E1E0();
        v22 = v21;
        swift_unknownObjectRelease();
LABEL_16:
        v23 = **(v0 + 72);
        v24 = swift_allocObject();
        *(v24 + 16) = &unk_100022F40;
        *(v24 + 24) = v16;

        if (v22 | v20)
        {
          v25 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v20;
          *(v0 + 40) = v22;
        }

        else
        {
          v25 = 0;
        }

        v26 = *(v0 + 104);
        *(v0 + 48) = 1;
        *(v0 + 56) = v25;
        *(v0 + 64) = v23;
        swift_task_create();

        sub_100018760(v26, &qword_1000334C0, &qword_100022F00);
        v4 = v32;
        v2 = v33;
        v5 = &selRef_boundarySupplementaryItemWithLayoutSize_elementKind_alignment_;
        goto LABEL_6;
      }
    }

    else
    {
      sub_10001E220();
      (*(v15 + 8))(v18, v14);
      if (*v17)
      {
        goto LABEL_13;
      }
    }

    v20 = 0;
    v22 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10001ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_10001AD08, 0, 0);
}

uint64_t sub_10001AD08()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001AE24;
  v2 = swift_continuation_init();
  v0[17] = sub_10000DB68(&qword_1000339C0, &qword_100022F58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001B290;
  v0[13] = &unk_10002D860;
  v0[14] = v2;
  [v1 sf_loadSecurityContextWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AE24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10001B0A8;
  }

  else
  {
    v3 = sub_10001AF34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001AF34()
{
  v1 = v0[20];
  v0[22] = v0[18];
  return _swift_task_switch(sub_10001AF58, v1, 0);
}

uint64_t sub_10001AF58()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  [v1 activate];
  swift_beginAccess();
  v3 = v1;
  sub_10001E180();
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10001E1C0();
  }

  v4 = *(v0 + 176);
  sub_10001E1D0();
  swift_endAccess();

  return _swift_task_switch(sub_10001B048, 0, 0);
}

uint64_t sub_10001B048()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B0A8()
{
  v1 = v0[21];
  swift_willThrow();
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[19];
  v4 = sub_10001DDC0();
  sub_100018370(v4, qword_100033830);
  v5 = v3;
  swift_errorRetain();
  v6 = sub_10001DDA0();
  v7 = sub_10001E2A0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not load security context for item provider %@: %@", v11, 0x16u);
    sub_10000DB68(&qword_1000335D0, &qword_100022D18);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001B290(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100018B80((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000DB68(&qword_100033600, qword_100022F60);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001B368(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 72) = a14;
  *(v15 + 80) = a15;
  *(v15 + 56) = a13;
  *(v15 + 40) = a11;
  *(v15 + 48) = a12;
  *(v15 + 24) = a6;
  *(v15 + 32) = v43;
  *(v15 + 16) = a1;
  v19 = sub_10001DE80();
  *(v15 + 88) = v19;
  v20 = *(v19 - 8);
  *(v15 + 96) = v20;
  v21 = *(v20 + 64) + 15;
  *(v15 + 104) = swift_task_alloc();
  *(v15 + 112) = swift_task_alloc();
  v22 = sub_10001DF70();
  *(v15 + 120) = v22;
  v23 = *(v22 - 8);
  *(v15 + 128) = v23;
  v24 = *(v23 + 64) + 15;
  *(v15 + 136) = swift_task_alloc();
  *(v15 + 144) = swift_task_alloc();
  v25 = sub_10001DC20();
  *(v15 + 152) = v25;
  v26 = *(v25 - 8);
  *(v15 + 160) = v26;
  v27 = *(v26 + 64) + 15;
  *(v15 + 168) = swift_task_alloc();
  *(v15 + 176) = swift_task_alloc();
  v28 = sub_10001E050();
  *(v15 + 184) = v28;
  v29 = *(v28 - 8);
  *(v15 + 192) = v29;
  v30 = *(v29 + 64) + 15;
  *(v15 + 200) = swift_task_alloc();
  *(v15 + 208) = swift_task_alloc();
  *(v15 + 216) = swift_task_alloc();
  v31 = swift_task_alloc();
  *(v15 + 224) = v31;
  *(v15 + 232) = sub_10001E0C0();
  v32 = async function pointer to static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)[1];
  v33 = swift_task_alloc();
  *(v15 + 240) = v33;
  *v33 = v15;
  v33[1] = sub_10001B670;
  LOBYTE(a11) = 0;
  v34.n128_f64[0] = a2;
  v35.n128_f64[0] = a3;

  return (static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:))(v31, a6, a7, a8, a9, 0, a10, v42, v34, v35, a11);
}

uint64_t sub_10001B670()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10001BE1C;
  }

  else
  {
    v3 = sub_10001B784;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B784()
{
  v76 = v0;
  if (v0[8] >> 60 == 15)
  {
    v1 = v0[28];
    v2 = sub_10001E010();
    if (v2)
    {
      v3 = v0[29];
      v4 = v2;
      v71 = sub_10001E0B0();
      v72 = v5;
    }

    else
    {
      v71 = 0;
      v72 = 0xF000000000000000;
    }
  }

  else
  {
    v71 = v0[7];
    v72 = v0[8];
  }

  sub_10001CF60(v0[7], v0[8]);
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v6 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[3];
  v13 = sub_10001DDC0();
  sub_100018370(v13, qword_100033830);
  v14 = *(v11 + 16);
  v14(v6, v7, v10);
  v14(v8, v7, v10);
  v14(v9, v7, v10);
  v15 = v12;
  v16 = sub_10001DDA0();
  v17 = sub_10001E2C0();

  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[26];
  v19 = v0[27];
  v21 = v0[24];
  v22 = v0[23];
  if (v18)
  {
    v23 = v0[22];
    v24 = v0[20];
    v68 = v0[19];
    v73 = v16;
    v25 = v0[18];
    v26 = v0[16];
    v58 = v0[15];
    v65 = v0[3];
    v69 = v0[25];
    v60 = v0[26];
    v27 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v27 = 136315906;
    v61 = v17;
    sub_10001E020();
    sub_10001DF60();
    (*(v26 + 8))(v25, v58);
    sub_10001D13C();
    v28 = sub_10001E3E0();
    v30 = v29;
    (*(v24 + 8))(v23, v68);
    v31 = *(v21 + 8);
    v31(v19, v22);
    v32 = sub_100016BAC(v28, v30, v75);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = sub_10001E030();
    v35 = v34;
    v31(v60, v22);
    v36 = sub_100016BAC(v33, v35, v75);

    *(v27 + 14) = v36;
    *(v27 + 22) = 1024;
    v37 = v69;
    LODWORD(v36) = sub_10001E040() & 1;
    v70 = v31;
    v31(v37, v22);
    *(v27 + 24) = v36;
    *(v27 + 28) = 2112;
    *(v27 + 30) = v65;
    *v63 = v65;
    v38 = v65;
    _os_log_impl(&_mh_execute_header, v73, v61, "Loaded item %s with data type %s (was string = %{BOOL}d) from item provider %@", v27, 0x26u);
    sub_100018760(v63, &qword_1000335D0, &qword_100022D18);

    swift_arrayDestroy();
  }

  else
  {
    v39 = *(v21 + 8);
    v39(v0[25], v22);

    v39(v20, v22);
    v70 = v39;
    v39(v19, v22);
  }

  v40 = v0[28];
  v64 = v0[27];
  v66 = v0[26];
  v67 = v0[25];
  v41 = v0[22];
  v62 = v0[23];
  v42 = v0[20];
  v51 = v0[21];
  v43 = v0[19];
  v44 = v0[18];
  v45 = v0[16];
  v74 = v0[17];
  v46 = v0[15];
  v54 = v0[14];
  v55 = v0[12];
  v56 = v0[13];
  v57 = v0[11];
  v52 = v0[10];
  v53 = v0[9];
  v59 = v0[2];
  sub_10001E020();
  sub_10001DF60();
  v47 = *(v45 + 8);
  v47(v44, v46);
  sub_10001DBF0();
  v48 = *(v42 + 8);
  v48(v41, v43);
  sub_10001E030();
  sub_10001E020();
  sub_10001DF60();
  v47(v74, v46);
  sub_10001DBE0();
  v48(v51, v43);

  sub_10001CF60(v71, v72);
  sub_10001E040();
  sub_10001DE70();
  sub_10001E020();
  (*(v55 + 16))(v56, v54, v57);
  sub_10001DEA0();
  sub_100018AB8(v71, v72);
  (*(v55 + 8))(v54, v57);
  v70(v40, v62);

  v49 = v0[1];

  return v49();
}

uint64_t sub_10001BE1C()
{
  v29 = v0;
  if (qword_100033450 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[5];
  v3 = sub_10001DDC0();
  sub_100018370(v3, qword_100033830);

  swift_errorRetain();
  v4 = sub_10001DDA0();
  v5 = sub_10001E2A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v10 = 134218498;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100016BAC(v9, v7, &v28);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load item %ld for session %s: %@", v10, 0x20u);
    sub_100018760(v11, &qword_1000335D0, &qword_100022D18);

    sub_1000183A8(v12);
  }

  v14 = v0[31];
  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[17];
  v21 = v0[18];
  v26 = v0[14];
  v27 = v0[13];
  swift_willThrow();

  v23 = v0[1];
  v24 = v0[31];

  return v23();
}

uint64_t sub_10001C0F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100016600(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void (*sub_10001C1E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001E360();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001C268;
  }

  __break(1u);
  return result;
}

void *sub_10001C270(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v100 = a4;
  v114 = a3;
  v99 = sub_10001DE50();
  v102 = *(v99 - 8);
  v7 = *(v102 + 64);
  __chkstk_darwin(v99);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB68(&qword_1000334C0, &qword_100022F00);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v91 - v15;
  v103 = sub_10001DE80();
  v16 = *(v103 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v103);
  v98 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v91 - v20;
  v127 = sub_10001DD80();
  v21 = *(v127 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v127);
  v123 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000DB68(&qword_1000339B0, &qword_100022F08);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v121 = &v91 - v26;
  v113 = sub_10001E0C0();
  v116 = sub_10001E070();
  if (!(a2 >> 62))
  {
    v115 = a2 & 0xFFFFFFFFFFFFFF8;
    v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

LABEL_55:
  v115 = a2 & 0xFFFFFFFFFFFFFF8;
  v27 = sub_10001E3B0();
  if (!v27)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v28 = 0;
  v112 = a2 & 0xC000000000000001;
  v108 = (v21 + 48);
  v122 = (v21 + 8);
  v96 = v116 & 1;
  v95 = (v16 + 16);
  v94 = (v16 + 8);
  v93 = v102 + 32;
  v106 = &_swiftEmptyArrayStorage;
  v107 = xmmword_100022E80;
  v110 = a2;
  v111 = a1;
  v21 = v127;
  v92 = v9;
  v97 = v14;
  v109 = v27;
  do
  {
    v14 = v28;
    v9 = v121;
    while (1)
    {
      if (v112)
      {
        v29 = sub_10001E360();
      }

      else
      {
        if (v14 >= *(v115 + 16))
        {
          goto LABEL_54;
        }

        v29 = *(a2 + 8 * v14 + 32);
      }

      v30 = v29;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v126 = v14 + 1;
      v31 = [a1 attachmentNameForItem:v29];
      if (v31)
      {
        v32 = v31;
        v33 = sub_10001E130();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = [a1 subjectForItem:v30];
      if (v36)
      {
        v37 = v36;
        v120 = sub_10001E130();
        v128 = v38;
      }

      else
      {
        v120 = 0;
        v128 = 0;
      }

      v39 = [a1 dataTypeForItem:v30];
      if (v39)
      {
        v40 = v39;
        v41 = sub_10001E130();
        v43 = v42;

        sub_10000DB68(&qword_100033660, &unk_100022F20);
        inited = swift_initStackObject();
        *(inited + 16) = v107;
        v118 = v41;
        *(inited + 32) = v41;
        *(inited + 40) = v43;
        v131 = v114;
        v124 = v43;

        sub_10001C0F4(inited);
        v45 = v131;
      }

      else
      {
        v45 = v114;

        v118 = 0;
        v124 = 0;
      }

      v46 = [a1 previewImageForItem:v30];
      v125 = v35;
      v119 = v33;
      if (v46)
      {
        v47 = v46;
        v129 = sub_10001E0B0();
        v49 = v48;

        v130 = v49;
        if (v14)
        {
          v50 = 0;
        }

        else
        {
          v50 = v49 >> 60 == 15;
        }

        v51 = v50;
        v117 = v51;
      }

      else
      {
        v52 = [a1 previewImageDataForItem:v30];
        if (v52)
        {
          v53 = v52;
          v129 = sub_10001DC30();
          v130 = v54;

          v117 = 0;
        }

        else
        {
          v129 = 0;
          v117 = v14 == 0;
          v130 = 0xF000000000000000;
        }
      }

      sub_10001E000();
      v56 = v55;
      v58 = v57;
      sub_10001E080();
      if (!v59)
      {
        sub_10001E060();
      }

      sub_10001DD90();
      if ((*v108)(v9, 1, v21) == 1)
      {
        sub_100018760(v9, &qword_1000339B0, &qword_100022F08);
        v16 = 0;
      }

      else
      {
        v60 = v123;
        sub_10001DD60();
        v16 = sub_10001DD50();
        v61 = *v122;
        v62 = v60;
        v9 = v121;
        (*v122)(v62, v21);
        v61(v9, v21);
      }

      v63 = sub_10001E120();
      v64 = [objc_opt_self() _typeWithIdentifier:v63 allowUndeclared:1];

      if (!v64)
      {
        break;
      }

      v65 = v123;
      sub_10001DD70();
      isa = sub_10001DD40().super.isa;
      (*v122)(v65, v127);
      LODWORD(v65) = [v64 conformsToType:isa];

      if ((v116 & v65 & 1) == 0)
      {
        break;
      }

      sub_100018AB8(v129, v130);

      ++v14;
      v21 = v127;
      a2 = v110;
      a1 = v111;
      if (v126 == v109)
      {
        return v106;
      }
    }

    v67 = v125;

    sub_10001CF60(v129, v130);
    v68 = v129;
    v69 = v119;
    sub_10001DE70();
    v70 = sub_10001E230();
    v16 = *(v70 - 8);
    v71 = v104;
    (*(v16 + 56))(v104, 1, 1, v70);
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = 0;
    *(v72 + 32) = v30;
    *(v72 + 40) = v45;
    v73 = v124;
    *(v72 + 48) = v118;
    *(v72 + 56) = v73;
    *(v72 + 64) = v96;
    *(v72 + 65) = v117;
    *(v72 + 72) = v56;
    *(v72 + 80) = v58;
    *(v72 + 88) = v69;
    *(v72 + 96) = v67;
    v74 = v101;
    *(v72 + 104) = v100;
    *(v72 + 112) = v74;
    *(v72 + 120) = v14;
    *(v72 + 128) = v68;
    v75 = v130;
    v76 = v120;
    *(v72 + 136) = v130;
    *(v72 + 144) = v76;
    *(v72 + 152) = v128;
    v77 = v97;
    sub_1000184B8(v71, v97);
    LODWORD(v71) = (*(v16 + 48))(v77, 1, v70);
    sub_10001CF60(v68, v75);
    v78 = v30;

    v128 = v78;
    if (v71 == 1)
    {
      sub_100018760(v77, &qword_1000334C0, &qword_100022F00);
    }

    else
    {
      sub_10001E220();
      v79 = *(v16 + 8);
      v16 += 8;
      v79(v77, v70);
    }

    v80 = v92;
    v81 = v109;
    v83 = *(v72 + 16);
    v82 = *(v72 + 24);
    swift_unknownObjectRetain();

    v21 = v127;
    if (v83)
    {
      swift_getObjectType();
      v84 = sub_10001E1E0();
      v86 = v85;
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    a1 = v111;
    sub_100018760(v104, &qword_1000334C0, &qword_100022F00);
    sub_10001DED0();
    if (v86 | v84)
    {
      v132 = 0;
      v133 = 0;
      v134 = v84;
      v135 = v86;
    }

    swift_task_create();
    (*v95)(v98, v105, v103);

    sub_10001DE40();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_1000165D8(0, v106[2] + 1, 1, v106);
    }

    a2 = v110;
    v88 = v106[2];
    v87 = v106[3];
    if (v88 >= v87 >> 1)
    {
      v106 = sub_1000165D8(v87 > 1, v88 + 1, 1, v106);
    }

    sub_100018AB8(v129, v130);
    (*v94)(v105, v103);
    v89 = v106;
    v106[2] = v88 + 1;
    (*(v102 + 32))(v89 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v88, v80, v99);
    v28 = v126;
  }

  while (v126 != v81);
  return v106;
}

uint64_t sub_10001CF60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018A64(a1, a2);
  }

  return a1;
}

uint64_t sub_10001CF74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 136);
  if (v6 >> 60 != 15)
  {
    sub_100018ACC(*(v0 + 128), v6);
  }

  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10001CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v16 = *(v13 + 24);
  v32 = *(v13 + 16);
  v17 = *(v13 + 32);
  v18 = *(v13 + 40);
  v19 = *(v13 + 48);
  v20 = *(v13 + 56);
  v21 = *(v13 + 64);
  v22 = *(v13 + 65);
  v23 = *(v13 + 72);
  v24 = *(v13 + 80);
  v30 = *(v13 + 104);
  v31 = *(v13 + 88);
  v28 = *(v13 + 136);
  v29 = *(v13 + 120);
  v25 = *(v13 + 152);
  v26 = swift_task_alloc();
  *(v14 + 16) = v26;
  *v26 = v14;
  v26[1] = sub_10000EC9C;

  return sub_10001B368(a1, v23, v24, v32, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13);
}

unint64_t sub_10001D13C()
{
  result = qword_1000339B8;
  if (!qword_1000339B8)
  {
    sub_10001DC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000339B8);
  }

  return result;
}

uint64_t sub_10001D194()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC9C;

  return sub_10001ACE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10001D29C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D2D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100018D60;

  return sub_100016388(a1, v5);
}

uint64_t sub_10001D3A4()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_1000339C8);
  sub_100018370(v0, qword_1000339C8);
  return sub_10001DDB0();
}

uint64_t sub_10001D450(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_10001DE00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001DDF0())
  {
    if (a2())
    {
      v9 = sub_10001E160();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return v9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100033458 != -1)
    {
      swift_once();
    }

    v14 = sub_10001DDC0();
    sub_100018370(v14, qword_1000339C8);
    (*(v5 + 16))(v8, a1, v4);
    v15 = sub_10001DDA0();
    v16 = sub_10001E2B0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = sub_10001DDE0();
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_100016BAC(v19, v21, &v24);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not convert endpoint to nw_endpoint %s", v17, 0xCu);
      sub_1000183A8(v18);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return 0;
}

uint64_t sub_10001D6F4()
{
  v0 = sub_10001DDC0();
  sub_100018454(v0, qword_100033B28);
  sub_100018370(v0, qword_100033B28);
  return sub_10001DDB0();
}

void sub_10001D794(char a1, NSObject *a2)
{
  v2 = "yes";
  if ((a1 & 1) == 0)
  {
    v2 = "no";
  }

  v3 = 136315394;
  v4 = "no";
  v5 = 2080;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Should show magic head: isR1Device: %s, defaultEnabled: %s", &v3, 0x16u);
}

void sub_10001D998()
{
  sub_10000B0B4();
  sub_10000B0C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DA08()
{
  sub_10000B0B4();
  sub_10000B0C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DA78()
{
  sub_10000B0B4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to convert NSAttributedString [%@] to HTML due to: %@", v2, 0x16u);
}

void sub_10001DAFC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_10000B0B4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load item for type identifier with error %@", v4, 0xCu);
}