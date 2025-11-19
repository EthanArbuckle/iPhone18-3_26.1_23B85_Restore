__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + (v9 << 6));
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v37 = *v12;
        v38 = v14;
        v15 = v12[3];
        v39 = v12[2];
        v40 = v15;
        v16 = *(a1 + 16);
        v36[0] = *a1;
        v36[1] = v16;
        v17 = *(a1 + 48);
        v36[2] = *(a1 + 32);
        v36[3] = v17;
        if (v13(&v37, v36))
        {
          v19 = v12[2];
          v18 = v12[3];
          v21 = *v12;
          v20 = v12[1];
          v22 = *(a1 + 48);
          v24 = *a1;
          v23 = *(a1 + 16);
          v12[2] = *(a1 + 32);
          v12[3] = v22;
          *v12 = v24;
          v12[1] = v23;
          *a1 = v21;
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *(a1 + 48) = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v25 = a2 - 4;
      do
      {
        v26 = *(a1 + 16);
        v37 = *a1;
        v38 = v26;
        v27 = *(a1 + 48);
        v39 = *(a1 + 32);
        v40 = v27;
        v28 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a4, v8);
        if (v25 == v28)
        {
          *v28 = v37;
          v28[1] = v38;
          v28[2] = v39;
          v28[3] = v40;
        }

        else
        {
          v29 = *v25;
          v30 = v25[1];
          v31 = v25[3];
          v28[2] = v25[2];
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v32 = v38;
          *v25 = v37;
          v25[1] = v32;
          v33 = v40;
          v25[2] = v39;
          v25[3] = v33;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, &v28[4], a4, (&v28[4] - a1) >> 6);
        }

        v25 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v56 = v4;
    v57 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3)
      {
        v16 = *a2;
        v17 = v14[1];
        v52 = *v14;
        v53 = v17;
        v18 = v14[3];
        v54 = v14[2];
        v55 = v18;
        v19 = v14[5];
        v48 = v14[4];
        v49 = v19;
        v20 = v14[7];
        v50 = v14[6];
        v51 = v20;
        if (v16(&v52, &v48))
        {
          v14 += 4;
          v13 = v15;
        }
      }

      v21 = *a2;
      v22 = v14[1];
      v52 = *v14;
      v53 = v22;
      v23 = v14[3];
      v54 = v14[2];
      v55 = v23;
      v24 = v7[1];
      v48 = *v7;
      v49 = v24;
      v25 = v7[3];
      v50 = v7[2];
      v51 = v25;
      if ((v21(&v52, &v48) & 1) == 0)
      {
        v27 = v7[1];
        v52 = *v7;
        v53 = v27;
        v28 = v7[3];
        v54 = v7[2];
        v55 = v28;
        do
        {
          v29 = v14;
          v30 = *v14;
          v31 = v14[1];
          v32 = v14[3];
          v7[2] = v14[2];
          v7[3] = v32;
          *v7 = v30;
          v7[1] = v31;
          if (v9 < v13)
          {
            break;
          }

          v33 = (2 * v13) | 1;
          v14 = (a1 + (v33 << 6));
          if (2 * v13 + 2 < a3)
          {
            v34 = *a2;
            v35 = v14[1];
            v48 = *v14;
            v49 = v35;
            v36 = v14[3];
            v50 = v14[2];
            v51 = v36;
            v37 = v14[5];
            v44 = v14[4];
            v45 = v37;
            v38 = v14[7];
            v46 = v14[6];
            v47 = v38;
            if (v34(&v48, &v44))
            {
              v14 += 4;
              v33 = 2 * v13 + 2;
            }
          }

          v39 = *a2;
          v40 = v14[1];
          v48 = *v14;
          v49 = v40;
          v41 = v14[3];
          v50 = v14[2];
          v51 = v41;
          v44 = v52;
          v45 = v53;
          v46 = v54;
          v47 = v55;
          v7 = v29;
          v13 = v33;
        }

        while (!v39(&v48, &v44));
        result = v52;
        v42 = v53;
        v43 = v55;
        v29[2] = v54;
        v29[3] = v43;
        *v29 = result;
        v29[1] = v42;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v15 = v8[7];
      v25[2] = v8[6];
      v25[3] = v15;
      v25[0] = v13;
      v25[1] = v14;
      v16 = v8 + 8;
      v17 = v8[8];
      v18 = v8[9];
      v19 = v8[11];
      v24[2] = v8[10];
      v24[3] = v19;
      v24[0] = v17;
      v24[1] = v18;
      if (v12(v25, v24))
      {
        v9 = v16;
        v10 = v11;
      }
    }

    v20 = *v9;
    v21 = v9[1];
    v22 = v9[3];
    a1[2] = v9[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v40 = v4;
    v41 = v5;
    v10 = *a3;
    v11 = v6 >> 1;
    v12 = (a1 + (v6 >> 1 << 6));
    v13 = v12[1];
    v36 = *v12;
    v37 = v13;
    v14 = v12[3];
    v38 = v12[2];
    v39 = v14;
    v15 = *(a2 - 48);
    v32 = *(a2 - 64);
    v33 = v15;
    v16 = *(a2 - 16);
    v34 = *(a2 - 32);
    v35 = v16;
    if (v10(&v36, &v32))
    {
      v18 = (a2 - 64);
      v19 = *(a2 - 48);
      v36 = *(a2 - 64);
      v37 = v19;
      v20 = *(a2 - 16);
      v38 = *(a2 - 32);
      v39 = v20;
      do
      {
        v21 = v12;
        v22 = *v12;
        v23 = v12[1];
        v24 = v12[3];
        v18[2] = v12[2];
        v18[3] = v24;
        *v18 = v22;
        v18[1] = v23;
        if (!v11)
        {
          break;
        }

        v25 = *a3;
        v11 = (v11 - 1) >> 1;
        v12 = (a1 + (v11 << 6));
        v26 = v12[1];
        v32 = *v12;
        v33 = v26;
        v27 = v12[3];
        v34 = v12[2];
        v35 = v27;
        v31[0] = v36;
        v31[1] = v37;
        v31[2] = v38;
        v31[3] = v39;
        v28 = v25(&v32, v31);
        v18 = v21;
      }

      while ((v28 & 1) != 0);
      v29 = v37;
      *v21 = v36;
      v21[1] = v29;
      result = *&v38;
      v30 = v39;
      v21[2] = v38;
      v21[3] = v30;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_215E12414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SKUICardElementTypeForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUICardElementTypeForString_cold_1();
  }

  if ([v1 isEqualToString:@"activity"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"billboard"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"programmed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E20DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E23D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SKUIAccountsFramework()
{
  if (SKUIAccountsFramework_sOnce != -1)
  {
    SKUIAccountsFramework_cold_1();
  }

  return SKUIAccountsFramework_sHandle;
}

void *__SKUIAccountsFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 1);
  SKUIAccountsFramework_sHandle = result;
  return result;
}

uint64_t SKUIAccountsUIFramework()
{
  if (SKUIAccountsUIFramework_sOnce != -1)
  {
    SKUIAccountsUIFramework_cold_1();
  }

  return SKUIAccountsUIFramework_sHandle;
}

void *__SKUIAccountsUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  SKUIAccountsUIFramework_sHandle = result;
  return result;
}

uint64_t SKUIAppleAccountFramework()
{
  if (SKUIAppleAccountFramework_sOnce != -1)
  {
    SKUIAppleAccountFramework_cold_1();
  }

  return SKUIAppleAccountFramework_sHandle;
}

void *__SKUIAppleAccountFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 1);
  SKUIAppleAccountFramework_sHandle = result;
  return result;
}

uint64_t SKUIAppleAccountUIFramework()
{
  if (SKUIAppleAccountUIFramework_sOnce != -1)
  {
    SKUIAppleAccountUIFramework_cold_1();
  }

  return SKUIAppleAccountUIFramework_sHandle;
}

void *__SKUIAppleAccountUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccountUI.framework/AppleAccountUI", 1);
  SKUIAppleAccountUIFramework_sHandle = result;
  return result;
}

uint64_t SKUIAskPermissionFramework()
{
  if (SKUIAskPermissionFramework_sOnce != -1)
  {
    SKUIAskPermissionFramework_cold_1();
  }

  return SKUIAskPermissionFramework_sHandle;
}

void *__SKUIAskPermissionFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AskPermission.framework/AskPermission", 1);
  SKUIAskPermissionFramework_sHandle = result;
  return result;
}

uint64_t SKUIAudioToolboxFramework()
{
  if (SKUIAudioToolboxFramework_sOnce != -1)
  {
    SKUIAudioToolboxFramework_cold_1();
  }

  return SKUIAudioToolboxFramework_sHandle;
}

void *__SKUIAudioToolboxFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
  SKUIAudioToolboxFramework_sHandle = result;
  return result;
}

uint64_t SKUIAVFoundationFramework()
{
  if (SKUIAVFoundationFramework_sOnce != -1)
  {
    SKUIAVFoundationFramework_cold_1();
  }

  return SKUIAVFoundationFramework_sHandle;
}

void *__SKUIAVFoundationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 1);
  SKUIAVFoundationFramework_sHandle = result;
  return result;
}

uint64_t SKUIContactsAutocompleteUIFramework()
{
  if (SKUIContactsAutocompleteUIFramework_sOnce != -1)
  {
    SKUIContactsAutocompleteUIFramework_cold_1();
  }

  return SKUIContactsAutocompleteUIFramework_sHandle;
}

void *__SKUIContactsAutocompleteUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ContactsAutocompleteUI.framework/ContactsAutocompleteUI", 1);
  SKUIContactsAutocompleteUIFramework_sHandle = result;
  return result;
}

uint64_t SKUIContactsFramework()
{
  if (SKUIContactsFramework_sOnce != -1)
  {
    SKUIContactsFramework_cold_1();
  }

  return SKUIContactsFramework_sHandle;
}

void *__SKUIContactsFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 1);
  SKUIContactsFramework_sHandle = result;
  return result;
}

uint64_t SKUIContactsUIFramework()
{
  if (SKUIContactsUIFramework_sOnce != -1)
  {
    SKUIContactsUIFramework_cold_1();
  }

  return SKUIContactsUIFramework_sHandle;
}

void *__SKUIContactsUIFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 1);
  SKUIContactsUIFramework_sHandle = result;
  return result;
}

uint64_t SKUICoreImageFramework()
{
  if (SKUICoreImageFramework_sOnce != -1)
  {
    SKUICoreImageFramework_cold_1();
  }

  return SKUICoreImageFramework_sHandle;
}

void *__SKUICoreImageFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreImage.framework/CoreImage", 1);
  SKUICoreImageFramework_sHandle = result;
  return result;
}

uint64_t SKUICoreTelephonyFramework()
{
  if (SKUICoreTelephonyFramework_sOnce != -1)
  {
    SKUICoreTelephonyFramework_cold_1();
  }

  return SKUICoreTelephonyFramework_sHandle;
}

void *__SKUICoreTelephonyFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 1);
  SKUICoreTelephonyFramework_sHandle = result;
  return result;
}

uint64_t SKUIFamilyCircleFramework()
{
  if (SKUIFamilyCircleFramework_sOnce != -1)
  {
    SKUIFamilyCircleFramework_cold_1();
  }

  return SKUIFamilyCircleFramework_sHandle;
}

void *__SKUIFamilyCircleFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircle.framework/FamilyCircle", 1);
  SKUIFamilyCircleFramework_sHandle = result;
  return result;
}

uint64_t SKUIIAdFramework()
{
  if (SKUIIAdFramework_sOnce != -1)
  {
    SKUIIAdFramework_cold_1();
  }

  return SKUIIAdFramework_sHandle;
}

void *__SKUIIAdFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iAd.framework/iAd", 1);
  SKUIIAdFramework_sHandle = result;
  return result;
}

uint64_t SKUIMediaPlayerFramework()
{
  if (SKUIMediaPlayerFramework_sOnce != -1)
  {
    SKUIMediaPlayerFramework_cold_1();
  }

  return SKUIMediaPlayerFramework_sHandle;
}

void *__SKUIMediaPlayerFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MediaPlayer.framework/MediaPlayer", 1);
  SKUIMediaPlayerFramework_sHandle = result;
  return result;
}

uint64_t SKUIMediaPlayerUIFramework()
{
  if (SKUIMediaPlayerUIFramework_sOnce != -1)
  {
    SKUIMediaPlayerUIFramework_cold_1();
  }

  return SKUIMediaPlayerUIFramework_sHandle;
}

void *__SKUIMediaPlayerUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MediaPlayerUI.framework/MediaPlayerUI", 1);
  SKUIMediaPlayerUIFramework_sHandle = result;
  return result;
}

uint64_t SKUIMobileCoreServicesFramework()
{
  if (SKUIMobileCoreServicesFramework_sOnce != -1)
  {
    SKUIMobileCoreServicesFramework_cold_1();
  }

  return SKUIMobileCoreServicesFramework_sHandle;
}

void *__SKUIMobileCoreServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 1);
  SKUIMobileCoreServicesFramework_sHandle = result;
  return result;
}

uint64_t SKUIMPUFoundationFramework()
{
  if (SKUIMPUFoundationFramework_sOnce != -1)
  {
    SKUIMPUFoundationFramework_cold_1();
  }

  return SKUIMPUFoundationFramework_sHandle;
}

void *__SKUIMPUFoundationFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MPUFoundation.framework/MPUFoundation", 1);
  SKUIMPUFoundationFramework_sHandle = result;
  return result;
}

uint64_t SKUIPassKitCoreFramework()
{
  if (SKUIPassKitCoreFramework_sOnce != -1)
  {
    SKUIPassKitCoreFramework_cold_1();
  }

  return SKUIPassKitCoreFramework_sHandle;
}

void *__SKUIPassKitCoreFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKitCore.framework/PassKitCore", 1);
  SKUIPassKitCoreFramework_sHandle = result;
  return result;
}

uint64_t SKUIPassKitUIFramework()
{
  if (SKUIPassKitUIFramework_sOnce != -1)
  {
    SKUIPassKitUIFramework_cold_1();
  }

  return SKUIPassKitUIFramework_sHandle;
}

void *__SKUIPassKitUIFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKitUI.framework/PassKitUI", 1);
  SKUIPassKitUIFramework_sHandle = result;
  return result;
}

uint64_t SKUIPhysicsKitFramework()
{
  if (SKUIPhysicsKitFramework_sOnce != -1)
  {
    SKUIPhysicsKitFramework_cold_1();
  }

  return SKUIPhysicsKitFramework_sHandle;
}

void *__SKUIPhysicsKitFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhysicsKit.framework/PhysicsKit", 1);
  SKUIPhysicsKitFramework_sHandle = result;
  return result;
}

uint64_t SKUISocialFramework()
{
  if (SKUISocialFramework_sOnce != -1)
  {
    SKUISocialFramework_cold_1();
  }

  return SKUISocialFramework_sHandle;
}

void *__SKUISocialFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Social.framework/Social", 1);
  SKUISocialFramework_sHandle = result;
  return result;
}

uint64_t SKUISpringBoardServicesFramework()
{
  if (SKUISpringBoardServicesFramework_sOnce != -1)
  {
    SKUISpringBoardServicesFramework_cold_1();
  }

  return SKUISpringBoardServicesFramework_sHandle;
}

void *__SKUISpringBoardServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 1);
  SKUISpringBoardServicesFramework_sHandle = result;
  return result;
}

uint64_t SKUIWebCoreFramework()
{
  if (SKUIWebCoreFramework_sOnce != -1)
  {
    SKUIWebCoreFramework_cold_1();
  }

  return SKUIWebCoreFramework_sHandle;
}

void *__SKUIWebCoreFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WebCore.framework/WebCore", 1);
  SKUIWebCoreFramework_sHandle = result;
  return result;
}

uint64_t SKUIImageIOFramework()
{
  if (SKUIImageIOFramework_sOnce != -1)
  {
    SKUIImageIOFramework_cold_1();
  }

  return SKUIImageIOFramework_sHandle;
}

void *__SKUIImageIOFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 1);
  SKUIImageIOFramework_sHandle = result;
  return result;
}

uint64_t SKUICoreLocationFramework()
{
  if (SKUICoreLocationFramework_sOnce != -1)
  {
    SKUICoreLocationFramework_cold_1();
  }

  return SKUICoreLocationFramework_sHandle;
}

void *__SKUICoreLocationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 1);
  SKUICoreLocationFramework_sHandle = result;
  return result;
}

uint64_t SKUICoreMediaFramework()
{
  if (SKUICoreMediaFramework_sOnce != -1)
  {
    SKUICoreMediaFramework_cold_1();
  }

  return SKUICoreMediaFramework_sHandle;
}

void *__SKUICoreMediaFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 1);
  SKUICoreMediaFramework_sHandle = result;
  return result;
}

uint64_t SKUICelestialFramework()
{
  if (SKUICelestialFramework_sOnce != -1)
  {
    SKUICelestialFramework_cold_1();
  }

  return SKUICelestialFramework_sHandle;
}

void *__SKUICelestialFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Celestial.framework/Celestial", 1);
  SKUICelestialFramework_sHandle = result;
  return result;
}

uint64_t SKUIVideoSubscriberAccountFramework()
{
  if (SKUIVideoSubscriberAccountFramework_sOnce != -1)
  {
    SKUIVideoSubscriberAccountFramework_cold_1();
  }

  return SKUIVideoSubscriberAccountFramework_sHandle;
}

void *__SKUIVideoSubscriberAccountFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/VideoSubscriberAccount.framework/VideoSubscriberAccount", 1);
  SKUIVideoSubscriberAccountFramework_sHandle = result;
  return result;
}

void *SKUIWeakLinkedSymbolForString(char *__symbol, void *__handle)
{
  if (__handle)
  {
    return dlsym(__handle, __symbol);
  }

  else
  {
    return 0;
  }
}

id SKUIWeakLinkedClassForString(NSString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = NSClassFromString(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ITColor::ITColor(ITColor *this)
{
  this->var0 = 0.0;
  this->var1 = 0.0;
  this->var2 = 0.0;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3, double a4)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3, double a4, double a5)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = a5;
}

void ITColor::ITColor(ITColor *this, CGColorRef color)
{
  this->var0 = 0.0;
  this->var1 = 0.0;
  this->var2 = 0.0;
  this->var3 = 1.0;
  Components = CGColorGetComponents(color);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents > 2)
  {
    if (NumberOfComponents != 3)
    {
      if (NumberOfComponents != 4)
      {
        goto LABEL_10;
      }

      this->var3 = Components[3];
    }

    this->var0 = *Components;
    this->var1 = Components[1];
    this->var2 = Components[2];
    goto LABEL_10;
  }

  if (NumberOfComponents == 1)
  {
    goto LABEL_5;
  }

  if (NumberOfComponents == 2)
  {
    this->var3 = Components[1];
LABEL_5:
    v6 = *Components;
    this->var1 = *Components;
    this->var2 = v6;
    this->var0 = v6;
  }

LABEL_10:
  ColorSpace = CGColorGetColorSpace(color);
  SRGB = CGColorSpaceGetSRGB();
  this->var0 = ITColor::ConvertColorSpace(this, ColorSpace, SRGB);
  this->var1 = v9;
  this->var2 = v10;
  this->var3 = v11;
}

double ITColor::ConvertColorSpace(ITColor *this, CGColorSpaceRef space, CGColorSpace *cf2)
{
  v16 = *MEMORY[0x277D85DE8];
  data = 0;
  if (!space || !cf2 || !CFEqual(space, cf2))
  {
    v7 = *&this->var2;
    *components = *&this->var0;
    v15 = v7;
    v8 = CGColorCreate(space, components);
    if (v8)
    {
      v9 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, cf2, 0x4002u);
      v10 = v9;
      if (v9)
      {
        CGContextSetFillColorWithColor(v9, v8);
        v17.origin.x = 0.0;
        v17.origin.y = 0.0;
        v17.size.width = 1.0;
        v17.size.height = 1.0;
        CGContextFillRect(v10, v17);
        LOBYTE(v11) = BYTE1(data);
        v6 = v11 / 255.0;
LABEL_10:
        CGColorRelease(v8);
        CGContextRelease(v10);
        return v6;
      }
    }

    else
    {
      v10 = 0;
    }

    v6 = 0.0;
    goto LABEL_10;
  }

  return this->var0;
}

void ITColor::ITColor(ITColor *this, const RGBColor *a2, double a3, double a4, double a5)
{
  LOWORD(a3) = a2->red;
  v5 = *&a3 / 65535.0;
  LOWORD(a5) = a2->green;
  this->var0 = v5;
  this->var1 = *&a5 / 65535.0;
  LOWORD(v5) = a2->blue;
  this->var2 = *&v5 / 65535.0;
  this->var3 = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3)
{
  this->var0 = a2;
  this->var1 = a2;
  this->var2 = a2;
  this->var3 = a3;
}

unint64_t ITColor::operator RGBColor(uint64_t a1)
{
  v1 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(a1 + 8), vdupq_n_s64(0x40EFFFE000000000uLL))));
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  v3 = vshlq_u64(v2, xmmword_215F401E0);
  return vorrq_s8(vdupq_laneq_s64(v3, 1), v3).u64[0] | (*a1 * 65535.0);
}

CGColorRef ITColor::CreateCGColor(ITColor *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *&this->var2;
  v4[0] = *&this->var0;
  v4[1] = v1;
  SRGB = CGColorSpaceGetSRGB();
  return CGColorCreate(SRGB, v4);
}

double ITColor::CreateFromHSVColor(double *a1)
{
  v4 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  HSV2RGB(*a1, a1[1], a1[2], &v4, &v3, &v2);
  return v4;
}

double *HSV2RGB(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0.0;
  }

  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v6 == 0.0)
  {
    *result = v7;
    *a5 = v7;
    goto LABEL_13;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v8 = a1 * 6.0;
  v9 = v8;
  v10 = v6 * v7 * (v8 - v8);
  v11 = v7 - v6 * v7;
  v12 = v11 + v10;
  if (v11 + v10 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v7 - v10;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v11;
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v7;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v17 = v15;
      if (v9 != 4)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v9)
  {
    v17 = v15;
    if (v9 != 1)
    {
LABEL_34:
      v17 = v16;
    }
  }

  *result = v17;
  v18 = v7;
  if ((v9 - 1) >= 2)
  {
    v19 = v9 == 3 || v9 == 0;
    v18 = v15;
    if (!v19)
    {
      v18 = v16;
    }
  }

  *a5 = v18;
  if ((v9 - 3) >= 2)
  {
    v20 = v9 == 5 || v9 == 2;
    v7 = v15;
    if (!v20)
    {
      v7 = v16;
    }
  }

LABEL_13:
  *a6 = v7;
  return result;
}

double ITColor::CreateFromHSVDoubles(ITColor *this, double a2, double a3, double a4)
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  HSV2RGB(a2, a3, a4, &v7, &v6, &v5);
  return v7;
}

double *RGB2HSV(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  v6 = 0.0;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a2 >= 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a3 >= 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0.0;
  }

  if (a2 <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  if (a2 >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v7 <= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v7;
  }

  if (v7 >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= v7)
  {
    v8 = v10;
  }

  if (a2 >= v7)
  {
    v9 = v11;
  }

  if (v8 <= 1.0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1.0;
  }

  *a6 = v12;
  if (v8 == 0.0)
  {
    *a5 = 0.0;
  }

  else
  {
    v13 = v8 - v9;
    v14 = v13 / v8;
    if (v13 / v8 <= 1.0)
    {
      *a5 = v14;
      if (v14 == 0.0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *a5 = 1.0;
    }

    if (v13 == 0.0)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v6 = (v8 - a1) / v13;
      v15 = (v8 - a2) / v13;
      v16 = (v8 - v7) / v13;
    }

    if (a1 == v8)
    {
      v17 = v16 - v15;
    }

    else if (a2 == v8)
    {
      v17 = v6 + 2.0 - v16;
    }

    else
    {
      v17 = v15 + 4.0 - v6;
    }

    v18 = v17 / 6.0;
    if (v18 < 0.0)
    {
      v18 = v18 + 1.0;
    }

    if (v18 <= 1.0)
    {
      v6 = v18;
    }

    else
    {
      v6 = 1.0;
    }
  }

LABEL_51:
  *result = v6;
  return result;
}

void ITColor::GetLuminance(ITColor *this)
{
  v1 = 0;
  v6 = *MEMORY[0x277D85DE8];
  v4 = *&this->var0;
  var2 = this->var2;
  do
  {
    v2 = *(&v4 + v1);
    if (v2 <= 0.0392800011)
    {
      v3 = v2 / 12.9200001;
    }

    else
    {
      v3 = pow((v2 + 0.0549999997) / 1.05499995, 2.4);
    }

    *(&v4 + v1) = v3;
    v1 += 8;
  }

  while (v1 != 24);
}

double ITColor::GetContrastWithColor(ITColor *this, ITColor *a2)
{
  ITColor::GetLuminance(a2);
  v4 = v3;
  ITColor::GetLuminance(this);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 > v4)
  {
    v5 = v4;
  }

  return (v6 + 0.0500000007) / (v5 + 0.0500000007);
}

double ITColor::GetContrastWithLuminance(ITColor *this, double a2)
{
  ITColor::GetLuminance(this);
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a2)
  {
    v3 = a2;
  }

  return (v4 + 0.0500000007) / (v3 + 0.0500000007);
}

double ITColor::GetHueDistanceFromColor(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = vabdd_f64(*a1, *a2);
  if (result > 0.5)
  {
    result = v3 + 1.0 - v2;
    if (v2 <= v3)
    {
      return v2 + 1.0 - v3;
    }
  }

  return result;
}

BOOL ITColor::IsCloseToColor(ITColor *this, ITColor *a2, double a3)
{
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    return 0;
  }

  HSVColor = ITColor::GetHSVColor(this);
  v8 = v7;
  v10 = v9;
  v11 = ITColor::GetHSVColor(a2);
  if (vabdd_f64(v8, v13) > a3 || vabdd_f64(v10, v12) > a3)
  {
    return 0;
  }

  if (vabdd_f64(HSVColor, v11) <= a3)
  {
    return 1;
  }

  v15 = HSVColor + 1.0;
  if (HSVColor >= a3)
  {
    v15 = HSVColor;
  }

  if (v11 < a3)
  {
    v11 = v11 + 1.0;
  }

  return vabdd_f64(v15, v11) <= a3;
}

double ITColor::CreateBlendedColorWithFraction(ITColor *this, double a2, ITColor a3)
{
  if (a2 < 1.0)
  {
    if (a2 <= 0.0)
    {
      a3.var0 = this->var0;
    }

    else
    {
      a3.var0 = (1.0 - a2) * this->var0 + a3.var0 * a2;
    }
  }

  return a3.var0;
}

void sub_215E28A58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215E28ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E29B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E2A080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E2AB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E32D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E333F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_215E339CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E35470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E37B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E37CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E37F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKUIMetricsMediaEventTypeForPlaybackState(unint64_t a1)
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (has_internal_content)
      {
        SKUIMetricsMediaEventTypeForPlaybackState_cold_1(has_internal_content, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if (a1 <= 2)
  {
    has_internal_content = **(&unk_2781FFF58 + a1);
  }

  return has_internal_content;
}

void sub_215E3B648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E3C03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E3DA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E3DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E483BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E493B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E49654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SKUIIndexBarEntryDescriptorForIndexBarEntryViewElement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIIndexBarEntryDescriptorForIndexBarEntryViewElement_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v4 style];
  v14 = [v4 elementType];
  if (v14 == 49)
  {
    v21 = [v4 resourceName];
    v16 = v21;
    if (v21)
    {
      v17 = SKUIImageWithResourceName(v21);
      if (!v17)
      {
        v20 = 0;
        goto LABEL_15;
      }

      v22 = [SKUIIndexBarEntryDescriptor entryDescriptorWithImage:v17];
    }

    else
    {
      v23 = [SKUIArtwork alloc];
      v24 = [v4 URL];
      [v4 size];
      v17 = [(SKUIArtwork *)v23 initWithURL:v24 size:?];

      v22 = [SKUIIndexBarEntryDescriptor entryDescriptorWithArtwork:v17];
    }

    v20 = v22;
  }

  else
  {
    if (v14 != 138)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v15 = [v4 style];
    v16 = SKUIViewElementPlainColorWithStyle(v15, 0);

    v17 = [v4 text];
    v18 = SKUIViewElementFontWithStyle(v13);
    v19 = [(SKUIArtwork *)v17 attributedStringWithDefaultFont:v18 foregroundColor:v16];
    v20 = [SKUIIndexBarEntryDescriptor entryDescriptorWithAttributedString:v19];
  }

LABEL_15:

LABEL_16:
  [v20 setVisibilityPriority:{objc_msgSend(v3, "visibilityPriority")}];

  return v20;
}

void sub_215E4B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E4B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E4BD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__90(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215E4D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_215E4DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_215E4F06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t storeShouldReverseLayoutDirection()
{
  if (didSetAtLeastOnce != -1)
  {
    storeShouldReverseLayoutDirection_cold_1();
  }

  return shouldFlipForRTL;
}

void __storeShouldReverseLayoutDirection_block_invoke()
{
  v0 = +[SKUIClientContext defaultContext];
  _SKUISetShouldReverseLayoutDirectionWithContext(v0);
}

void _SKUISetShouldReverseLayoutDirectionWithContext(void *a1)
{
  v16 = a1;
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"SKForceRightToLeftWritingDirection"];

  if (v2)
  {
    shouldFlipForRTL = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKeyedSubscript:@"SKRespectClientUserInterfaceLayoutDirection"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [MEMORY[0x277D75128] sharedApplication];
      v8 = [v7 keyWindow];
      v9 = [v8 semanticContentAttribute];

      shouldFlipForRTL = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:v9] == 1;
    }

    else
    {
      v10 = MEMORY[0x277CBEAF8];
      v11 = [v16 valueForConfigurationKey:@"locale"];
      v12 = [v10 localeWithLocaleIdentifier:v11];

      v13 = MEMORY[0x277D74248];
      v14 = [v12 objectForKey:*MEMORY[0x277CBE6C8]];
      v15 = [v13 defaultWritingDirectionForLanguage:v14];

      if (v15 == 1)
      {
        shouldFlipForRTL = 1;
      }
    }
  }
}

uint64_t storeSemanticContentAttribute()
{
  if (didSetAtLeastOnce != -1)
  {
    storeShouldReverseLayoutDirection_cold_1();
  }

  if (shouldFlipForRTL)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void SKUISetShouldReverseLayoutDirectionWithContext(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUISetShouldReverseLayoutDirectionWithContext_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if (didSetAtLeastOnce != -1)
  {
    SKUISetShouldReverseLayoutDirectionWithContext_cold_2();
  }

  _SKUISetShouldReverseLayoutDirectionWithContext(v1);
}

void SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        SKUIRectByApplyingUserInterfaceLayoutDirectionInRect_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  _SKUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore(0, a1, a2, a3, a4, a5, a6, a7, a8);
}

double _SKUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (didSetAtLeastOnce != -1)
    {
      storeShouldReverseLayoutDirection_cold_1();
    }

    if ((shouldFlipForRTL & 1) == 0)
    {
      return a2;
    }

LABEL_9:
    v21.origin.x = a6;
    v21.origin.y = a7;
    v21.size.width = a8;
    v21.size.height = a9;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    v18 = MaxX - CGRectGetMinX(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    v19 = v18 - CGRectGetWidth(v23);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetMinY(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetWidth(v25);
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    CGRectGetHeight(v26);
    return v19;
  }

  if (shouldReverseLayoutDirection_onceToken != -1)
  {
    _SKUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore_cold_1();
  }

  if (shouldReverseLayoutDirection_shouldFlipForRTL == 1)
  {
    goto LABEL_9;
  }

  return a2;
}

void SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  _SKUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore(1, a1, a2, a3, a4, a5, a6, a7, a8);
}

void SKUIRectByRemovingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIRectByRemovingUserInterfaceLayoutDirectionInRect_cold_1();
  }

  _SKUIRectByRemovingUserInterfaceLayoutDirectionInRectDependendOnStore(0, a1, a2, a3, a4, a5, a6, a7, a8);
}

double _SKUIRectByRemovingUserInterfaceLayoutDirectionInRectDependendOnStore(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (didSetAtLeastOnce != -1)
    {
      storeShouldReverseLayoutDirection_cold_1();
    }

    if ((shouldFlipForRTL & 1) == 0)
    {
      return a2;
    }

LABEL_9:
    v20.origin.x = a6;
    v20.origin.y = a7;
    v20.size.width = a8;
    v20.size.height = a9;
    MaxX = CGRectGetMaxX(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    v18 = MaxX - CGRectGetMaxX(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetMinY(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetWidth(v23);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetHeight(v24);
    return v18;
  }

  if (shouldReverseLayoutDirection_onceToken != -1)
  {
    _SKUIRectByApplyingUserInterfaceLayoutDirectionDependentOnStore_cold_1();
  }

  if (shouldReverseLayoutDirection_shouldFlipForRTL == 1)
  {
    goto LABEL_9;
  }

  return a2;
}

uint64_t __shouldReverseLayoutDirection_block_invoke()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  v2 = [v1 semanticContentAttribute];

  result = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:v2];
  if (result == 1)
  {
    shouldReverseLayoutDirection_shouldFlipForRTL = 1;
  }

  return result;
}

void sub_215E524D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double SKUISpacePageComponentHeightForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUISpacePageComponentHeightForString_cold_1();
  }

  v2 = 1.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 5.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 7.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 10.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          v2 = 25.0;
          if (([v1 isEqualToString:@"XL"] & 1) == 0)
          {
            if ([v1 isEqualToString:@"XXL"])
            {
              v2 = 100.0;
            }

            else
            {
              [v1 floatValue];
              v2 = v3;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_215E568E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E56DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E579A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_215E57DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_215E59A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double SKUIBrickItemSize()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 210.0;
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 bounds];
    v5 = v4;

    if (v5 <= 375.0)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 bounds];
      v8 = v7;

      v2 = dbl_215F3F640[v8 > 320.0];
    }

    else
    {
      v2 = 175.0;
    }
  }

  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;

  return v2 * v11;
}

void sub_215E5C264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E5CCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_215E5ECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E67DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E682BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__96(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_215E69094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_215E69BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SKUIAttributedStringGetLineHeight(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    SKUIAttributedStringGetLineHeight_cold_1();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [v1 length];
  v3 = *MEMORY[0x277D740A8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SKUIAttributedStringGetLineHeight_block_invoke;
  v6[3] = &unk_2782004B8;
  v6[4] = &v7;
  [v1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_215E69FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SKUIAttributedStringGetLineHeight_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 _bodyLeading];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void SKUIGetLayoutProperties(uint64_t a1, uint64_t a2, void *a3, double *a4)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIGetLayoutProperties_cold_1();
  }

  if (a2 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = a1 + 24;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      if (*(v9 + 16))
      {
        v12 = v11 + v10;
        v13 = *v9;
        v11 = *(v9 + 8);
        v15 = *(v9 - 16);
        v14 = *(v9 - 8);
        *(*a3 + 8 * v8) = v12 - v14;
        v10 = v12 + v15 - v13 - v14;
      }

      v9 += 48;
      ++v8;
    }

    while (a2 != v8);
  }

  *a4 = v10;
}

double SKUIScaleSizeToFit(double a1, double a2, double a3, double a4)
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIScaleSizeToFit_cold_1();
  }

  v8 = a2 / a4;
  if (a1 / a3 < a2 / a4)
  {
    v8 = a1 / a3;
  }

  return ceil(a3 * v8);
}

void sub_215E6D0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E6D470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E6EA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E6F4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CGColorSpaceGetSRGB()
{
  if (CGColorSpaceGetSRGB::sOnceToken != -1)
  {
    CGColorSpaceGetSRGB_cold_1();
  }

  return CGColorSpaceGetSRGB::sSpace;
}

void __CGColorSpaceGetSRGB_block_invoke()
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v0 = getkColorSyncSRGBProfileSymbolLoc(void)::ptr;
  v15 = getkColorSyncSRGBProfileSymbolLoc(void)::ptr;
  if (!getkColorSyncSRGBProfileSymbolLoc(void)::ptr)
  {
    v1 = ColorSyncLibrary();
    v13[3] = dlsym(v1, "kColorSyncSRGBProfile");
    getkColorSyncSRGBProfileSymbolLoc(void)::ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    getCNComposeRecipientViewDidChangeNotification_cold_1();
LABEL_16:
    getCNComposeRecipientViewDidChangeNotification_cold_1();
    goto LABEL_17;
  }

  v2 = *v0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v3 = getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr;
  v15 = getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr;
  if (!getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr)
  {
    v4 = ColorSyncLibrary();
    v13[3] = dlsym(v4, "ColorSyncProfileCreateWithName");
    getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = v3(v2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v7 = getColorSyncProfileCopyDataSymbolLoc(void)::ptr;
  v15 = getColorSyncProfileCopyDataSymbolLoc(void)::ptr;
  if (!getColorSyncProfileCopyDataSymbolLoc(void)::ptr)
  {
    v8 = ColorSyncLibrary();
    v13[3] = dlsym(v8, "ColorSyncProfileCopyData");
    getColorSyncProfileCopyDataSymbolLoc(void)::ptr = v13[3];
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
LABEL_17:
    v11 = getCNComposeRecipientViewDidChangeNotification_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v9 = v7(v6, 0);
  if (v9)
  {
    v10 = v9;
    CGColorSpaceGetSRGB::sSpace = MEMORY[0x216076710]();
    CFRelease(v10);
  }

  CFRelease(v6);
}

void *___ZL42getColorSyncProfileCreateWithNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncProfileCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ColorSyncLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ColorSyncLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 0x40000000;
    v3[3] = ___ZL20ColorSyncLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_tmp_4;
    v3[5] = v3;
    v4 = xmmword_2782005F8;
    v5 = 0;
    ColorSyncLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = ColorSyncLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!ColorSyncLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL20ColorSyncLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ColorSyncLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL33getkColorSyncSRGBProfileSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncSRGBProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncSRGBProfileSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getColorSyncProfileCopyDataSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncProfileCopyData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncProfileCopyDataSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_215E70DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E7153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215E71AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_215E71E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_215E73604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E73BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SKUIProductPageFragmentWithURL(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUIProductPageFragmentWithURL_cold_1();
  }

  v2 = [v1 fragment];
  if ([v2 isEqualToString:@"reviews"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"related"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_215E77508(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_215E77DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E7D3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SKUIUserInterfaceIdiom(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = [v1 userInterfaceIdiomOverride], v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v4 userInterfaceIdiom];
  }

  return v3;
}

double SKUICompactThreshold()
{
  if (SKUICompactThreshold_onceToken != -1)
  {
    [SKUIClientContext tabBarStyleForWidth:];
  }

  return *&SKUICompactThreshold_threshold;
}

void __SKUICompactThreshold_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = -337121064;
  v7 = xmmword_215F40608;
  v6 = 450980336;
  v5 = xmmword_215F4061C;
  if (MGIsDeviceOneOfType())
  {
    goto LABEL_2;
  }

  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFDictionaryGetValue(v0, @"ArtworkDeviceSubType");
    if (v2)
    {
      v3 = v2;
      v4 = [v2 intValue];
      CFRelease(v1);

      if (v4 == 2436)
      {
LABEL_2:
        SKUICompactThreshold_threshold = 0x4089600000000000;
      }
    }

    else
    {
      CFRelease(v1);
    }
  }
}

id SKUIXEventSearchDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"search", @"type", 0}];
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKey:@"term"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:@"url"];
  }

  return v6;
}

void sub_215E83B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E83D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E8555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E85A38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E8631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E88400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E88BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E8A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E8FD6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215E90008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E902AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E90980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E90DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215E9201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E92470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E931B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E95880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215E9731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215E97650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E97978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

id SKUIVideoPreviewPlayPlayableVideoWithAsset(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        SKUIVideoPreviewPlayPlayableVideoWithAsset_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  v16 = v5;
  v17 = v6;
  v18 = v7;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v19)
      {
        SKUIVideoPreviewPlayPlayableVideoWithAsset_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  v27 = [v17 contentURL];
  if (!v27)
  {
    v38 = 0;
    goto LABEL_22;
  }

  v28 = SKUIAVFoundationFramework();
  v29 = *SKUIWeakLinkedSymbolForString("AVURLAssetInheritURIQueryComponentFromReferencingURIKey", v28);
  v67.value = v29;
  v68.value = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  if (v16 && [v16 kind])
  {
    v31 = SKUIAVFoundationFramework();
    v32 = *SKUIWeakLinkedSymbolForString("AVURLAssetAlternativeConfigurationOptionsKey", v31);
    v33 = SKUIAVFoundationFramework();
    v34 = *SKUIWeakLinkedSymbolForString("AVURLAssetAlternativeConfigurationServiceIdentifierKey", v33);
    v35 = [v16 kind];
    if (v35 == 1)
    {
      v64 = v18;
      v36 = v34;
      v37 = @"com.apple.itunesstore.movies.preview.cloud";
    }

    else
    {
      if (v35 != 2)
      {
LABEL_18:

        goto LABEL_19;
      }

      v64 = v18;
      v36 = v34;
      v37 = @"com.apple.itunesstore.tvshows.preview.cloud";
    }

    v39 = [v30 mutableCopy];
    v65 = v36;
    v66 = v37;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    [v39 setObject:v40 forKey:v32];
    v41 = [v39 copy];

    v34 = v36;
    v30 = v41;
    v18 = v64;
    goto LABEL_18;
  }

LABEL_19:
  v42 = SKUIAVFoundationFramework();
  v38 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Avurlasset.isa v42))];
  v43 = [SKUIStoreAssetResourceLoaderDelegate storeAssetResourceLoaderDelegateForPlayableAsset:v17 clientContext:v18];
  if (v43)
  {
    v44 = [v38 resourceLoader];
    SKUIStoreAssetResourceLoaderConfigureWithDelegate(v44, v43);
  }

LABEL_22:
  if (v38)
  {
    v45 = [objc_alloc(MEMORY[0x277CE65B0]) initWithAsset:v38];
    v46 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v45];
    v47 = objc_alloc_init(MEMORY[0x277CB85E0]);
    [v47 setPlayer:v46];
    [v47 setExitsFullScreenWhenPlaybackEnds:1];
    v48 = v46;
    v49 = v17;
    if (os_variant_has_internal_content())
    {
      if (_os_feature_enabled_impl())
      {
        v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
        if (v50)
        {
          SKUIVideoPreviewPlayPlayableVideoWithAsset_cold_3(v50, v51, v52, v53, v54, v55, v56, v57);
        }
      }
    }

    [v49 initialPlaybackTime];
    memset(&v68, 0, sizeof(v68));
    CMTimeMakeWithSeconds(&v68, v58, 1000000);
    v67 = v68;
    [v48 seekToTime:&v67];
    v59 = [MEMORY[0x277CCAB98] defaultCenter];
    [v59 postNotificationName:@"SKUIVideoPreviewDidStartNotification" object:0];

    v60 = [v49 storeItemIdentifier];
    SKUIVideoPreviewObservePlayer(v48, v60);
    v61 = [MEMORY[0x277D7FDA8] sessionManager];
    v62 = [v61 stopAllAudioPlayerSessions];

    [v48 play];
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

id SKUIVideoPreviewPlayPlayableAsset(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUIVideoPreviewPlayPlayableAsset_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = SKUIVideoPreviewPlayPlayableVideoWithAsset(0, v3, v4);

  return v13;
}

void SKUIVideoPreviewDismissOnEnterBackground(void *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUIVideoPreviewDismissOnEnterBackground_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = objc_getAssociatedObject(v1, "com.apple.StoreKitUI.MoviePlayer.BackgroundObserver");
  v11 = v10 == 0;

  if (v11)
  {
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SKUIVideoPreviewDismissOnEnterBackground_block_invoke;
    aBlock[3] = &unk_278200D40;
    objc_copyWeak(&v23, &location);
    v13 = _Block_copy(aBlock);
    v14 = [MEMORY[0x277D75128] sharedApplication];
    v15 = [MEMORY[0x277CCABD8] mainQueue];
    v16 = [v12 addObserverForName:*MEMORY[0x277D76660] object:v14 queue:v15 usingBlock:v13];

    v17 = [MEMORY[0x277CCABD8] mainQueue];
    v18 = [v12 addObserverForName:@"SKUIVideoPreviewDismissNotification" object:0 queue:v17 usingBlock:v13];

    v19 = [_SKUIVideoPreviewNotificationObserver alloc];
    v25[0] = v16;
    v25[1] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v21 = [(_SKUIVideoPreviewNotificationObserver *)v19 initWithObservers:v20];

    objc_setAssociatedObject(v1, "com.apple.StoreKitUI.MoviePlayer.BackgroundObserver", v21, 1);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void sub_215E98E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SKUIVideoPreviewDismissOnEnterBackground_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    object = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:0 completion:0];
    objc_setAssociatedObject(object, "com.apple.StoreKitUI.MoviePlayer.BackgroundObserver", 0, 1);
    WeakRetained = object;
  }
}

void SKUIVideoPreviewObservePlayer(void *a1, uint64_t a2)
{
  v3 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        SKUIVideoPreviewObservePlayer_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SKUIVideoPreviewObservePlayer_block_invoke_3;
  block[3] = &unk_2781F9990;
  v16 = &__block_literal_global_64;
  if (SKUIVideoPreviewObservePlayer_sOnce != -1)
  {
    dispatch_once(&SKUIVideoPreviewObservePlayer_sOnce, block);
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a2)
  {
LABEL_7:
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a2];
    v13 = [v3 currentItem];
    objc_setAssociatedObject(v13, "com.apple.StoreKitUI.MoviePlayerItemID", v12, 1);
  }

LABEL_8:
  v14 = [v3 currentItem];
  objc_setAssociatedObject(v14, "com.apple.StoreKitUI.MoviePlayerTrackingKey", MEMORY[0x277CBEC38], 1);
}

void __SKUIVideoPreviewObservePlayer_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 object];
  v4 = objc_getAssociatedObject(v3, "com.apple.StoreKitUI.MoviePlayerItemID");
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = [v3 accessLog];
    v6 = [v5 events];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SKUIVideoPreviewObservePlayer_block_invoke_2;
    v11[3] = &unk_278200D88;
    v11[4] = &v12;
    [v6 enumerateObjectsUsingBlock:v11];

    if (v13[3] >= 5.0)
    {
      [v4 longLongValue];
      v7 = SUCreatePreviewHistoryOperation();
      v8 = [MEMORY[0x277D7FD20] mainQueue];
      [v8 addOperation:v7];
    }

    _Block_object_dispose(&v12, 8);
  }

  v9 = objc_getAssociatedObject(v3, "com.apple.StoreKitUI.MoviePlayerTrackingKey");
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"SKUIVideoPreviewDidEndNotification" object:0];
  }
}

void sub_215E991B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SKUIVideoPreviewObservePlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 durationWatched];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void __SKUIVideoPreviewObservePlayer_block_invoke_3(uint64_t a1)
{
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *MEMORY[0x277CE60C0];
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v4 = [v8 addObserverForName:v2 object:0 queue:v3 usingBlock:*(a1 + 32)];

  v5 = *MEMORY[0x277CE60D0];
  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v7 = [v8 addObserverForName:v5 object:0 queue:v6 usingBlock:*(a1 + 32)];
}

void SKUICollectionViewUpdatePerspectiveCells(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SKUICollectionViewUpdatePerspectiveCells_cold_1();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_18:
    v5 = [v3 visibleCells];
    goto LABEL_19;
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 indexPathsForVisibleItems];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if ([v4 containsIndex:{objc_msgSend(v11, "section")}])
        {
          v12 = [v3 cellForItemAtIndexPath:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

LABEL_19:
  [v3 bounds];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MidY = CGRectGetMidY(v40);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __SKUICollectionViewUpdatePerspectiveCells_block_invoke;
  v31[3] = &__block_descriptor_48_e55_q24__0__UICollectionViewCell_8__UICollectionViewCell_16l;
  *&v31[4] = MidX;
  *&v31[5] = MidY;
  v19 = [v5 sortedArrayWithOptions:0 usingComparator:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        if ([v25 conformsToProtocol:{&unk_282916328, v27}])
        {
          [v25 updateForChangedDistanceFromVanishingPoint];
          v26 = [v25 superview];
          [v26 sendSubviewToBack:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }
}

uint64_t __SKUICollectionViewUpdatePerspectiveCells_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 center];
  [v4 center];

  UIDistanceBetweenPoints();
  v6 = v5;
  UIDistanceBetweenPoints();
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

void sub_215E9F4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E9F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215E9FCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_215EA03C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _SKUIErrorFromError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"SKUIMacErrorDomain"];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 == 2)
    {
      v5 = 7;
    }

    else
    {
      v5 = 4 * (v4 == 1);
    }

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:v5 userInfo:v6];
  }

  else
  {
    v7 = v1;
  }

  return v7;
}

void sub_215EA60B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215EA6534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SKUIDecodeRestorableStateWithCoder(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        SKUIDecodeRestorableStateWithCoder_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  v16 = [v7 decodeObjectOfClass:objc_opt_class() forKey:v6];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v16 error:0];
    [v5 decodeRestorableStateWithCoder:v17];
    [v17 finishDecoding];
  }
}

void SKUIEncodeRestorableStateWithCoder(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        SKUIEncodeRestorableStateWithCoder_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
        if (!v7)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }
  }

  if (v7)
  {
LABEL_5:
    v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v7 encodeRestorableStateWithCoder:v16];
    v17 = [v16 encodedData];
    [v5 encodeObject:v17 forKey:v6];
  }

LABEL_6:
}

void *__Block_byref_object_copy__104(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__6_0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215EA816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t (*SKUIMetricsLaunchApplicationWithIdentifier(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = SKUISpringBoardServicesFramework();
  result = SKUIWeakLinkedSymbolForString("SBSLaunchApplicationWithIdentifier", v4);
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

uint64_t (*SKUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v10 = SKUISpringBoardServicesFramework();
  result = SKUIWeakLinkedSymbolForString("SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions", v10);
  if (result)
  {

    return result(a1, a2, a3, a4, a5);
  }

  return result;
}

id SKUIMetricsNavigationTypeFromNavigationControllerOperation(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = MEMORY[0x277D6A4C0];
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = MEMORY[0x277D6A4B8];
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

void SKUIMetricsOpenSensitiveURL(void *a1, void *a2)
{
  v9 = a1;
  v3 = MEMORY[0x277D75128];
  v4 = a2;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 application:v5 recordExitMetricsEventWithURL:v9];
  }

  v7 = SKUIMobileCoreServicesFramework();
  v8 = [SKUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v7)];
  [v8 openSensitiveURL:v9 withOptions:v4];
}

void SKUIMetricsOpenURL(void *a1)
{
  v3 = a1;
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v1 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 application:v1 recordExitMetricsEventWithURL:v3];
  }

  [v1 openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
}

void SKUIMetricsSetClickEventPositionWithPoint(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x277D759A0];
  v6 = a1;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:(a2 * v9)];
  [v6 setPositionX:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:(a3 * v9)];
  [v6 setPositionY:v11];
}

void SKUIMetricsSetClickEventPositionWithView(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v8 = a1;
    [v3 bounds];
    [v3 convertRect:0 toView:?];
    v5 = v4;
    v7 = v6;

    SKUIMetricsSetClickEventPositionWithPoint(v8, v5, v7);
  }
}

__CFString *SKUIMetricsWindowOrientationForInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_278200FA8[a1 - 1];
  }
}

void sub_215EAAE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKUINavigationControllerWillShowViewController(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUINavigationControllerWillShowViewController_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 lastOperation];
  if (v13 == 2)
  {
    v14 = [v3 disappearingViewController];
    v15 = v4;
  }

  else
  {
    if (v13 != 1)
    {
      v14 = v4;
      v16 = 0;
      goto LABEL_11;
    }

    v14 = v4;
    v15 = [v3 disappearingViewController];
  }

  v16 = v15;
LABEL_11:
  v17 = [v3 navigationBar];
  v18 = [v17 _backdropViewLayerGroupName];

  v19 = [v14 SKUIPinnedHeaderView];
  [v19 setGroupName:v18];

  v20 = [v16 SKUIPinnedHeaderView];
  [v20 setGroupName:0];
}

void SKUINavigationControllerDidShowViewController(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        SKUINavigationControllerDidShowViewController_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v13 = [v3 navigationBar];
  v14 = [v13 _backdropViewLayerGroupName];

  v15 = [v4 SKUIPinnedHeaderView];

  [v15 setGroupName:v14];
}

void SKUIScrollViewSetPinnedHeaderContentInsets(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        SKUIScrollViewSetPinnedHeaderContentInsets_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  __SKUIScrollViewSetKeyedContentInsets(v9, "com.apple.iTunesStoreUI.pinnedHeaderInset", 0, a2, a3, a4, a5);
}

void __SKUIScrollViewSetKeyedContentInsets(void *a1, const void *a2, int a3, double a4, double a5, double a6, double a7)
{
  object = a1;
  v11 = objc_getAssociatedObject(object, a2);
  v12 = v11;
  if (v11)
  {
    [v11 UIEdgeInsetsValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v18 = *(MEMORY[0x277D768C8] + 16);
    v20 = *(MEMORY[0x277D768C8] + 24);
  }

  [object contentInset];
  if (v16 != a5 || v14 != a4 || v20 != a7 || v18 != a6)
  {
    v39 = v23;
    v40 = v24;
    v37 = v18;
    v38 = v22;
    v28 = v16;
    v29 = v21;
    [object contentOffset];
    v35 = v31;
    v36 = v30;
    v41 = a4;
    v42 = a5;
    v32 = a4 - v14;
    v33 = a5 - v28 + v38;
    [object setContentInset:{v32 + v29, v33, a6 - v37 + v39, a7 - v20 + v40}];
    [object setScrollIndicatorInsets:{v32 + v29, v33, a6 - v37 + v39, a7 - v20 + v40}];
    if (a3)
    {
      [object setContentOffset:{v36, v35 - v32}];
    }

    v34 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v41, v42, a6, a7}];
    objc_setAssociatedObject(object, a2, v34, 1);
  }
}

void SKUIScrollViewSetDefaultContentInsets(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        SKUIScrollViewSetDefaultContentInsets_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  __SKUIScrollViewSetKeyedContentInsets(v9, "com.apple.iTunesStoreUI.defaultHeaderInset", 1, a2, a3, a4, a5);
}

double SKUILayoutGuideInsets(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        SKUILayoutGuideInsets_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = v1;
  v11 = [v10 parentViewController];
  if (v11)
  {
    v12 = v10;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v13 = v11;

      v11 = [v13 parentViewController];

      v12 = v13;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

LABEL_13:
  v14 = [v13 topLayoutGuide];
  [v14 length];
  v16 = v15;
  v17 = [v13 bottomLayoutGuide];
  [v17 length];

  return v16;
}

void sub_215EAE95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SKUILabelViewStyleForString(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUILabelViewStyleForString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  if ([v1 isEqualToString:@"title"])
  {
    v10 = 5;
  }

  else if ([v1 isEqualToString:@"subtitle"])
  {
    v10 = 4;
  }

  else if ([v1 isEqualToString:@"notice"])
  {
    v10 = 3;
  }

  else if ([v1 isEqualToString:@"description"])
  {
    v10 = 1;
  }

  else if ([v1 isEqualToString:@"navigationTitle"])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_215EB0AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SKUILabelStringAttributesWithSpanElement(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        SKUILabelStringAttributesWithSpanElement_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }
  }

  v10 = [v1 style];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = SKUIViewElementFontWithStyle(v10);
  if (v12)
  {
    [v11 setObject:v12 forKey:*MEMORY[0x277D740A8]];
  }

  v13 = [v10 ikColor];
  v14 = [v13 color];

  if (v14)
  {
    [v11 setObject:v14 forKey:*MEMORY[0x277D740C0]];
  }

  if (![v11 count])
  {

    v11 = 0;
  }

  return v11;
}

BOOL _SKUIScrollViewIsCompetingWithScrollView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 panGestureRecognizer];
  if (_SKUIScrollViewCanScrollHorizontally(v3))
  {
    v6 = [v5 _canPanHorizontally];
  }

  else
  {
    v6 = 0;
  }

  if (_SKUIScrollViewCanScrollVertically(v3))
  {
    v7 = [v5 _canPanVertically];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 panGestureRecognizer];
  if (_SKUIScrollViewCanScrollHorizontally(v4))
  {
    v9 = [v8 _canPanHorizontally];
  }

  else
  {
    v9 = 0;
  }

  CanScrollVertically = _SKUIScrollViewCanScrollVertically(v4);
  if (CanScrollVertically)
  {
    CanScrollVertically = [v8 _canPanVertically];
  }

  v12 = v6 != v9 && v7 != CanScrollVertically;

  return v12;
}

uint64_t _SKUIScrollViewWantsToBeginTrackingImmediately(void *a1)
{
  v1 = a1;
  if (([v1 isDecelerating] & 1) == 0)
  {
    v2 = v1;
    if (([v2 isDecelerating] & 1) == 0 && (objc_msgSend(v2, "isDragging") & 1) == 0 && (objc_msgSend(v2, "isTracking") & 1) == 0)
    {

LABEL_29:
      v38 = 0;
      goto LABEL_22;
    }

    [v2 contentOffset];
    v43 = v4;
    v44 = v3;
    v5 = [v2 traitCollection];
    [v5 displayScale];
    v7 = v6;

    if (v7 < 0.00000011920929)
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 scale];
      v7 = v9;
    }

    [v2 contentInset];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v2 contentSize];
    v20 = -v13;
    if (v7 == 1.0 || v7 == 0.0)
    {
      v22 = round(v20);
      v24 = round(-v11);
      v26 = round(v17 + v18);
      v42 = round(v15 + v19);
      v30 = round(v17 + v13 + v18);
      v33 = round(v15 + v11 + v19);
    }

    else
    {
      v21 = floor(v20);
      v22 = v21 + round(v7 * (v20 - v21)) / v7;
      v23 = floor(-v11);
      v24 = v23 + round(v7 * (-v11 - v23)) / v7;
      v25 = floor(v17 + v18);
      v26 = v25 + round(v7 * (v17 + v18 - v25)) / v7;
      v27 = floor(v15 + v19);
      v42 = v27 + round(v7 * (v15 + v19 - v27)) / v7;
      v28 = v17 + v13 + v18;
      v29 = floor(v28);
      v30 = v29 + round(v7 * (v28 - v29)) / v7;
      v31 = v15 + v11 + v19;
      v32 = floor(v31);
      v33 = v32 + round(v7 * (v31 - v32)) / v7;
    }

    [v2 bounds];
    if (v44 < v22 || (v34 >= v30 ? (v36 = v30) : (v36 = v34), v44 <= v26 - v36 ? (v37 = v43 < v24) : (v37 = 1), v37))
    {
    }

    else
    {
      if (v35 >= v33)
      {
        v40 = v33;
      }

      else
      {
        v40 = v35;
      }

      v41 = v42 - v40;

      if (v43 <= v41)
      {
        goto LABEL_29;
      }
    }
  }

  v38 = [v1 tracksImmediatelyWhileDecelerating];
LABEL_22:

  return v38;
}

void sub_215EB24F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SKUIScrollViewCanScrollHorizontally(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = v2;
  v5 = v4;
  [v1 contentSize];
  v7 = v6;
  [v1 bounds];
  if (v5 + v3 + v7 <= v8)
  {
    if ([v1 alwaysBounceHorizontal])
    {
      v9 = [v1 bouncesHorizontally];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _SKUIScrollViewCanScrollVertically(void *a1)
{
  v1 = a1;
  [v1 contentInset];
  v3 = v2;
  v5 = v4;
  [v1 contentSize];
  v7 = v6;
  [v1 bounds];
  if (v5 + v3 + v7 <= v8)
  {
    if ([v1 alwaysBounceVertical])
    {
      v9 = [v1 bouncesVertically];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_215EB2830(uint64_t a1, int a2)
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

uint64_t sub_215EB2850(uint64_t result, int a2, int a3)
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

void sub_215EB28A0(uint64_t a1, unint64_t *a2)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_215EB29CC()
{
  sub_215EB2A68();
  if (v0 <= 0x3F)
  {
    sub_215EB2AC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_215EB2A68()
{
  if (!qword_27CA8B588)
  {
    sub_215F08F78();
    v0 = sub_215F098C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA8B588);
    }
  }
}

unint64_t sub_215EB2AC0()
{
  result = qword_27CA8B590;
  if (!qword_27CA8B590)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CA8B590);
  }

  return result;
}

uint64_t sub_215EB2B50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215EB2B88()
{
  result = type metadata accessor for ReviewInAppRatingActionButton.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_215EB2C10@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = type metadata accessor for ReviewInAppRatingActionButtonStyle();
  MEMORY[0x28223BE20](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);
  sub_215EB2FF0(v1 + *(v12 + 20), v7);
  v18 = v1;

  sub_215F09718();
  *v4 = *(v1 + *(v12 + 28));
  v13 = v2[5];
  *&v4[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5B0);
  swift_storeEnumTagMultiPayload();
  v14 = v2[6];
  *&v4[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5B8);
  swift_storeEnumTagMultiPayload();
  v15 = &v4[v2[7]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v19 = 0x402E000000000000;
  sub_215EB31AC();
  sub_215F08FD8();
  sub_215EB3200();
  sub_215EB32AC();
  sub_215F09578();
  sub_215EB3304(v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_215EB2EEC@<X0>(uint64_t a1@<X8>)
{
  sub_215EB3360();

  v2 = sub_215F09528();
  v4 = v3;
  v6 = v5;
  sub_215F094E8();
  v7 = sub_215F094F8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_215EB33B4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_215EB2FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215EB308C(uint64_t a1)
{
  v2 = sub_215F08FB8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_215F091B8();
}

uint64_t sub_215EB3154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_215F09218();
  *a1 = result & 1;
  return result;
}

unint64_t sub_215EB31AC()
{
  result = qword_27CA8B5C0;
  if (!qword_27CA8B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B5C0);
  }

  return result;
}

unint64_t sub_215EB3200()
{
  result = qword_27CA8B5C8;
  if (!qword_27CA8B5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B5C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_215EB32AC()
{
  result = qword_27CA8B5D0;
  if (!qword_27CA8B5D0)
  {
    type metadata accessor for ReviewInAppRatingActionButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B5D0);
  }

  return result;
}

uint64_t sub_215EB3304(uint64_t a1)
{
  v2 = type metadata accessor for ReviewInAppRatingActionButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_215EB3360()
{
  result = qword_27CA8B5D8;
  if (!qword_27CA8B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B5D8);
  }

  return result;
}

uint64_t sub_215EB33B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_215EB33C4()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_27CA8CEE8);
  __swift_project_value_buffer(v0, qword_27CA8CEE8);
  return sub_215F08F08();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for SKLogger()
{
  result = qword_27CA8B5E0;
  if (!qword_27CA8B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_215EB354C()
{
  result = sub_215F08F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ReviewInAppRatingView()
{
  result = qword_27CA8B600;
  if (!qword_27CA8B600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215EB362C()
{
  sub_215EB37DC(319, &qword_27CA8B610, MEMORY[0x277CDD848]);
  if (v0 <= 0x3F)
  {
    sub_215EB37DC(319, &qword_27CA8B618, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_215EB3830(319, &qword_27CA8B620);
      if (v2 <= 0x3F)
      {
        sub_215EB3830(319, &qword_27CA8B628);
        if (v3 <= 0x3F)
        {
          sub_215EB3830(319, &qword_27CA8B630);
          if (v4 <= 0x3F)
          {
            sub_215EB387C();
            if (v5 <= 0x3F)
            {
              sub_215EB38E4();
              if (v6 <= 0x3F)
              {
                sub_215EB3928();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_215EB37DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_215F08FC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_215EB3830(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_215F09708();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_215EB387C()
{
  if (!qword_27CA8B638)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_215F08F48();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA8B638);
    }
  }
}

unint64_t sub_215EB38E4()
{
  result = qword_27CA8B640;
  if (!qword_27CA8B640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA8B640);
  }

  return result;
}

void sub_215EB3928()
{
  if (!qword_27CA8B648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B650);
    v0 = sub_215F098C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA8B648);
    }
  }
}

uint64_t sub_215EB39A8()
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  sub_215F096D8();
  if ((v1 & 0xC0) == 0x40)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096D8();
  return v1;
}

uint64_t sub_215EB3A70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = sub_215F09328();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v52 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v48[-v6];
  v8 = sub_215F09348();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v53 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v54 = &v48[-v11];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8E0);
  MEMORY[0x28223BE20](v51);
  v13 = &v48[-v12];
  v14 = _s4IconVMa();
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8E8);
  v55 = *(v60 - 8);
  v17 = MEMORY[0x28223BE20](v60);
  v63 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v48[-v19];
  v21 = type metadata accessor for ReviewInAppRatingView();
  v22 = *(v21 + 72);
  v62 = a1;
  v23 = *(a1 + v22);
  *v16 = v23;
  v69 = 0x4050000000000000;
  sub_215EB31AC();
  v24 = v23;
  sub_215F08FD8();
  v25 = *MEMORY[0x277CDF988];
  v26 = sub_215F09118();
  (*(*(v26 - 8) + 104))(v13, v25, v26);
  sub_215EBA00C(&unk_27CA8B8F0);
  result = sub_215F097F8();
  if (result)
  {
    sub_215EBA00C(&unk_27CA8B8F8);
    sub_215EBA7B0(&qword_27CA8B900);
    v50 = v20;
    sub_215F095B8();
    sub_215EBA17C(v13, &qword_27CA8B8E0);
    sub_215EB9FB4(v16, _s4IconVMa);
    v51 = sub_215F092A8();
    LOBYTE(v68[0]) = 0;
    v28 = v62;
    sub_215EB421C(v67);
    *&v65[23] = v67[1];
    *&v65[39] = v67[2];
    *&v65[55] = v67[3];
    *&v65[7] = v67[0];
    v49 = LOBYTE(v68[0]);
    v29 = (v28 + *(v21 + 36));
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v69) = v30;
    v70 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
    sub_215F096D8();
    LODWORD(v62) = (v64 & 0xC0) == 64;
    sub_215F09318();
    v33 = v56;
    v32 = v57;
    (*(v56 + 16))(v52, v7, v57);
    v34 = v54;
    sub_215F09338();
    (*(v33 + 8))(v7, v32);
    v36 = v58;
    v35 = v59;
    (*(v58 + 16))(v53, v34, v59);
    sub_215EBA00C(&unk_27CA8B908);
    v37 = sub_215F09058();
    v57 = v37;
    (*(v36 + 8))(v34, v35);
    KeyPath = swift_getKeyPath();
    v59 = KeyPath;
    LOBYTE(v69) = 1;
    v39 = v55;
    v40 = *(v55 + 16);
    v41 = v63;
    v42 = v50;
    v43 = v60;
    v40(v63, v50, v60);
    v44 = v61;
    v40(v61, v41, v43);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B910) + 48);
    v46 = v51;
    v68[0] = v51;
    v68[1] = 0x4020000000000000;
    LOBYTE(v41) = v49;
    LOBYTE(v68[2]) = v49;
    memcpy(&v68[2] + 1, v65, 0x47uLL);
    LOBYTE(v68[11]) = v62;
    *(&v68[11] + 1) = *v66;
    HIDWORD(v68[11]) = *&v66[3];
    v68[12] = v37;
    v68[13] = KeyPath;
    v68[14] = 0;
    LOBYTE(v68[15]) = 1;
    *(&v68[15] + 1) = 256;
    memcpy(&v44[v45], v68, 0x7BuLL);
    sub_215EBA1D0(v68, &v69, &qword_27CA8B918);
    v47 = *(v39 + 8);
    v47(v42, v43);
    v69 = v46;
    v70 = 0x4020000000000000;
    v71 = v41;
    memcpy(v72, v65, 0x47uLL);
    v72[71] = v62;
    *v73 = *v66;
    *&v73[3] = *&v66[3];
    v74 = v57;
    v75 = v59;
    v76 = 0;
    v77 = 1;
    v78 = 256;
    sub_215EBA17C(&v69, &qword_27CA8B918);
    return (v47)(v63, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215EB421C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  sub_215F096D8();
  if ((v33 & 0xC0) == 0x40)
  {
    sub_215EC0400();
  }

  else
  {
  }

  sub_215EB3360();
  v2 = sub_215F09528();
  v4 = v3;
  v6 = v5;
  sub_215F094B8();
  sub_215F094C8();

  v7 = sub_215F09518();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;

  sub_215EB33B4(v2, v4, v6 & 1);

  sub_215F096D8();
  if ((v33 & 0xC0) == 0x40)
  {
    sub_215EC04AC();
  }

  else
  {
  }

  v11 = sub_215F09528();
  v13 = v12;
  v15 = v14;
  sub_215F094A8();
  v16 = sub_215F09518();
  v18 = v17;
  v20 = v19;

  sub_215EB33B4(v11, v13, v15 & 1);

  sub_215F09388();
  v21 = sub_215F09508();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_215EB33B4(v16, v18, v20 & 1);

  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25 & 1;
  *(a1 + 56) = v27;
  sub_215EBA050(v31, v30, v29 & 1);

  sub_215EBA050(v21, v23, v25 & 1);

  sub_215EB33B4(v21, v23, v25 & 1);

  sub_215EB33B4(v31, v30, v29 & 1);
}

uint64_t sub_215EB4524@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  result = sub_215F096F8();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_215EB45B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v55 = a3;
  v53 = type metadata accessor for ReviewInAppRatingActionButton(0);
  MEMORY[0x28223BE20](v53);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);
  MEMORY[0x28223BE20](v52);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8B8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8C0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v47 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  sub_215EB4B30(&v47 - v25, &v47 + *(v18 + 56) - v25, v51);
  sub_215EBA1D0(v26, v24, &qword_27CA8B8C0);
  v27 = *(v18 + 56);
  sub_215EB9B14(v24, v16, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
  sub_215EBA17C(&v24[v27], &qword_27CA8B8C8);
  v28 = type metadata accessor for ReviewInAppRatingView();
  v29 = *(a1 + *(v28 + 52));
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8D0) + 36)] = v29;
  v30 = (a1 + *(v28 + 24));
  v31 = *v30;
  v32 = *(v30 + 1);
  v57 = v31;
  v58 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096D8();
  LOBYTE(a1) = v56;
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  v35 = &v16[*(v12 + 44)];
  *v35 = KeyPath;
  v35[1] = sub_215EBA7F4;
  v35[2] = v34;
  sub_215EBA1D0(v26, v21, &qword_27CA8B8C0);
  v36 = *(v18 + 56);
  if (__swift_getEnumTagSinglePayload(&v21[v36], 1, v52) == 1)
  {
    sub_215EBA17C(&v21[v36], &qword_27CA8B8C8);
    sub_215EB9FB4(v21, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
    v37 = 1;
  }

  else
  {
    v38 = &v21[v36];
    v39 = v48;
    sub_215EB9B14(v38, v48, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
    sub_215EB9FB4(v21, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
    v40 = v39;
    v41 = v49;
    sub_215EB9B14(v40, v49, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
    sub_215EB9B14(v41, v10, type metadata accessor for ReviewInAppRatingActionButton);
    v37 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v37, 1, v53);
  v42 = v50;
  sub_215EBA1D0(v16, v50, &qword_27CA8B8B8);
  v43 = v54;
  sub_215EBA1D0(v10, v54, &qword_27CA8B8B0);
  v44 = v55;
  sub_215EBA1D0(v42, v55, &qword_27CA8B8B8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8D8);
  sub_215EBA1D0(v43, v44 + *(v45 + 48), &qword_27CA8B8B0);
  sub_215EBA17C(v10, &qword_27CA8B8B0);
  sub_215EBA17C(v16, &qword_27CA8B8B8);
  sub_215EBA17C(v26, &qword_27CA8B8C0);
  sub_215EBA17C(v43, &qword_27CA8B8B0);
  return sub_215EBA17C(v42, &qword_27CA8B8B8);
}

uint64_t sub_215EB4B30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v62 = a1;
  v63 = a2;
  v6 = type metadata accessor for ReviewInAppRatingView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8C0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v56 - v12);
  v61 = v11;
  v14 = (&v56 + *(v11 + 48) - v12);
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      v44 = sub_215EC06BC();
      v46 = v45;
      sub_215EB9298(v4, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v48 = swift_allocObject();
      sub_215EB9B14(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for ReviewInAppRatingView);
      v49 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);
      v50 = v49[5];
      v51 = sub_215F08F78();
      __swift_storeEnumTagSinglePayload(v13 + v50, 1, 1, v51);
      *v13 = v44;
      v13[1] = v46;
      v52 = (v13 + v49[6]);
      *v52 = sub_215EBA7F0;
      v52[1] = v48;
      *(v13 + v49[7]) = 1;
      v41 = v14;
      v42 = 1;
      v43 = v49;
      goto LABEL_7;
    }

    v15 = sub_215EC0768();
    v57 = v16;
    v58 = v15;
    sub_215EB9298(v3, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v60 = v3;
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v59 = type metadata accessor for ReviewInAppRatingView;
    sub_215EB9B14(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ReviewInAppRatingView);
    v19 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);
    v20 = v19[5];
    v21 = sub_215F08F78();
    __swift_storeEnumTagSinglePayload(v13 + v20, 1, 1, v21);
    v22 = v57;
    *v13 = v58;
    v13[1] = v22;
    v23 = (v13 + v19[6]);
    *v23 = sub_215EB9B70;
    v23[1] = v18;
    *(v13 + v19[7]) = 1;
    v58 = sub_215EC0814();
    v25 = v24;
    v26 = v19[5];
    sub_215F08F68();
    __swift_storeEnumTagSinglePayload(v14 + v26, 0, 1, v21);
    sub_215EB9298(v60, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = swift_allocObject();
    sub_215EB9B14(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v17, v59);
    *v14 = v58;
    v14[1] = v25;
    v28 = (v14 + v19[6]);
    v29 = sub_215EB9BD0;
  }

  else
  {
    v30 = sub_215EC0564();
    v57 = v31;
    v58 = v30;
    sub_215EB9298(v3, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v60 = v3;
    v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v33 = swift_allocObject();
    v59 = type metadata accessor for ReviewInAppRatingView;
    sub_215EB9B14(v9, v33 + v32, type metadata accessor for ReviewInAppRatingView);
    *(v33 + v32 + v8) = a3;
    v19 = type metadata accessor for ReviewInAppRatingActionButton.Configuration(0);
    v34 = v19[5];
    v35 = sub_215F08F78();
    __swift_storeEnumTagSinglePayload(v13 + v34, 1, 1, v35);
    v36 = v57;
    *v13 = v58;
    v13[1] = v36;
    v37 = (v13 + v19[6]);
    *v37 = sub_215EB9C6C;
    v37[1] = v33;
    *(v13 + v19[7]) = 0;
    v58 = sub_215EC0610();
    v39 = v38;
    v40 = v19[5];
    sub_215F08F68();
    __swift_storeEnumTagSinglePayload(v14 + v40, 0, 1, v35);
    sub_215EB9298(v60, v9);
    v27 = swift_allocObject();
    sub_215EB9B14(v9, v27 + v32, v59);
    *v14 = v58;
    v14[1] = v39;
    v28 = (v14 + v19[6]);
    v29 = sub_215EB9CEC;
  }

  *v28 = v29;
  v28[1] = v27;
  *(v14 + v19[7]) = 1;
  v41 = v14;
  v42 = 0;
  v43 = v19;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v43);
  v53 = v63;
  v54 = *(v61 + 48);
  sub_215EB9B14(v13, v62, type metadata accessor for ReviewInAppRatingActionButton.Configuration);
  return sub_215EB9BD8(v13 + v54, v53, &qword_27CA8B8C8);
}

uint64_t sub_215EB5014@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B850);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v63 - v7;
  v8 = type metadata accessor for ReviewInAppRatingView();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B858);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B860);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v64 = &v63 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B868) - 8;
  v17 = MEMORY[0x28223BE20](v66);
  v67 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v72 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B870);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v65 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - v27;
  v73 = &v63 - v27;
  sub_215F09758();
  v29 = sub_215F09498();
  sub_215F08F88();
  v30 = &v28[*(v24 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  *v13 = sub_215F09278();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B878);
  __src[0] = &unk_2827FEF68;
  sub_215EB9298(a1, &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v36 = swift_allocObject();
  sub_215EB9B14(&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for ReviewInAppRatingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B880);
  sub_215EBA7B0(&unk_27CA8B888);
  sub_215EB97EC();
  sub_215EB9840();
  sub_215F09778();
  LOBYTE(v24) = sub_215EB39A8();
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v24 & 1;
  v39 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8A0) + 36)];
  *v39 = KeyPath;
  v39[1] = sub_215EB9AFC;
  v39[2] = v38;
  v40 = sub_215F097C8();
  v41 = sub_215EB39A8();
  v42 = &v13[*(v11 + 44)];
  *v42 = v40;
  v42[8] = v41 & 1;
  sub_215F09798();
  sub_215F09178();
  v43 = v64;
  sub_215EB9BD8(v13, v64, &qword_27CA8B858);
  memcpy((v43 + *(v15 + 44)), __src, 0x70uLL);
  LOBYTE(v40) = sub_215F09488();
  sub_215F08F88();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_215EB9BD8(v43, v21, &qword_27CA8B860);
  v52 = &v21[*(v66 + 44)];
  *v52 = v40;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = v72;
  sub_215EB9BD8(v21, v72, &qword_27CA8B868);
  v54 = v68;
  sub_215EB45B0(a1, v70, v68);
  v55 = v65;
  sub_215EBA1D0(v73, v65, &qword_27CA8B870);
  v56 = v67;
  sub_215EBA1D0(v53, v67, &qword_27CA8B868);
  v57 = v69;
  sub_215EBA1D0(v54, v69, &qword_27CA8B850);
  v58 = v55;
  v59 = v55;
  v60 = v71;
  sub_215EBA1D0(v58, v71, &qword_27CA8B870);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8A8);
  sub_215EBA1D0(v56, v60 + *(v61 + 48), &qword_27CA8B868);
  sub_215EBA1D0(v57, v60 + *(v61 + 64), &qword_27CA8B850);
  sub_215EBA17C(v54, &qword_27CA8B850);
  sub_215EBA17C(v72, &qword_27CA8B868);
  sub_215EBA17C(v73, &qword_27CA8B870);
  sub_215EBA17C(v57, &qword_27CA8B850);
  sub_215EBA17C(v56, &qword_27CA8B868);
  return sub_215EBA17C(v59, &qword_27CA8B870);
}

uint64_t sub_215EB57A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_215F09668();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_215F09168();
  MEMORY[0x28223BE20](v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6C0);
  sub_215EB9358();
  sub_215F092E8();
  v11 = sub_215F09468();
  sub_215F08F88();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6F0) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_215F09498();
  sub_215F08F88();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6F8) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_215F097C8();
  v32 = (a1 + *(type metadata accessor for ReviewInAppRatingView() + 36));
  v34 = *(v32 + 1);
  v54 = *v32;
  v33 = v54;
  v55 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  sub_215F096D8();
  LOBYTE(a1) = v53 != 128;
  v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B708) + 36)];
  *v35 = v31;
  v35[8] = a1;
  v36 = sub_215F097C8();
  v54 = v33;
  v55 = v34;
  sub_215F096D8();
  v37 = (v53 & 0xC0) == 64;
  v38 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B710) + 36)];
  *v38 = v36;
  v38[8] = v37;
  LOBYTE(a1) = sub_215F09478();
  sub_215F08F88();
  v39 = &v10[*(v8 + 36)];
  *v39 = a1;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = *(v5 + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_215F09288();
  (*(*(v46 - 8) + 104))(&v7->i8[v44], v45, v46);
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  sub_215F09658();
  sub_215EB943C();
  sub_215EBA00C(&unk_27CA8B770);
  sub_215F09588();
  (*(v49 + 8))(v4, v51);
  sub_215EB9FB4(v7, MEMORY[0x277CDFC08]);
  return sub_215EBA17C(v10, &qword_27CA8B6B8);
}

uint64_t sub_215EB5C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6E8);
  MEMORY[0x28223BE20](v112);
  v4 = &v83 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B778);
  MEMORY[0x28223BE20](v115);
  v6 = &v83 - v5;
  v7 = type metadata accessor for ReviewInAppRatingView();
  v108 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v114 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_215F09308();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_215F093D8();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B780);
  MEMORY[0x28223BE20](v111);
  v13 = &v83 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B788);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v83 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B790);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v83 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B798);
  MEMORY[0x28223BE20](v93);
  v94 = &v83 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7A0);
  MEMORY[0x28223BE20](v91);
  v100 = &v83 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7A8);
  MEMORY[0x28223BE20](v90);
  v102 = &v83 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7B0);
  MEMORY[0x28223BE20](v101);
  v104 = &v83 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7B8);
  MEMORY[0x28223BE20](v103);
  v106 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6D8);
  v22 = MEMORY[0x28223BE20](v21);
  v105 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v107 = &v83 - v24;
  v25 = sub_215F09118();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v7;
  sub_215EB9894(&qword_27CA8B5B8, MEMORY[0x277CDFA28], v28);
  LOBYTE(v7) = sub_215F09108();
  (*(v26 + 8))(v28, v25);
  v29 = sub_215F09298();
  if (v7)
  {
    v83 = v21;
    v84 = v6;
    *v13 = v29;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7C8);
    sub_215EB6CBC(a1, &v13[*(v30 + 44)]);
    v31 = v11;
    sub_215F092F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_215F40870;
    v33 = sub_215F09448();
    *(inited + 32) = v33;
    v34 = sub_215F09428();
    *(inited + 33) = v34;
    sub_215F09438();
    sub_215F09438();
    v35 = a1;
    if (sub_215F09438() != v33)
    {
      sub_215F09438();
    }

    sub_215F09438();
    v36 = sub_215F09438();
    v37 = v95;
    v38 = v92;
    v39 = v87;
    if (v36 != v34)
    {
      sub_215F09438();
    }

    v40 = sub_215EBA7B0(&unk_27CA8B7D8);
    sub_215F095C8();
    (*(v85 + 8))(v31, v86);
    sub_215EBA17C(v13, &qword_27CA8B780);
    sub_215F092F8();
    v41 = sub_215F09448();
    sub_215F09438();
    sub_215F09438();
    if (sub_215F09438() != v41)
    {
      sub_215F09438();
    }

    __src[0] = v111;
    __src[1] = v40;
    swift_getOpaqueTypeConformance2();
    v42 = v89;
    sub_215F095E8();
    (*(v96 + 8))(v38, v97);
    (*(v88 + 8))(v39, v42);
    v43 = v113;
    v44 = (v35 + *(v113 + 48));
    v45 = *v44;
    v46 = v44[1];
    __src[0] = v45;
    __src[1] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E0);
    sub_215F096D8();
    sub_215F09798();
    sub_215F09178();
    v47 = v94;
    (*(v98 + 32))(v94, v37, v99);
    memcpy((v47 + *(v93 + 36)), __src, 0x70uLL);
    v48 = v100;
    sub_215EB9BD8(v47, v100, &qword_27CA8B798);
    *(v48 + *(v91 + 36)) = 256;
    v49 = sub_215F09798();
    v51 = v50;
    v52 = v102;
    v53 = &v102[*(v90 + 36)];
    *v53 = sub_215F09298();
    *(v53 + 1) = 0;
    v53[16] = 1;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E8);
    sub_215EB740C(v35, &v53[*(v54 + 44)]);
    *&v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7F0) + 36)] = 256;
    v55 = *(v35 + *(v43 + 60));
    *&v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7F8) + 36)] = v55;
    v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B800) + 36)] = 0;
    v56 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B808) + 36)];
    *v56 = v49;
    v56[1] = v51;
    sub_215EB9BD8(v48, v52, &qword_27CA8B7A0);
    v116 = v55;

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B810);
    v111 = sub_215EBA7B0(&unk_27CA8B818);
    v100 = v57;
    v58 = sub_215F08F58();
    v59 = v35;
    v60 = v109;
    sub_215EB9298(v35, v109);
    v61 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v62 = swift_allocObject();
    v108 = type metadata accessor for ReviewInAppRatingView;
    sub_215EB9B14(v60, v62 + v61, type metadata accessor for ReviewInAppRatingView);
    v63 = v52;
    v64 = v104;
    sub_215EB9BD8(v63, v104, &qword_27CA8B7A8);
    v65 = v101;
    *(v64 + *(v101 + 52)) = v58;
    v66 = (v64 + *(v65 + 56));
    *v66 = sub_215EB9720;
    v66[1] = v62;
    v116 = *(v59 + *(v43 + 56));
    v67 = sub_215F08F58();
    sub_215EB9298(v59, v60);
    v68 = swift_allocObject();
    sub_215EB9B14(v60, v68 + v61, type metadata accessor for ReviewInAppRatingView);
    v69 = v64;
    v70 = v106;
    sub_215EB9BD8(v69, v106, &qword_27CA8B7B0);
    v71 = v103;
    *(v70 + *(v103 + 52)) = v67;
    v72 = (v70 + *(v71 + 56));
    *v72 = sub_215EB9738;
    v72[1] = v68;
    v116 = *(v59 + *(v113 + 52));
    v73 = sub_215F08F58();
    sub_215EB9298(v59, v60);
    v74 = swift_allocObject();
    sub_215EB9B14(v60, v74 + v61, v108);
    v75 = v105;
    sub_215EB9BD8(v70, v105, &qword_27CA8B7B8);
    v76 = v83;
    *(v75 + *(v83 + 52)) = v73;
    v77 = (v75 + *(v76 + 56));
    *v77 = sub_215EB9750;
    v77[1] = v74;
    v78 = &qword_27CA8B6D8;
    v79 = v107;
    sub_215EB9BD8(v75, v107, &qword_27CA8B6D8);
    sub_215EBA1D0(v79, v84, &qword_27CA8B6D8);
    swift_storeEnumTagMultiPayload();
    sub_215EBA7B0(&unk_27CA8B6D0);
    sub_215EBA7B0(&unk_27CA8B6E0);
    sub_215F092D8();
    v80 = v79;
  }

  else
  {
    *v4 = v29;
    *(v4 + 1) = 0x4020000000000000;
    v4[16] = 0;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7C0);
    sub_215EB782C(a1, &v4[*(v81 + 44)]);
    v78 = &qword_27CA8B6E8;
    sub_215EBA1D0(v4, v6, &qword_27CA8B6E8);
    swift_storeEnumTagMultiPayload();
    sub_215EBA7B0(&unk_27CA8B6D0);
    sub_215EBA7B0(&unk_27CA8B6E0);
    sub_215F092D8();
    v80 = v4;
  }

  return sub_215EBA17C(v80, v78);
}

uint64_t sub_215EB6CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B920);
  v3 = MEMORY[0x28223BE20](v38);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B928);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B930);
  MEMORY[0x28223BE20](v34);
  v11 = &v33 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B938);
  v12 = MEMORY[0x28223BE20](v33);
  v36 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v41 = a1;
  sub_215F09448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B838);
  sub_215EBA068();
  sub_215F08F98();
  v19 = type metadata accessor for ReviewInAppRatingView();
  v20 = (a1 + *(v19 + 44));
  v21 = *v20;
  v22 = v20[1];
  __src[0] = v21;
  __src[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E0);
  sub_215F096D8();
  v23 = *(v19 + 48);
  v37 = a1;
  v24 = (a1 + v23);
  v25 = *v24;
  v26 = v24[1];
  __src[0] = v25;
  __src[1] = v26;
  sub_215F096D8();
  sub_215F09798();
  sub_215F09178();
  (*(v7 + 32))(v11, v9, v35);
  memcpy(&v11[*(v34 + 36)], __src, 0x70uLL);
  sub_215EB9BD8(v11, v16, &qword_27CA8B930);
  *&v16[*(v33 + 36)] = 0x3FF0000000000000;
  v27 = sub_215EB9BD8(v16, v18, &qword_27CA8B938);
  MEMORY[0x28223BE20](v27);
  sub_215F09448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B820);
  sub_215EBA7B0(&unk_27CA8B960);
  sub_215F08F98();
  *&v6[*(v38 + 36)] = 0x4000000000000000;
  v28 = v36;
  sub_215EBA1D0(v18, v36, &qword_27CA8B938);
  v29 = v39;
  sub_215EBA1D0(v6, v39, &qword_27CA8B920);
  v30 = v40;
  sub_215EBA1D0(v28, v40, &qword_27CA8B938);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B968);
  sub_215EBA1D0(v29, v30 + *(v31 + 48), &qword_27CA8B920);
  sub_215EBA17C(v6, &qword_27CA8B920);
  sub_215EBA17C(v18, &qword_27CA8B938);
  sub_215EBA17C(v29, &qword_27CA8B920);
  return sub_215EBA17C(v28, &qword_27CA8B938);
}

uint64_t sub_215EB72C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_215F092A8();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B830);
  sub_215EB3A70(a1, (a2 + *(v4 + 44)));
  v5 = *(a1 + *(type metadata accessor for ReviewInAppRatingView() + 56));
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B838) + 36)) = v5;
}

uint64_t sub_215EB735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  sub_215F096D8();
  *a2 = sub_215F09298();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B840);
  return sub_215EB5014(a1, v6, a2 + *(v4 + 44));
}

uint64_t sub_215EB740C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B820);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B828);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  *v15 = sub_215F092A8();
  *(v15 + 1) = 0x402E000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B830);
  sub_215EB3A70(a1, &v15[*(v16 + 44)]);
  v17 = *(a1 + *(type metadata accessor for ReviewInAppRatingView() + 56));
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B838) + 36)] = v17;

  LOBYTE(v17) = sub_215F09488();
  sub_215F08F88();
  v18 = &v15[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  *v8 = sub_215F09298();
  *(v8 + 1) = 0x402E000000000000;
  v8[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B840);
  sub_215EB5014(a1, 68, &v8[*(v23 + 44)]);
  sub_215EBA1D0(v15, v13, &qword_27CA8B828);
  sub_215EBA1D0(v8, v6, &qword_27CA8B820);
  v24 = v28;
  sub_215EBA1D0(v13, v28, &qword_27CA8B828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B848);
  sub_215EBA1D0(v6, v24 + *(v25 + 48), &qword_27CA8B820);
  sub_215EBA17C(v8, &qword_27CA8B820);
  sub_215EBA17C(v15, &qword_27CA8B828);
  sub_215EBA17C(v6, &qword_27CA8B820);
  return sub_215EBA17C(v13, &qword_27CA8B828);
}

uint64_t sub_215EB76C4()
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E0);
  return sub_215F096E8();
}

uint64_t sub_215EB773C()
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E0);
  return sub_215F096E8();
}

uint64_t sub_215EB77B4()
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B7E0);
  return sub_215F096E8();
}

uint64_t sub_215EB782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B850);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B970);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-v15];
  *v16 = sub_215F092A8();
  *(v16 + 1) = 0x402E000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B978);
  sub_215EB7AC8(a1, &v16[*(v17 + 44)]);
  v18 = sub_215F09458();
  sub_215F08F88();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = a1 + *(type metadata accessor for ReviewInAppRatingView() + 36);
  v25 = *v24;
  v26 = *(v24 + 8);
  v29[16] = v25;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
  sub_215F096D8();
  sub_215EB45B0(a1, v29[15], v9);
  sub_215EBA1D0(v16, v14, &qword_27CA8B970);
  sub_215EBA1D0(v9, v7, &qword_27CA8B850);
  sub_215EBA1D0(v14, a2, &qword_27CA8B970);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B980);
  sub_215EBA1D0(v7, a2 + *(v27 + 48), &qword_27CA8B850);
  sub_215EBA17C(v9, &qword_27CA8B850);
  sub_215EBA17C(v16, &qword_27CA8B970);
  sub_215EBA17C(v7, &qword_27CA8B850);
  return sub_215EBA17C(v14, &qword_27CA8B970);
}

uint64_t sub_215EB7AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for ReviewInAppRatingView();
  v4 = v3 - 8;
  v65 = *(v3 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B858);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B860) - 8;
  MEMORY[0x28223BE20](v70);
  v67 = &v63 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B868) - 8;
  v11 = MEMORY[0x28223BE20](v72);
  v73 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v76 = &v63 - v15;
  v71 = sub_215F09768();
  v77 = *(v71 - 8);
  v16 = MEMORY[0x28223BE20](v71);
  v69 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B828);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v66 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  *v24 = sub_215F092A8();
  *(v24 + 1) = 0x402E000000000000;
  v24[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B830);
  sub_215EB3A70(a1, &v24[*(v25 + 44)]);
  v26 = *(a1 + *(v4 + 64));
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B838) + 36)] = v26;

  LOBYTE(v26) = sub_215F09488();
  sub_215F08F88();
  v27 = &v24[*(v20 + 44)];
  v64 = v24;
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_215F09758();
  *v9 = sub_215F09278();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B878);
  __src[0] = &unk_2827FEF68;
  sub_215EB9298(a1, &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v33 = swift_allocObject();
  sub_215EB9B14(&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for ReviewInAppRatingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B880);
  sub_215EBA7B0(&unk_27CA8B888);
  sub_215EB97EC();
  sub_215EB9840();
  sub_215F09778();
  LOBYTE(v5) = sub_215EB39A8();
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v5 & 1;
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B8A0) + 36)];
  *v36 = KeyPath;
  v36[1] = sub_215EBA7F4;
  v36[2] = v35;
  v37 = sub_215F097C8();
  v38 = sub_215EB39A8();
  v39 = &v9[*(v7 + 44)];
  *v39 = v37;
  v39[8] = v38 & 1;
  sub_215F09798();
  sub_215F09178();
  v40 = v67;
  sub_215EB9BD8(v9, v67, &qword_27CA8B858);
  memcpy((v40 + *(v70 + 44)), __src, 0x70uLL);
  LOBYTE(a1) = sub_215F09488();
  sub_215F08F88();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v40;
  v50 = v68;
  sub_215EB9BD8(v49, v68, &qword_27CA8B860);
  v51 = v50 + *(v72 + 44);
  *v51 = a1;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  v52 = v76;
  sub_215EB9BD8(v50, v76, &qword_27CA8B868);
  v53 = v66;
  sub_215EBA1D0(v24, v66, &qword_27CA8B828);
  v54 = *(v77 + 16);
  v55 = v69;
  v56 = v71;
  v54(v69, v75, v71);
  v57 = v52;
  v58 = v73;
  sub_215EBA1D0(v57, v73, &qword_27CA8B868);
  v59 = v74;
  sub_215EBA1D0(v53, v74, &qword_27CA8B828);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B988);
  v54((v59 + *(v60 + 48)), v55, v56);
  sub_215EBA1D0(v58, v59 + *(v60 + 64), &qword_27CA8B868);
  sub_215EBA17C(v76, &qword_27CA8B868);
  v61 = *(v77 + 8);
  v61(v75, v56);
  sub_215EBA17C(v64, &qword_27CA8B828);
  sub_215EBA17C(v58, &qword_27CA8B868);
  v61(v55, v56);
  return sub_215EBA17C(v53, &qword_27CA8B828);
}

uint64_t sub_215EB82F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_1();
  v42 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_215F09118();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B658);
  v16 = OUTLINED_FUNCTION_5(v15);
  MEMORY[0x28223BE20](v16);
  v18 = (&v42 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B660);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  *v18 = sub_215F09798();
  v18[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B668);
  sub_215EB8650(v1, (v18 + *(v24 + 44)));
  OUTLINED_FUNCTION_6();
  sub_215EB9894(v25, v26, v14);
  v27 = sub_215F09108();
  v28 = (*(v10 + 8))(v14, v8);
  v29 = 0;
  if ((v27 & 1) == 0)
  {
    v29 = MEMORY[0x216076190](v28, 0.404, 1.0, 0.25);
  }

  v30 = v2 + *(v3 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  v46 = v31;
  v47 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096D8();
  v33 = v45;
  sub_215EB9BD8(v18, v22, &qword_27CA8B658);
  v34 = &v22[*(v19 + 36)];
  *v34 = v29;
  v34[8] = v33;
  v35 = v2;
  v36 = v43;
  sub_215EB9298(v35, v43);
  v37 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v38 = swift_allocObject();
  sub_215EB9B14(v36, v38 + v37, type metadata accessor for ReviewInAppRatingView);
  v39 = v44;
  sub_215EB9BD8(v22, v44, &qword_27CA8B660);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B680);
  v41 = (v39 + *(result + 36));
  *v41 = sub_215EB92FC;
  v41[1] = v38;
  v41[2] = 0;
  v41[3] = 0;
  return result;
}

uint64_t sub_215EB8650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B688);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B690);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B698);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v43[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6A0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v45 = &v43[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6A8);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v43[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v43[-v22];
  MEMORY[0x28223BE20](v21);
  v48 = &v43[-v24];
  sub_215F09618();
  v47 = sub_215F09638();

  v46 = sub_215F09138();
  v44 = sub_215F09468();
  sub_215EB57A4(a1, v5);
  sub_215F09798();
  sub_215F09178();
  sub_215EB9BD8(v5, v9, &qword_27CA8B688);
  memcpy(&v9[*(v7 + 44)], __src, 0x70uLL);
  sub_215EB9BD8(v9, v13, &qword_27CA8B690);
  *&v13[*(v11 + 44)] = 1;
  v25 = a1 + *(type metadata accessor for ReviewInAppRatingView() + 32);
  v26 = *v25;
  v27 = *(v25 + 8);
  v52 = *v25;
  v53 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096D8();
  if (v51)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = v45;
  sub_215EB9BD8(v13, v45, &qword_27CA8B698);
  *&v29[*(v15 + 44)] = v28;
  v52 = v26;
  v53 = v27;
  sub_215F096D8();
  if (v51)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 1.2;
  }

  sub_215F097D8();
  v32 = v31;
  v34 = v33;
  sub_215EB9BD8(v29, v23, &qword_27CA8B6A0);
  v35 = &v23[*(v18 + 44)];
  *v35 = v30;
  v35[1] = v30;
  *(v35 + 2) = v32;
  *(v35 + 3) = v34;
  v36 = v48;
  sub_215EB9BD8(v23, v48, &qword_27CA8B6A8);
  v37 = v49;
  sub_215EBA1D0(v36, v49, &qword_27CA8B6A8);
  v38 = v50;
  v39 = v46;
  *v50 = v47;
  v38[1] = v39;
  *(v38 + 16) = v44;
  v40 = v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B6B0);
  sub_215EBA1D0(v37, v40 + *(v41 + 48), &qword_27CA8B6A8);

  sub_215EBA17C(v36, &qword_27CA8B6A8);
  sub_215EBA17C(v37, &qword_27CA8B6A8);
}

uint64_t sub_215EB8B40()
{
  type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  return sub_215F096E8();
}

uint64_t sub_215EB8BB4(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for ReviewInAppRatingView();
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = a1 + v5[8];
  v9 = *v8;
  v10 = *(v8 + 8);
  v20 = v9;
  v21 = v10;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096E8();
  v11 = a1 + v5[9];
  v12 = *v11;
  v13 = *(v11 + 8);
  v20 = v12;
  v21 = v13;
  v19 = 1;
  result = sub_215F096E8();
  v15 = *(a1 + v5[22]);
  if (v15)
  {
    sub_215EB9298(a1, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    sub_215EB9B14(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for ReviewInAppRatingView);
    *(v17 + v16 + v7) = a2;
    v15(a2 + 1, sub_215EB9F24, v17);
  }

  return result;
}

uint64_t sub_215EB8D80(char a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewInAppRatingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B670);
  sub_215F096E8();
  result = sub_215F096E8();
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B700);
    return sub_215F096E8();
  }

  else
  {
    v6 = (a2 + *(v4 + 84));
    if (*v6)
    {
      return (*v6)(0);
    }
  }

  return result;
}

uint64_t sub_215EB8EA8(uint64_t a1)
{
  v2 = sub_215F09078();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = (a1 + *(type metadata accessor for ReviewInAppRatingView() + 84));
  if (*v9)
  {
    (*v9)(1);
  }

  sub_215EB9894(&qword_27CA8B678, MEMORY[0x277CDD848], v8);
  sub_215F09068();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_215EB8FB8(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ReviewInAppRatingView();
  v5 = (a1 + *(result + 84));
  if (*v5)
  {
    return (*v5)(a2);
  }

  return result;
}

uint64_t sub_215EB9008@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9A8);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9B0) + 36));
  *v7 = sub_215EBA664;
  v7[1] = a2;
}

uint64_t sub_215EB90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = sub_215F09098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *a3 = sub_215EBA66C;
  a3[1] = v10;
  a3[2] = 0;
  a3[3] = 0;
}

uint64_t sub_215EB9298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewInAppRatingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215EB92FC()
{
  v0 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_5(v0);
  OUTLINED_FUNCTION_7(*(v1 + 80));

  return sub_215EB8B40();
}

unint64_t sub_215EB9358()
{
  result = qword_27CA8B6C8;
  if (!qword_27CA8B6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B6C0);
    sub_215EBA7B0(&unk_27CA8B6D0);
    sub_215EBA7B0(&unk_27CA8B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B6C8);
  }

  return result;
}

unint64_t sub_215EB943C()
{
  result = qword_27CA8B718;
  if (!qword_27CA8B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B6B8);
    sub_215EB94F4(&unk_27CA8B720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B718);
  }

  return result;
}

unint64_t sub_215EB94F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_10(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_215EBA7B0(&unk_27CA8B760);
    result = OUTLINED_FUNCTION_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_215EB9610(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_10(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_215EB9670()
{
  result = qword_27CA8B740;
  if (!qword_27CA8B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B748);
    sub_215EBA7B0(&unk_27CA8B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B740);
  }

  return result;
}

uint64_t sub_215EB9768(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_5(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

unint64_t sub_215EB97EC()
{
  result = qword_27CA8B890;
  if (!qword_27CA8B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B890);
  }

  return result;
}

unint64_t sub_215EB9840()
{
  result = qword_27CA8B898;
  if (!qword_27CA8B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B898);
  }

  return result;
}

uint64_t sub_215EB9894@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_215F09268();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  sub_215EBA1D0(v6, &v21 - v16, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_0_3();
    return (*(v18 + 32))(a3, v17);
  }

  else
  {
    sub_215F098B8();
    v20 = sub_215F09418();
    sub_215F08EE8();

    sub_215F09258();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v14, v8);
  }
}

uint64_t sub_215EB9A98@<X0>(uint64_t a1@<X8>)
{
  result = sub_215F09238();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_215EB9B14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_215EB9B78(uint64_t a1)
{
  v2 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_5(v2);
  v4 = OUTLINED_FUNCTION_7(*(v3 + 80));
  return sub_215EB8FB8(v4, a1);
}

uint64_t sub_215EB9BD8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_4(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t sub_215EB9C24()
{
  v0 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_5(v0);
  v2 = OUTLINED_FUNCTION_7(*(v1 + 80));
  return sub_215EB8EA8(v2);
}

uint64_t sub_215EB9C6C()
{
  v1 = *(type metadata accessor for ReviewInAppRatingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_215EB8BB4(v2, v3);
}

uint64_t objectdestroy_32Tm()
{
  type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_215F09078();
    OUTLINED_FUNCTION_0_3();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  v9 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_215F09118();
    OUTLINED_FUNCTION_0_3();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2(v0[6]);

  OUTLINED_FUNCTION_2(v0[7]);

  OUTLINED_FUNCTION_2(v0[8]);

  OUTLINED_FUNCTION_2(v0[9]);

  OUTLINED_FUNCTION_2(v0[10]);

  OUTLINED_FUNCTION_2(v0[11]);

  OUTLINED_FUNCTION_2(v0[12]);

  OUTLINED_FUNCTION_2(v0[16]);

  OUTLINED_FUNCTION_2(v0[17]);

  OUTLINED_FUNCTION_13();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_13();
  if (v12)
  {
  }

  return MEMORY[0x2821FE8E8](v1, v6 + v4 + 1, v3 | 7);
}

uint64_t sub_215EB9F24(char a1)
{
  v3 = *(type metadata accessor for ReviewInAppRatingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_215EB8D80(a1, v4);
}

uint64_t sub_215EB9FB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_215EBA00C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_215EBA050(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_215EBA068()
{
  result = qword_27CA8B940;
  if (!qword_27CA8B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B838);
    sub_215EBA7B0(&unk_27CA8B948);
    sub_215EBA120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B940);
  }

  return result;
}

unint64_t sub_215EBA120()
{
  result = qword_27CA8B958;
  if (!qword_27CA8B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B958);
  }

  return result;
}

uint64_t sub_215EBA17C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_215EBA1D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_4(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t objectdestroyTm()
{
  type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_215F09078();
    OUTLINED_FUNCTION_0_3();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  v9 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B5B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_215F09118();
    OUTLINED_FUNCTION_0_3();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2(v0[6]);

  OUTLINED_FUNCTION_2(v0[7]);

  OUTLINED_FUNCTION_2(v0[8]);

  OUTLINED_FUNCTION_2(v0[9]);

  OUTLINED_FUNCTION_2(v0[10]);

  OUTLINED_FUNCTION_2(v0[11]);

  OUTLINED_FUNCTION_2(v0[12]);

  OUTLINED_FUNCTION_2(v0[16]);

  OUTLINED_FUNCTION_2(v0[17]);

  OUTLINED_FUNCTION_13();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_13();
  if (v12)
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_215EBA44C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReviewInAppRatingView();
  OUTLINED_FUNCTION_5(v4);

  return sub_215EB4524(a1, a2);
}

unint64_t sub_215EBA4D8()
{
  result = qword_27CA8B990;
  if (!qword_27CA8B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B680);
    sub_215EBA564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B990);
  }

  return result;
}

unint64_t sub_215EBA564()
{
  result = qword_27CA8B998;
  if (!qword_27CA8B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B660);
    sub_215EBA7B0(&unk_27CA8B9A0);
    sub_215EBA7B0(&unk_27CA8B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B998);
  }

  return result;
}

uint64_t sub_215EBA66C()
{
  v0 = sub_215F09098();
  OUTLINED_FUNCTION_5(v0);

  return sub_215EB9204();
}

unint64_t sub_215EBA6CC()
{
  result = qword_27CA8B9B8;
  if (!qword_27CA8B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B9B0);
    sub_215EBA7B0(&unk_27CA8B9C0);
    sub_215EBA7B0(&unk_27CA8B9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B9B8);
  }

  return result;
}

unint64_t sub_215EBA7B0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_10(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_215EBA924(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_215EBA964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_215EBA9D4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9D8);
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9E0);
  MEMORY[0x28223BE20](v33);
  v14 = &v31 - v13;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8B9E8);
  MEMORY[0x216076120](&v35);
  v16 = v35;
  v17 = v35 >> 6;
  v34 = a5;
  if (v17)
  {
    if (v17 != 1)
    {
      v18 = 0;
      goto LABEL_6;
    }

    v16 = v35 & 0x3F;
  }

  v18 = v16 + 1;
LABEL_6:
  v31 = a1;
  v19 = v18 > a1;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  sub_215F09728();
  v37 = a2;
  v38 = a3;
  v39 = a4;
  MEMORY[0x216076120](&v36, v15);
  v35 = v19;
  sub_215EBAFF0(&qword_27CA8B9F0, &qword_27CA8B9D8);
  sub_215EBAE60();
  v21 = v32;
  sub_215F09578();
  (*(v10 + 8))(v12, v21);
  v22 = sub_215F097C8();
  v23 = &v14[*(v33 + 36)];
  *v23 = v22;
  v23[8] = v19;
  v37 = sub_215EC08C0(v31 + 1);
  v38 = v24;
  sub_215EB3360();
  v25 = sub_215F09528();
  v27 = v26;
  v29 = v28;
  sub_215EBAEB4();
  sub_215F095D8();
  sub_215EB33B4(v25, v27, v29 & 1);

  return sub_215BB1018(v14);
}

uint64_t sub_215EBAD18()
{
  MEMORY[0x2160761A0](0.5, 1.0, 0.0);
  sub_215F090A8();
}

uint64_t sub_215EBAE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215F09688();
  *a1 = result;
  return result;
}

unint64_t sub_215EBAE60()
{
  result = qword_27CA8B9F8;
  if (!qword_27CA8B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8B9F8);
  }

  return result;
}

unint64_t sub_215EBAEB4()
{
  result = qword_27CA8BA00;
  if (!qword_27CA8BA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8B9D8);
    sub_215EBAFF0(&qword_27CA8B9F0, &qword_27CA8B9D8);
    sub_215EBAE60();
    swift_getOpaqueTypeConformance2();
    sub_215EBAFF0(&qword_27CA8B760, &qword_27CA8B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA00);
  }

  return result;
}

uint64_t sub_215EBAFF0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_215EBB05C()
{
  result = qword_27CA8BA08;
  if (!qword_27CA8BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BA10);
    sub_215EBAEB4();
    sub_215EBB0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA08);
  }

  return result;
}

unint64_t sub_215EBB0E8()
{
  result = qword_27CA8BA18;
  if (!qword_27CA8BA18)
  {
    sub_215F09408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA18);
  }

  return result;
}

uint64_t sub_215EBB15C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v63 = a2;
  sub_215F09158();
  OUTLINED_FUNCTION_1();
  v60 = v4;
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v59 = v6 - v5;
  sub_215F090F8();
  OUTLINED_FUNCTION_1();
  v55 = v8;
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = sub_215F09398();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA20);
  OUTLINED_FUNCTION_1();
  v57 = v20;
  v58 = v19;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA28);
  OUTLINED_FUNCTION_1();
  v53 = v25;
  v54 = v24;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA30);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v50 - v30;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA38);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v50 - v33;
  sub_215F093A8();
  v62 = a1;
  if ((a1 & 0x8000) != 0)
  {
    sub_215F090E8();
  }

  else
  {
    sub_215F090D8();
  }

  v35 = sub_215EBB81C(&qword_27CA8BA40, MEMORY[0x277CDE278]);
  sub_215F09598();
  (*(v55 + 8))(v11, v56);
  (*(v14 + 8))(v18, v12);
  v36 = v59;
  sub_215F09148();
  v64 = v12;
  v65 = v35;
  swift_getOpaqueTypeConformance2();
  sub_215EBB81C(&qword_27CA8BA48, MEMORY[0x277CDDB18]);
  v37 = v58;
  v38 = v61;
  sub_215F09568();
  (*(v60 + 8))(v36, v38);
  (*(v57 + 8))(v23, v37);
  v39 = sub_215EBB6C8(v62 & 1, v62 & 0xFF01);
  (*(v53 + 32))(v31, v28, v54);
  *&v31[*(v52 + 36)] = v39;
  v40 = sub_215F094D8();
  KeyPath = swift_getKeyPath();
  sub_215EBB958(v31, v34, &qword_27CA8BA30);
  v42 = &v34[*(v51 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA50);
  v44 = v63;
  v45 = (v63 + *(v43 + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BA58) + 28);
  v47 = *MEMORY[0x277CE1050];
  sub_215F096A8();
  OUTLINED_FUNCTION_0_3();
  (*(v48 + 104))(v45 + v46, v47);
  *v45 = swift_getKeyPath();
  return sub_215EBB958(v34, v44, &qword_27CA8BA38);
}

uint64_t sub_215EBB6C8(char a1, unsigned __int16 a2)
{
  v4 = sub_215F095F8();
  MEMORY[0x28223BE20](v4);
  if (!(a2 >> 14))
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = sub_215F09608();
    goto LABEL_7;
  }

  if (a2 >> 14 != 1)
  {
    goto LABEL_6;
  }

  if ((a1 & 1) == 0)
  {
LABEL_8:
    LODWORD(v10) = sub_215F09368();
    return sub_215F09048();
  }

  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  v7 = sub_215F09648();
LABEL_7:
  v10 = v7;
  return sub_215F09048();
}

uint64_t sub_215EBB81C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215EBB890(uint64_t a1)
{
  v2 = sub_215F096A8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_215F09198();
}

uint64_t sub_215EBB958(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for ReviewInAppRatingStarControlButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReviewInAppRatingStarControlButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_215EBBB3C()
{
  result = qword_27CA8BA60;
  if (!qword_27CA8BA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BA50);
    sub_215EBBBF4();
    sub_215EBAFF0(&qword_27CA8BA98, &qword_27CA8BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA60);
  }

  return result;
}

unint64_t sub_215EBBBF4()
{
  result = qword_27CA8BA68;
  if (!qword_27CA8BA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BA38);
    sub_215EBBCAC();
    sub_215EBAFF0(&qword_27CA8BA88, &qword_27CA8BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA68);
  }

  return result;
}

unint64_t sub_215EBBCAC()
{
  result = qword_27CA8BA70;
  if (!qword_27CA8BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA8BA20);
    sub_215F09158();
    sub_215F09398();
    sub_215EBB81C(&qword_27CA8BA40, MEMORY[0x277CDE278]);
    swift_getOpaqueTypeConformance2();
    sub_215EBB81C(&qword_27CA8BA48, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_215EBAFF0(&qword_27CA8BA78, &qword_27CA8BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BA70);
  }

  return result;
}

void sub_215EBBE5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  if (!a3)
  {
    v23 = sub_215F09818();
    v25 = v24;
    objc_allocWithZone(MEMORY[0x277CCA9B8]);
    _Block_copy(a5);
    v26 = sub_215EBF07C(v23, v25, 7, 0);
    if (qword_27CA8B550 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v27, qword_27CA8CEE8);
    v28 = sub_215F098A8();
    v29 = sub_215F08EF8();
    if (!os_log_type_enabled(v29, v28))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_215EBF5C4(0, 0xE000000000000000, &v42);
    *(v30 + 12) = 2082;
    v32 = 0xD000000000000037;
    v33 = 0x8000000215F75730;
    goto LABEL_17;
  }

  if (a1)
  {
    _Block_copy(a5);

    v13 = [a1 view];
    if (!v13)
    {
      _Block_release(a5);
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 window];

    if (v15)
    {
      v16 = [v15 windowScene];

      if (v16)
      {
        v17 = [objc_opt_self() currentProcess];
        v18 = objc_allocWithZone(sub_215F08EB8());
        v19 = sub_215F08EA8();
        v20 = sub_215F09888();
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
        v21 = swift_allocObject();
        v21[2] = 0;
        v21[3] = 0;
        v21[4] = a4;
        v21[5] = v19;
        v21[6] = v16;
        v21[7] = sub_215EC0178;
        v21[8] = v12;
        v22 = a4;

        sub_215EBD064(0, 0, v11, &unk_215F40F68, v21);

        _Block_release(a5);
        return;
      }
    }
  }

  else
  {
    _Block_copy(a5);
  }

  v34 = sub_215F09818();
  v36 = v35;
  v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v26 = sub_215EBF07C(v34, v36, 0, 0);
  if (qword_27CA8B550 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v38, qword_27CA8CEE8);
  v28 = sub_215F098A8();
  v29 = sub_215F08EF8();
  if (os_log_type_enabled(v29, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_215EBF5C4(0, 0xE000000000000000, &v42);
    *(v30 + 12) = 2082;
    v33 = 0x8000000215F75770;
    v32 = 0xD00000000000002BLL;
LABEL_17:
    *(v30 + 14) = sub_215EBF5C4(v32, v33, &v42);
    _os_log_impl(&dword_215BAE000, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216077BC0](v31, -1, -1);
    MEMORY[0x216077BC0](v30, -1, -1);
  }

LABEL_18:

  v39 = v26;
  v40 = sub_215F08E58();
  (a5)[2](a5, 0, v40);

  _Block_release(a5);
}

uint64_t sub_215EBC3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_215EBC478;

  return sub_215EBC558(a5, a6, a7, a8);
}

uint64_t sub_215EBC478()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_0();

  return v3();
}

uint64_t sub_215EBC558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_215F08E98();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215EBC628, 0, 0);
}

uint64_t sub_215EBC628()
{
  OUTLINED_FUNCTION_20();
  sub_215F08ED8();
  swift_allocObject();
  v0[20] = sub_215F08EC8();
  sub_215EBFDA8();
  OUTLINED_FUNCTION_8_0();
  v1 = sub_215EBEFE8();
  v0[21] = v1;
  v7 = (*MEMORY[0x277CEE7E0] + MEMORY[0x277CEE7E0]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_215EBC71C;
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  return v7(v3, v4, v5, v1);
}

uint64_t sub_215EBC71C()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_215EBC818()
{
  v57 = v0;
  if (qword_27CA8B550 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = type metadata accessor for SKLogger();
  v2 = __swift_project_value_buffer(v1, qword_27CA8CEE8);
  OUTLINED_FUNCTION_10_0();
  sub_215F098E8();
  v3 = v56;
  *(v0 + 32) = v55;
  *(v0 + 40) = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x216076230](0xD000000000000027);
  sub_215F09908();
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_215F09898();

  v7 = sub_215F08EF8();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = OUTLINED_FUNCTION_18();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136446466;
    *(v8 + 4) = OUTLINED_FUNCTION_15(v9, v10, &v55);
    *(v8 + 12) = 2082;
    v11 = sub_215EBF5C4(v5, v4, &v55);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_215BAE000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  (*(v14 + 16))(v12, *(v0 + 152), v13);
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == *MEMORY[0x277CEE798])
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v16 = 0;
    v17 = 3;
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x277CEE790])
  {
    v18 = *(v0 + 144);
    (*(*(v0 + 136) + 96))(v18, *(v0 + 128));
    v16 = *v18;
    OUTLINED_FUNCTION_10_0();
    sub_215F098E8();
    v19 = v56;
    *(v0 + 64) = v55;
    *(v0 + 72) = v19;
    MEMORY[0x216076230](0xD00000000000002CLL, 0x8000000215F75830);
    *(v0 + 88) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAE0);
    sub_215F09908();
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = sub_215F098A8();

    v23 = sub_215F08EF8();

    if (os_log_type_enabled(v23, v22))
    {
      OUTLINED_FUNCTION_18();
      v24 = OUTLINED_FUNCTION_14_0();
      v55 = v24;
      *v2 = 136446466;
      v26 = OUTLINED_FUNCTION_15(v24, v25, &v55);
      OUTLINED_FUNCTION_11_0(v26);
      v27 = sub_215EBF5C4(v21, v20, &v55);

      *(v2 + 14) = v27;
      OUTLINED_FUNCTION_16(&dword_215BAE000, v28, v22, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v29 = v16;
  }

  else
  {
    if (v15 == *MEMORY[0x277CEE7A0])
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_10_0();
    sub_215F098E8();
    v30 = v56;
    *(v0 + 48) = v55;
    *(v0 + 56) = v30;
    MEMORY[0x216076230](0xD00000000000002BLL, 0x8000000215F75800);
    sub_215F09908();
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    v33 = sub_215F098A8();

    v34 = sub_215F08EF8();

    if (os_log_type_enabled(v34, v33))
    {
      OUTLINED_FUNCTION_18();
      v35 = OUTLINED_FUNCTION_14_0();
      v55 = v35;
      *v2 = 136446466;
      v37 = OUTLINED_FUNCTION_15(v35, v36, &v55);
      OUTLINED_FUNCTION_11_0(v37);
      v38 = sub_215EBF5C4(v32, v31, &v55);

      *(v2 + 14) = v38;
      OUTLINED_FUNCTION_16(&dword_215BAE000, v39, v33, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v41 = *(v0 + 136);
    v40 = *(v0 + 144);
    v42 = *(v0 + 128);
    v43 = sub_215F09818();
    v45 = v44;
    v46 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = OUTLINED_FUNCTION_17(v43, v45);
    v47 = *(v41 + 8);
    v48 = v16;
    v47(v40, v42);
  }

  v17 = 0;
LABEL_20:
  v49 = *(v0 + 168);
  v50 = *(v0 + 152);
  v51 = *(v0 + 128);
  v52 = *(v0 + 136);
  (*(v0 + 112))(v17, v16);

  (*(v52 + 8))(v50, v51);

  OUTLINED_FUNCTION_2_0();

  return v53();
}

uint64_t sub_215EBCDFC()
{
  OUTLINED_FUNCTION_13_0();
  v17 = v0;

  if (qword_27CA8B550 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_27CA8CEE8);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_215F098E8();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_19();
  MEMORY[0x216076230](0xD000000000000022);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAE0);
  sub_215F09908();
  MEMORY[0x216076230](46, 0xE100000000000000);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_215F098A8();

  v6 = sub_215F08EF8();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = OUTLINED_FUNCTION_18();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = OUTLINED_FUNCTION_15(v8, v9, v16);
    *(v7 + 12) = 2082;
    v10 = sub_215EBF5C4(v4, v3, v16);

    *(v7 + 14) = v10;
    _os_log_impl(&dword_215BAE000, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 112);
  v13 = v11;
  v12(0, v11);

  OUTLINED_FUNCTION_2_0();

  return v14();
}

uint64_t sub_215EBD064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_215EBFC10(a3, v24 - v10);
  v12 = sub_215F09888();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_215EC0010(v11, &qword_27CA8BAA0);
  }

  else
  {
    sub_215F09878();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_215F09868();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_215F09838() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_215EC0010(a3, &qword_27CA8BAA0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_215EC0010(a3, &qword_27CA8BAA0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_215EBD3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_215F08E58();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_215EBD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  if (a2)
  {
    v16 = sub_215F09888();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v6;
    v17[5] = a1;
    v17[6] = a2;
    v17[7] = a3;
    v17[8] = a4;
    v17[9] = a5;
    v17[10] = a6;

    v18 = v6;

    sub_215EBD064(0, 0, v15, &unk_215F40F00, v17);
  }

  else
  {
    if (qword_27CA8B550 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v19 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v19, qword_27CA8CEE8);
    v20 = sub_215F098A8();
    v21 = sub_215F08EF8();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = OUTLINED_FUNCTION_18();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136446466;
      *(v22 + 4) = OUTLINED_FUNCTION_15(v23, v24, &v31);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_215EBF5C4(0xD00000000000003ALL, 0x8000000215F75660, &v31);
      _os_log_impl(&dword_215BAE000, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_9_0();
    }

    v25 = sub_215F09818();
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v30 = OUTLINED_FUNCTION_17(v25, v27);
    a5();
    v29 = v30;
  }
}

uint64_t sub_215EBD714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = v17;
  *(v8 + 40) = v18;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAA8) - 8;
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  v13 = *(v11 + 56);
  *(v8 + 72) = v13;
  v14 = swift_task_alloc();
  *(v8 + 56) = v14;
  *v14 = v8;
  v14[1] = sub_215EBD82C;

  return sub_215EBDC10(v12, v12 + v13, a5, a6);
}

uint64_t sub_215EBD82C()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_215EBD928()
{
  OUTLINED_FUNCTION_5_0();
  v1 = *(v0 + 48);
  (*(v0 + 16))(v1, v1 + *(v0 + 72));
  sub_215EC0010(v1, &qword_27CA8BAA8);

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t sub_215EBD9B4()
{
  OUTLINED_FUNCTION_13_0();
  v25 = v0;
  if (qword_27CA8B550 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = type metadata accessor for SKLogger();
  v2 = __swift_project_value_buffer(v1, qword_27CA8CEE8);
  sub_215F098E8();

  v24[0] = 0xD00000000000001CLL;
  v24[1] = 0x8000000215F756A0;
  v3 = sub_215F08E58();
  v4 = [v3 description];
  v5 = sub_215F09818();
  v7 = v6;

  MEMORY[0x216076230](v5, v7);

  v8 = sub_215F098A8();

  v9 = sub_215F08EF8();

  if (os_log_type_enabled(v9, v8))
  {
    OUTLINED_FUNCTION_18();
    v10 = OUTLINED_FUNCTION_14_0();
    v24[0] = v10;
    *v2 = 136446466;
    v12 = OUTLINED_FUNCTION_15(v10, v11, v24);
    OUTLINED_FUNCTION_11_0(v12);
    v13 = sub_215EBF5C4(0xD00000000000001CLL, 0x8000000215F756A0, v24);

    *(v2 + 14) = v13;
    OUTLINED_FUNCTION_16(&dword_215BAE000, v14, v8, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v15 = *(v0 + 64);
  v16 = *(v0 + 32);
  v17 = sub_215F09818();
  v19 = v18;
  v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v21 = OUTLINED_FUNCTION_17(v17, v19);
  v16();

  OUTLINED_FUNCTION_2_0();

  return v22();
}

uint64_t sub_215EBDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = sub_215F08E88();
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215EBDCEC, 0, 0);
}

uint64_t sub_215EBDCEC()
{
  sub_215EBFDA8();
  v1 = [objc_opt_self() currentProcess];
  v2 = OUTLINED_FUNCTION_8_0();
  v7 = sub_215EBEE20(v2, v3, v4, v5, v6);
  v0[47] = v7;
  OUTLINED_FUNCTION_19();
  v8 = sub_215F09808();
  v9 = [v7 URLForKey_];
  v0[48] = v9;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_215EBDE94;
  v10 = swift_continuation_init();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAB8);
  v0[49] = v11;
  v0[25] = v11;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_215EBEEC0;
  v0[21] = &block_descriptor;
  v0[22] = v10;
  [v9 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_215EBDE94()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_215EBDF94()
{
  OUTLINED_FUNCTION_13_0();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[34];
  sub_215F08E78();

  OUTLINED_FUNCTION_19();
  v5 = sub_215F09808();
  v6 = [v3 URLForKey_];
  v0[51] = v6;

  v0[10] = v0;
  v0[15] = v0 + 36;
  v0[11] = sub_215EBE100;
  v7 = swift_continuation_init();
  v0[33] = v1;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_215EBEEC0;
  v0[29] = &block_descriptor_21;
  v0[30] = v7;
  [v6 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_215EBE100()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 112);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_215EBE200()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 288);
  sub_215F08E78();

  sub_215EBE738(v5, v4, v2, v3);
  sub_215EBE738(*(v0 + 320), *(v0 + 328), *(v0 + 360), *(v0 + 312));
  v7 = *(v0 + 368);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 304);

  v14 = *(v11 + 8);
  v14(v8, v10);
  v14(v7, v10);
  (*(v11 + 32))(v13, v9, v10);

  OUTLINED_FUNCTION_2_0();

  return v15();
}

uint64_t sub_215EBE400()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  swift_willThrow();

  OUTLINED_FUNCTION_2_0();

  return v3();
}

uint64_t sub_215EBE48C()
{
  OUTLINED_FUNCTION_13_0();
  v1 = v0[51];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[42];
  v5 = v0[43];
  swift_willThrow();

  (*(v5 + 8))(v2, v4);

  OUTLINED_FUNCTION_2_0();

  return v6();
}

void sub_215EBE654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_215F08E68();
  v5 = sub_215F08E68();
  (*(a3 + 16))(a3, v4, v5);
}

void sub_215EBE6D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_215F08E58();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_215EBE738@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v48 = a4;
  v53 = a1;
  v54 = a2;
  v5 = sub_215F08E88();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SKLogger();
  MEMORY[0x28223BE20](v50);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_215F08E48();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v59 = sub_215F08DF8();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAC8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v51 = a3;
  sub_215F08E28();
  v58 = v16;
  sub_215F08DE8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v9) || (v21 = sub_215F08E08()) == 0)
  {

    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAD0);
  v22 = v57;
  v23 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_215F40EE0;
  (*(v22 + 16))(v24 + v23, v58, v59);
  v60 = v20;
  sub_215EBFEAC(v24);
  if (__swift_getEnumTagSinglePayload(v19, 1, v9))
  {
  }

  else
  {
    sub_215F08E18();
  }

  v25 = v56;
  if (__swift_getEnumTagSinglePayload(v19, 1, v9))
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  }

  else
  {
    v26 = v49;
    (*(v49 + 16))(v11, v19, v9);
    sub_215F08E38();
    (*(v26 + 8))(v11, v9);
    if (__swift_getEnumTagSinglePayload(v14, 1, v25) != 1)
    {
      (*(v57 + 8))(v58, v59);
      (*(v55 + 32))(v48, v14, v25);
      return sub_215EC0010(v19, &qword_27CA8BAC8);
    }
  }

  sub_215EC0010(v14, &qword_27CA8BAC0);
  v27 = v55;
  if (qword_27CA8B550 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v50, qword_27CA8CEE8);
  sub_215EBFFAC(v28, v8);
  v29 = v52;
  (*(v27 + 16))(v52, v51, v25);
  v30 = sub_215F08EF8();
  v31 = sub_215F08F18();
  (*(*(v31 - 8) + 8))(v8, v31);
  v32 = sub_215F098A8();
  if (os_log_type_enabled(v30, v32))
  {
    v33 = v27;
    v34 = swift_slowAlloc();
    v35 = v29;
    v36 = swift_slowAlloc();
    v60 = v36;
    *v34 = 136380675;
    sub_215EC0070();
    v37 = sub_215F09928();
    v38 = v25;
    v40 = v39;
    (*(v33 + 8))(v35, v38);
    v41 = sub_215EBF5C4(v37, v40, &v60);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_215BAE000, v30, v32, "Malformed URL for review operations: %{private}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x216077BC0](v36, -1, -1);
    MEMORY[0x216077BC0](v34, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v29, v25);
  }

  v42 = sub_215F09818();
  v44 = v43;
  v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_215EBF07C(v42, v44, 0, 0);
  swift_willThrow();
  (*(v57 + 8))(v58, v59);
  return sub_215EC0010(v19, &qword_27CA8BAC8);
}

id sub_215EBEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_215F09808();

  v7 = sub_215F09808();

  v8 = [swift_getObjCClassFromMetadata() bagForProfile:v6 profileVersion:v7 processInfo:a5];

  return v8;
}

uint64_t *sub_215EBEEC0(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_215EBEF58(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_215EBEFC4(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215EBEF58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAE0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_215EBEFC4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x282200950]();
}

id sub_215EBEFE8()
{
  v0 = sub_215F09808();

  v1 = sub_215F09808();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

id sub_215EBF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_215F09808();

  if (a4)
  {
    v8 = sub_215F097E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_215EBF12C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_215EBF224;

  return v6(a1);
}

uint64_t sub_215EBF224()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_0();

  return v3();
}

size_t sub_215EBF308(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_215EBF3F4(v8, v7);
  v10 = *(sub_215F08DF8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_215EBF4F0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_215EBF3F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAD0);
  v4 = *(sub_215F08DF8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215EBF4F0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_215F08DF8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_215F08DF8();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_215EBF5C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_215EBF688(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_215EBFDFC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_215EBF688(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_215EBF788(a5, a6);
    *a1 = v9;
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
    result = sub_215F098F8();
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

uint64_t sub_215EBF788(uint64_t a1, unint64_t a2)
{
  v3 = sub_215EBF7D4(a1, a2);
  sub_215EBF8EC(&unk_2827FEF90);
  return v3;
}

uint64_t sub_215EBF7D4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_215F09858())
  {
    result = sub_215EBF9D0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_215F098D8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_215F098F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_215EBF8EC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_215EBFA40(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_215EBF9D0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_215EBFA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_215EBFB34()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_0(v2);
  *v3 = v4;
  v3[1] = sub_215EC0248;
  OUTLINED_FUNCTION_12_0();

  return sub_215EBD714(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_215EBFC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215EBFC80()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_0(v1);

  return v4(v3);
}

uint64_t sub_215EBFD14()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_0(v1);

  return v4(v3);
}

unint64_t sub_215EBFDA8()
{
  result = qword_27CA8BAB0;
  if (!qword_27CA8BAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA8BAB0);
  }

  return result;
}

uint64_t sub_215EBFDFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

int64_t sub_215EBFEAC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_215EC00C8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_215F08DF8();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_215EBFFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215EC0010(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_215EC0070()
{
  result = qword_27CA8BAD8;
  if (!qword_27CA8BAD8)
  {
    sub_215F08E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA8BAD8);
  }

  return result;
}

size_t sub_215EC00C8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_215EBF308(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_215EC0180()
{
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_0(v2);
  *v3 = v4;
  v3[1] = sub_215EBC478;
  OUTLINED_FUNCTION_12_0();

  return sub_215EBC3B4(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_0()
{

  JUMPOUT(0x216077BC0);
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_215EBF5C4(0, 0xE000000000000000, a3);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

id OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return sub_215EBF07C(a1, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_slowAlloc();
}

uint64_t sub_215EC0400()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC04AC()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC0564()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC0610()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC06BC()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC0768()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC0814()
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_19();
  v2 = sub_215F09808();
  v3 = OUTLINED_FUNCTION_0_5(v2, sel_localizedStringForKey_value_table_);

  sub_215F09818();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC08C0(uint64_t a1)
{
  type metadata accessor for ReviewInAppRatingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_215F09808();

  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_215F09818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BB20);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_215F40EE0;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = a1;
  sub_215F09828();
  OUTLINED_FUNCTION_2_1();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_215EC0A10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_215F09698();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = *v2;
  sub_215F09678();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_215F096B8();

  (*(v5 + 8))(v7, v4);
  _s4IconVMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA8BAF0);
  sub_215F08FE8();
  sub_215F08FE8();
  sub_215F09798();
  sub_215F09038();
  v19 = 1;
  *&v18[6] = v20;
  *&v18[22] = v21;
  *&v18[38] = v22;
  sub_215F09618();
  v10 = sub_215F09638();

  LOBYTE(v4) = sub_215F09488();
  result = sub_215F08F88();
  v12 = *&v18[16];
  *(a1 + 18) = *v18;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v12;
  *(a1 + 50) = *&v18[32];
  *(a1 + 64) = *&v18[46];
  *(a1 + 72) = v10;
  *(a1 + 80) = xmmword_215F40F80;
  *(a1 + 96) = 0x4008000000000000;
  *(a1 + 104) = v4;
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_215EC0C54(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_215EC0C94@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_215EC0C54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_215EC0CC8(unsigned __int8 a1)
{
  sub_215F09938();
  MEMORY[0x216076330](a1 + 1);
  return sub_215F09958();
}

uint64_t sub_215EC0D50(uint64_t a1, unsigned __int8 a2)
{
  sub_215F09938();
  MEMORY[0x216076330](a2 + 1);
  return sub_215F09958();
}

uint64_t sub_215EC0D98(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }

    return 0;
  }

  if (a2 > 0x3Fu)
  {
    return 0;
  }

  return a1 + 1 == a2 + 1;
}

uint64_t _s11RatingStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s11RatingStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}