@interface UserNotificationManager
+ (id)sharedInstance:()basic_string<char;
- (BOOL)setActionForHeader:(UserNotificationManager *)self notificationContent:(SEL)content callbackData:(NotificationInfo *)data;
- (id).cxx_construct;
- (id)init:()basic_string<char;
- (void)setUpNotificationCenter:(id)center;
- (void)showNotification:(NotificationInfo *)notification withCallBackData:;
- (void)updateAnalyticsEvent:(const void *)event withUserReponse:(BOOL)reponse;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation UserNotificationManager

+ (id)sharedInstance:()basic_string<char
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  block[2] = __42__UserNotificationManager_sharedInstance___block_invoke;
  block[3] = &__block_descriptor_56_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3->var0.var1.var0, a3->var0.var1.var1);
    if (qword_2A18B7768 == -1)
    {
LABEL_3:
      v3 = qword_2A18B7760;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __p = *a3;
    if (qword_2A18B7768 == -1)
    {
      goto LABEL_3;
    }
  }

  dispatch_once(&qword_2A18B7768, block);
  v3 = qword_2A18B7760;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_4:

    return v3;
  }

LABEL_9:
  v5 = v3;
  operator delete(__p.__r_.__value_.__l.__data_);
  v3 = v5;

  return v3;
}

void __42__UserNotificationManager_sharedInstance___block_invoke(uint64_t a1)
{
  v2 = [UserNotificationManager alloc];
  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    std::string::__init_copy_ctor_external(&__p, v3, v4);
    v2 = v5;
  }

  else
  {
    __p = *(a1 + 32);
  }

  v6 = [(UserNotificationManager *)v2 init:&__p];
  v7 = qword_2A18B7760;
  qword_2A18B7760 = v6;

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (id)init:()basic_string<char
{
  v10.receiver = self;
  v10.super_class = UserNotificationManager;
  v4 = [(UserNotificationManager *)&v10 init];
  if (!v4)
  {
    return v4;
  }

  if (*(&var0->var0.var1 + 23) < 0)
  {
    if (!var0->var0.var1.var1)
    {
      return v4;
    }

    v9 = dispatch_queue_create(var0->var0.var1.var0, 0);
    fObj = v4->fQueue.fObj.fObj;
    v4->fQueue.fObj.fObj = v9;
    if (!fObj)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*(&var0->var0.var1 + 23))
    {
      return v4;
    }

    v5 = dispatch_queue_create(var0->var0.var0.var0, 0);
    fObj = v4->fQueue.fObj.fObj;
    v4->fQueue.fObj.fObj = v5;
    if (!fObj)
    {
      goto LABEL_6;
    }
  }

  dispatch_release(fObj);
LABEL_6:
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:var0];
  [(UserNotificationManager *)v4 setUpNotificationCenter:v7];

  return v4;
}

- (void)setUpNotificationCenter:(id)center
{
  v12 = *MEMORY[0x29EDCA608];
  centerCopy = center;
  if (!self->fUserNotificationCenter)
  {
    centerCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.telephony.%@", centerCopy];
    v6 = [objc_alloc(MEMORY[0x29EDBCCF0]) initWithBundleIdentifier:centerCopy];
    fUserNotificationCenter = self->fUserNotificationCenter;
    self->fUserNotificationCenter = v6;

    [(UNUserNotificationCenter *)self->fUserNotificationCenter setDelegate:self];
    [(UNUserNotificationCenter *)self->fUserNotificationCenter setWantsNotificationResponsesDelivered];
    if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
    {
      qword_2A18B77A8 = 0;
      qword_2A18B77B0 = 0;
      __cxa_guard_release(&qword_2A18B77A0);
    }

    if (qword_2A18B7798 == -1)
    {
      v8 = qword_2A18B77B0;
      if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
      v8 = qword_2A18B77B0;
      if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    *buf = 138412290;
    v11 = centerCopy;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_INFO, "UserNotificationCenter created with bundleID %@", buf, 0xCu);
    goto LABEL_6;
  }

LABEL_7:

  v9 = *MEMORY[0x29EDCA608];
}

- (BOOL)setActionForHeader:(UserNotificationManager *)self notificationContent:(SEL)content callbackData:(NotificationInfo *)data
{
  v124 = v4;
  v127 = *MEMORY[0x29EDCA608];
  v7 = v3;
  v8 = v7;
  if ((atomic_load_explicit(&qword_2A18B7770, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A18B7770);
    if (v7)
    {
      _MergedGlobals_0 = TelephonyUtilIsInternalBuild();
      __cxa_guard_release(&qword_2A18B7770);
    }
  }

  if ((atomic_load_explicit(&qword_2A18B7780, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A18B7780);
    if (v7)
    {
      if (_MergedGlobals_0)
      {
        v120 = @"prefs:root=INTERNAL_SETTINGS&path=Baseband%20Manager/Manage%20Logs";
      }

      else
      {
        v120 = @"prefs:root=CARRIER_SETTINGS&path=Baseband%20Manager/Manage%20Logs";
      }

      qword_2A18B7778 = v120;
      __cxa_guard_release(&qword_2A18B7780);
    }
  }

  if ((atomic_load_explicit(&qword_2A18B7790, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A18B7790);
    if (v7)
    {
      if (_MergedGlobals_0)
      {
        v121 = @"prefs:root=INTERNAL_SETTINGS&path=Baseband%20Manager/Logging%20Settings";
      }

      else
      {
        v121 = @"prefs:root=CARRIER_SETTINGS&path=Baseband%20Manager/Logging%20Settings";
      }

      qword_2A18B7788 = v121;
      __cxa_guard_release(&qword_2A18B7790);
    }
  }

  if (config::hw::watch(v7))
  {
    [MEMORY[0x29EDBCCD0] iconForApplicationIdentifier:@"com.apple.Preferences"];
  }

  else
  {
    [MEMORY[0x29EDBCCD0] iconForSystemImageNamed:@"antenna.radiowaves.left.and.right"];
  }
  v9 = ;
  [v8 setIcon:v9];

  v10 = data + 1;
  v11 = *(&data[1].var0.var0.var1 + 23);
  var1 = v11;
  var0 = data + 1;
  if ((v11 & 0x8000000000000000) != 0)
  {
    var0 = data[1].var0.var0.var1.var0;
    var1 = data[1].var0.var0.var1.var1;
  }

  if (var1 >= 0x14)
  {
    v14 = 20;
  }

  else
  {
    v14 = var1;
  }

  v15 = memcmp(var0, "Telephony_Dump_Ready", v14);
  if (var1 != 20 || v15)
  {
    v16 = v11;
    v17 = data + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v17 = data[1].var0.var0.var1.var0;
      v16 = data[1].var0.var0.var1.var1;
    }

    if (v16 >= 0x1D)
    {
      v18 = 29;
    }

    else
    {
      v18 = v16;
    }

    v19 = memcmp(v17, "Logging_Profile_Not_Installed", v18);
    if (v16 == 29 && !v19)
    {
      goto LABEL_51;
    }

    v20 = v11;
    v21 = data + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v21 = data[1].var0.var0.var1.var0;
      v20 = data[1].var0.var0.var1.var1;
    }

    v22 = v20 >= 0x1B ? 27 : v20;
    v23 = memcmp(v21, "Telephony_Dump_Insufficient", v22);
    if (v20 == 27 && !v23)
    {
      goto LABEL_51;
    }

    v24 = v11;
    v25 = data + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v25 = data[1].var0.var0.var1.var0;
      v24 = data[1].var0.var0.var1.var1;
    }

    v26 = v24 >= 0x17 ? 23 : v24;
    v27 = memcmp(v25, "Cellular_Issue_Detected", v26);
    if (v24 == 23 && !v27)
    {
      goto LABEL_51;
    }

    v28 = v11;
    v29 = data + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v29 = data[1].var0.var0.var1.var0;
      v28 = data[1].var0.var0.var1.var1;
    }

    v30 = v28 >= 0x17 ? 23 : v28;
    v31 = memcmp(v29, "Baseband_Config_Updated", v30);
    if (v28 == 23 && !v31)
    {
      goto LABEL_51;
    }

    v32 = data + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v32 = data[1].var0.var0.var1.var0;
      v11 = data[1].var0.var0.var1.var1;
    }

    v33 = v11 >= 0x16 ? 22 : v11;
    v34 = memcmp(v32, "Telephony_Dump_Started", v33);
    if (v11 == 22 && !v34)
    {
LABEL_51:
      v11 = [MEMORY[0x29EDBCCD0] iconForApplicationIdentifier:@"com.apple.Preferences"];
      [v8 setIcon:v11];
      goto LABEL_52;
    }

    if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
    {
      qword_2A18B77A8 = 0;
      qword_2A18B77B0 = 0;
      __cxa_guard_release(&qword_2A18B77A0);
    }

    if (qword_2A18B7798 == -1)
    {
      v117 = qword_2A18B77B0;
      if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR))
      {
LABEL_237:
        v107 = 0;
        goto LABEL_214;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
      v117 = qword_2A18B77B0;
      if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_237;
      }
    }

    if (*(&data[1].var0.var0.var1 + 23) < 0)
    {
      v10 = v10->var0.var0.var1.var0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_error_impl(&dword_296FF7000, v117, OS_LOG_TYPE_ERROR, "Unsupported header: %s", &buf, 0xCu);
    v107 = 0;
    goto LABEL_214;
  }

  if (_MergedGlobals_0 != 1)
  {
    goto LABEL_53;
  }

  v11 = [MEMORY[0x29EDBCCD0] iconForApplicationIdentifier:@"com.apple.TapToRadar"];
  [v8 setIcon:v11];
LABEL_52:

  LOBYTE(v11) = *(&data[1].var0.var0.var1 + 23);
LABEL_53:
  if ((v11 & 0x80) != 0)
  {
    v36 = data[1].var0.var0.var1.var0;
    v35 = data[1].var0.var0.var1.var1;
  }

  else
  {
    v35 = v11;
    v36 = data + 1;
  }

  if (v35 >= 0x16)
  {
    v37 = 22;
  }

  else
  {
    v37 = v35;
  }

  v38 = memcmp(v36, "Telephony_Dump_Started", v37);
  if ((v35 != 22 || v38) && ((v11 & 0x80) != 0 ? (v40 = data[1].var0.var0.var1.var0, v39 = data[1].var0.var0.var1.var1) : (v39 = v11, v40 = data + 1), v39 >= 0x14 ? (v41 = 20) : (v41 = v39), (v42 = memcmp(v40, "Telephony_Dump_Ready", v41), v39 != 20) || v42))
  {
    if ((v11 & 0x80) != 0)
    {
      v72 = data[1].var0.var0.var1.var0;
      v71 = data[1].var0.var0.var1.var1;
    }

    else
    {
      v71 = v11;
      v72 = data + 1;
    }

    if (v71 >= 0x1B)
    {
      v95 = 27;
    }

    else
    {
      v95 = v71;
    }

    v96 = memcmp(v72, "Telephony_Dump_Insufficient", v95);
    if (v71 != 27 || v96)
    {
      if ((v11 & 0x80) != 0)
      {
        v98 = data[1].var0.var0.var1.var0;
        v97 = data[1].var0.var0.var1.var1;
      }

      else
      {
        v97 = v11;
        v98 = data + 1;
      }

      if (v97 >= 0x17)
      {
        v110 = 23;
      }

      else
      {
        v110 = v97;
      }

      v111 = memcmp(v98, "Cellular_Issue_Detected", v110);
      if (v97 != 23 || v111)
      {
        if ((v11 & 0x80) != 0)
        {
          v10 = data[1].var0.var0.var1.var0;
          v112 = data[1].var0.var0.var1.var1;
        }

        else
        {
          v112 = v11;
        }

        if (v112 >= 0x17)
        {
          v113 = 23;
        }

        else
        {
          v113 = v112;
        }

        v114 = memcmp(v10, "Baseband_Config_Updated", v113);
        if (v112 != 23 || v114)
        {
          v115 = *(&data[2].var0.var0.var1 + 23);
          if ((v115 & 0x8000000000000000) != 0)
          {
            v116 = data[2].var0.var0.var1.var0;
            v115 = data[2].var0.var0.var1.var1;
          }

          else
          {
            v116 = data + 2;
          }

          if (v115 >= 0x21)
          {
            v118 = 33;
          }

          else
          {
            v118 = v115;
          }

          v119 = memcmp(v116, "Install_Logging_Profile_UIAllowed", v118);
          if (v115 != 33 || v119)
          {
            goto LABEL_71;
          }

          v43 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
          [v8 setDefaultActionURL:v43];
        }

        else
        {
          v43 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
          [v8 setDefaultActionURL:v43];
        }
      }

      else
      {
        v43 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_DIAGNOSTICS_ID"];
        [v8 setDefaultActionURL:v43];
      }
    }

    else
    {
      v43 = [MEMORY[0x29EDB8E70] URLWithString:qword_2A18B7788];
      [v8 setDefaultActionURL:v43];
    }
  }

  else
  {
    v43 = [MEMORY[0x29EDB8E70] URLWithString:qword_2A18B7778];
    [v8 setDefaultActionURL:v43];
  }

LABEL_71:
  selfCopy = self;
  left = self->fCallBackMapWithQueue.__tree_.__end_node_.__left_;
  p_end_node = &self->fCallBackMapWithQueue.__tree_.__end_node_;
  v44 = left;
  v47 = &p_end_node[-1];
  if (!left)
  {
    v51 = p_end_node;
    if (*v47 == p_end_node)
    {
      v69.__left_ = 0;
      v51 = p_end_node;
      v70 = p_end_node;
      goto LABEL_170;
    }

    goto LABEL_124;
  }

  v48 = *(&data->var0.var0.var1 + 23);
  if (v48 >= 0)
  {
    dataCopy = data;
  }

  else
  {
    dataCopy = data->var0.var0.var1.var0;
  }

  if (v48 >= 0)
  {
    v50 = *(&data->var0.var0.var1 + 23);
  }

  else
  {
    v50 = data->var0.var0.var1.var1;
  }

  v51 = p_end_node;
  v52 = v44;
  do
  {
    while (1)
    {
      left_high = SHIBYTE(v52[6].__left_);
      v54 = left_high >= 0 ? &v52[4] : v52[4].__left_;
      v55 = left_high >= 0 ? HIBYTE(v52[6].__left_) : v52[5].__left_;
      v56 = v50 >= v55 ? v55 : v50;
      v57 = memcmp(v54, dataCopy, v56);
      if (v57)
      {
        break;
      }

      if (v55 >= v50)
      {
        goto LABEL_93;
      }

LABEL_79:
      v52 = v52[1].__left_;
      if (!v52)
      {
        goto LABEL_94;
      }
    }

    if (v57 < 0)
    {
      goto LABEL_79;
    }

LABEL_93:
    v51 = v52;
    v52 = v52->__left_;
  }

  while (v52);
LABEL_94:
  if (v51 != p_end_node)
  {
    v58 = SHIBYTE(v51[6].__left_);
    if (v58 >= 0)
    {
      v59 = v51 + 4;
    }

    else
    {
      v59 = v51[4].__left_;
    }

    if (v58 >= 0)
    {
      v60 = HIBYTE(v51[6].__left_);
    }

    else
    {
      v60 = v51[5].__left_;
    }

    if (v60 >= v50)
    {
      v61 = v50;
    }

    else
    {
      v61 = v60;
    }

    v62 = memcmp(dataCopy, v59, v61);
    if (v62)
    {
      if ((v62 & 0x80000000) == 0)
      {
LABEL_106:
        v63 = _Block_copy(*v124);
        v64 = v51[7].__left_;
        v51[7].__left_ = v63;

        v65 = *(v124 + 8);
        if (v65)
        {
          dispatch_retain(v65);
        }

        v66 = v51[8].__left_;
        v51[8].__left_ = v65;
        if (v66)
        {
          dispatch_release(v66);
        }

        if (&v51[7] != v124)
        {
          v67 = *(v124 + 39);
          if (SHIBYTE(v51[11].__left_) < 0)
          {
            if (v67 >= 0)
            {
              v99 = (v124 + 16);
            }

            else
            {
              v99 = *(v124 + 16);
            }

            if (v67 >= 0)
            {
              v100 = *(v124 + 39);
            }

            else
            {
              v100 = *(v124 + 24);
            }

            std::string::__assign_no_alias<false>(&v51[9].__left_, v99, v100);
          }

          else if ((*(v124 + 39) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&v51[9].__left_, *(v124 + 16), *(v124 + 24));
          }

          else
          {
            v68 = *(v124 + 16);
            v51[11].__left_ = *(v124 + 32);
            *&v51[9].__left_ = v68;
          }
        }

        goto LABEL_207;
      }
    }

    else if (v50 >= v60)
    {
      goto LABEL_106;
    }
  }

  v69.__left_ = v51->__left_;
  v47 = &p_end_node[-1];
  if (p_end_node[-1].__left_ == v51)
  {
    v70 = v51;
    goto LABEL_170;
  }

  if (!v69.__left_)
  {
LABEL_124:
    v70 = v51;
    do
    {
      v75 = v70;
      v70 = v70[2].__left_;
    }

    while (v70->__left_ == v75);
    v74 = v8;
    v69.__left_ = 0;
    goto LABEL_127;
  }

  v73.__left_ = v51->__left_;
  do
  {
    v70 = v73.__left_;
    v73.__left_ = *(v73.__left_ + 1);
  }

  while (v73.__left_);
  v74 = v8;
LABEL_127:
  v76 = SHIBYTE(v70[6].__left_);
  if (v76 >= 0)
  {
    v77 = v70 + 4;
  }

  else
  {
    v77 = v70[4].__left_;
  }

  if (v76 >= 0)
  {
    v78 = HIBYTE(v70[6].__left_);
  }

  else
  {
    v78 = v70[5].__left_;
  }

  v79 = *(&data->var0.var0.var1 + 23);
  v122 = v79;
  if (v79 >= 0)
  {
    dataCopy2 = data;
  }

  else
  {
    dataCopy2 = data->var0.var0.var1.var0;
  }

  if (v79 >= 0)
  {
    v81 = *(&data->var0.var0.var1 + 23);
  }

  else
  {
    v81 = data->var0.var0.var1.var1;
  }

  if (v81 >= v78)
  {
    v82 = v78;
  }

  else
  {
    v82 = v81;
  }

  v83 = memcmp(v77, dataCopy2, v82);
  if (!v83)
  {
    v84 = v78 >= v81;
    v8 = v74;
    v47 = &p_end_node[-1];
    if (v84)
    {
      goto LABEL_147;
    }

LABEL_170:
    v92 = v69.__left_ == 0;
    if (v69.__left_)
    {
      v85 = v70;
    }

    else
    {
      v85 = v51;
    }

    if (v92)
    {
      p_end_node = v51;
    }

    else
    {
      p_end_node = v70 + 1;
    }

LABEL_176:
    v93 = selfCopy;
    if (!p_end_node->__left_)
    {
      v94 = *(&data->var0.var0.var1 + 23);
      goto LABEL_196;
    }

    goto LABEL_207;
  }

  v8 = v74;
  v47 = &p_end_node[-1];
  if (v83 < 0)
  {
    goto LABEL_170;
  }

LABEL_147:
  if (!v44)
  {
    v85 = p_end_node;
    goto LABEL_176;
  }

  while (2)
  {
    while (2)
    {
      v85 = v44;
      v86 = v44[55];
      if (v86 >= 0)
      {
        v87 = v44 + 32;
      }

      else
      {
        v87 = *(v44 + 4);
      }

      if (v86 >= 0)
      {
        v88 = v44[55];
      }

      else
      {
        v88 = *(v44 + 5);
      }

      if (v88 >= v81)
      {
        v89 = v81;
      }

      else
      {
        v89 = v88;
      }

      v90 = memcmp(dataCopy2, v87, v89);
      if (v90)
      {
        if (v90 < 0)
        {
          break;
        }

        goto LABEL_163;
      }

      if (v81 >= v88)
      {
LABEL_163:
        v91 = memcmp(v87, dataCopy2, v89);
        if (v91)
        {
          if ((v91 & 0x80000000) == 0)
          {
            goto LABEL_176;
          }
        }

        else if (v88 >= v81)
        {
          goto LABEL_176;
        }

        p_end_node = v85 + 1;
        v44 = v85[1].__left_;
        if (!v44)
        {
          goto LABEL_195;
        }

        continue;
      }

      break;
    }

    v44 = v85->__left_;
    p_end_node = v85;
    if (v85->__left_)
    {
      continue;
    }

    break;
  }

  p_end_node = v85;
LABEL_195:
  v93 = selfCopy;
  v94 = v122;
LABEL_196:
  v101 = operator new(0x60uLL);
  v102 = v101;
  *&buf = v101;
  *(&buf + 1) = v47;
  v126 = 0;
  if (v94 < 0)
  {
    std::string::__init_copy_ctor_external((v101 + 32), data->var0.var0.var1.var0, data->var0.var0.var1.var1);
  }

  else
  {
    *(v101 + 2) = *data->var0.var0.var0.var0;
    *(v101 + 6) = *(&data->var0.var0.var1 + 2);
  }

  v103 = _Block_copy(*v124);
  v104 = *(v124 + 8);
  v102[2].__r_.__value_.__l.__size_ = v103;
  v102[2].__r_.__value_.__r.__words[2] = v104;
  if (v104)
  {
    dispatch_retain(v104);
  }

  if (*(v124 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(v102 + 3, *(v124 + 16), *(v124 + 24));
  }

  else
  {
    *&v102[3].__r_.__value_.__l.__data_ = *(v124 + 16);
    v102[3].__r_.__value_.__r.__words[2] = *(v124 + 32);
  }

  v102->__r_.__value_.__r.__words[0] = 0;
  v102->__r_.__value_.__l.__size_ = 0;
  v102->__r_.__value_.__r.__words[2] = v85;
  p_end_node->__left_ = v102;
  v105 = (*v47)->__left_;
  if (v105)
  {
    *v47 = v105;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v93->fCallBackMapWithQueue.__tree_.__end_node_.__left_, v102);
  ++v93->fCallBackMapWithQueue.__tree_.__size_;
LABEL_207:
  if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
  {
    qword_2A18B77A8 = 0;
    qword_2A18B77B0 = 0;
    __cxa_guard_release(&qword_2A18B77A0);
  }

  if (qword_2A18B7798 != -1)
  {
    dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
  }

  v106 = qword_2A18B77B0;
  v107 = 1;
  if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
  {
    if (*(&data->var0.var0.var1 + 23) < 0)
    {
      data = data->var0.var0.var1.var0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = data;
    _os_log_impl(&dword_296FF7000, v106, OS_LOG_TYPE_INFO, "Added callback for id: %s", &buf, 0xCu);
  }

LABEL_214:

  v108 = *MEMORY[0x29EDCA608];
  return v107;
}

- (void)showNotification:(NotificationInfo *)notification withCallBackData:
{
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  block[2] = __61__UserNotificationManager_showNotification_withCallBackData___block_invoke;
  block[3] = &unk_2A1E23AE8;
  block[4] = self;
  if (*(&notification->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, notification->var0.var0.var1.var0, notification->var0.var0.var1.var1);
  }

  else
  {
    v10 = *notification;
  }

  if (*(&notification[1].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, notification[1].var0.var0.var1.var0, notification[1].var0.var0.var1.var1);
  }

  else
  {
    v11 = notification[1];
  }

  if (*(&notification[2].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, notification[2].var0.var0.var1.var0, notification[2].var0.var0.var1.var1);
  }

  else
  {
    v12 = notification[2];
  }

  v7 = _Block_copy(*v4);
  v8 = *(v4 + 8);
  v13 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (*(v4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 16), *(v4 + 24));
  }

  else
  {
    __p = *(v4 + 16);
  }

  dispatch_async(self->fQueue.fObj.fObj, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v12.var0.var0.var1 + 23) < 0)
  {
    operator delete(v12.var0.var0.var1.var0);
    if ((*(&v11.var0.var0.var1 + 23) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(v10.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((*(&v11.var0.var0.var1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v11.var0.var0.var1.var0);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void __61__UserNotificationManager_showNotification_withCallBackData___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x29EDBCCC0]);
  v4 = *(a1 + 32);
  v5 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *&v47.__r_.__value_.__l.__data_ = *v5;
    v47.__r_.__value_.__r.__words[2] = *(a1 + 56);
  }

  v6 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *&v48.__r_.__value_.__l.__data_ = *v6;
    v48.__r_.__value_.__r.__words[2] = *(a1 + 80);
  }

  v7 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    *&v49.__r_.__value_.__l.__data_ = *v7;
    v49.__r_.__value_.__r.__words[2] = *(a1 + 104);
  }

  v8 = _Block_copy(*(a1 + 112));
  v9 = *(a1 + 120);
  v44 = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (*(a1 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    __p = *(a1 + 128);
  }

  v10 = [v4 setActionForHeader:&v47 notificationContent:v3 callbackData:&v44];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((v10 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_27:
    v11 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
    v12 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v12 = *v6;
    }

    v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
    v14 = [v11 localizedStringForKey:v13 value:&stru_2A1E32050 table:@"Localizable"];
    [v3 setHeader:v14];

    v15 = *(a1 + 87);
    v16 = v15;
    v17 = (a1 + 64);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v17 = *(a1 + 64);
      v16 = *(a1 + 72);
    }

    if (v16 >= 0x1B)
    {
      v18 = 27;
    }

    else
    {
      v18 = v16;
    }

    v19 = memcmp(v17, "Telephony_Dump_Insufficient", v18);
    if (v16 != 27 || v19)
    {
      v25 = v15;
      v26 = (a1 + 64);
      if ((v15 & 0x80000000) != 0)
      {
        v26 = *(a1 + 64);
        v25 = *(a1 + 72);
      }

      if (v25 >= 0x16)
      {
        v27 = 22;
      }

      else
      {
        v27 = v25;
      }

      v28 = memcmp(v26, "Telephony_Dump_Started", v27);
      if (v25 != 22 || v28)
      {
        v38 = v15;
        v39 = (a1 + 64);
        if ((v15 & 0x80000000) != 0)
        {
          v39 = *(a1 + 64);
          v38 = *(a1 + 72);
        }

        if (v38 >= 0x17)
        {
          v40 = 23;
        }

        else
        {
          v40 = v38;
        }

        v41 = memcmp(v39, "Cellular_Issue_Detected", v40);
        if (v38 != 23 || v41)
        {
          if ((v15 & 0x80000000) != 0)
          {
            v6 = *(a1 + 64);
            v15 = *(a1 + 72);
          }

          if (v15 >= 0x17)
          {
            v42 = 23;
          }

          else
          {
            v42 = v15;
          }

          v43 = memcmp(v6, "Baseband_Config_Updated", v42);
          if (v15 != 23 || v43)
          {
            v21 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
            if (*(a1 + 111) < 0)
            {
              v7 = *v7;
            }

            v22 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
            v23 = [v21 localizedStringForKey:v22 value:&stru_2A1E32050 table:@"Localizable"];
            [v3 setBody:v23];
            goto LABEL_50;
          }

          v21 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
          v22 = [v21 localizedStringForKey:@"Baseband_Config_Updated_Details" value:&stru_2A1E32050 table:@"Localizable"];
          [v3 setBody:v22];
        }

        else
        {
          v21 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
          v22 = [v21 localizedStringForKey:@"Check_Settings_Cellular_Diagnostics" value:&stru_2A1E32050 table:@"Localizable"];
          [v3 setBody:v22];
        }

LABEL_51:

        v30 = [MEMORY[0x29EDBCCE8] defaultSound];
        [v3 setSound:v30];

        [v3 setShouldBackgroundDefaultAction:1];
        [v3 setShouldAuthenticateDefaultAction:1];
        v31 = a1 + 40;
        if (*(a1 + 63) < 0)
        {
          v31 = *v5;
        }

        v32 = MEMORY[0x29EDBCCD8];
        v33 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v31];
        v34 = [v32 requestWithIdentifier:v33 content:v3 trigger:0];

        [*(*(a1 + 32) + 8) addNotificationRequest:v34 withCompletionHandler:0];
        if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
        {
          qword_2A18B77A8 = 0;
          qword_2A18B77B0 = 0;
          __cxa_guard_release(&qword_2A18B77A0);
        }

        if (qword_2A18B7798 == -1)
        {
          v35 = qword_2A18B77B0;
          if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
          {
LABEL_56:
            v36 = a1 + 40;
            if (*(a1 + 63) < 0)
            {
              v36 = *v5;
            }

            *buf = 136315138;
            v51 = v36;
            _os_log_impl(&dword_296FF7000, v35, OS_LOG_TYPE_INFO, "Added notification request with id: %s", buf, 0xCu);
          }
        }

        else
        {
          dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
          v35 = qword_2A18B77B0;
          if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
          {
            goto LABEL_56;
          }
        }

        [*(a1 + 32) updateAnalyticsEvent:a1 + 40 withUserReponse:0];

        goto LABEL_60;
      }

      v29 = MEMORY[0x29EDBA0F8];
      v21 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
      if (*(a1 + 111) < 0)
      {
        v7 = *v7;
      }

      v22 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
      v23 = [v21 localizedStringForKey:v22 value:&stru_2A1E32050 table:@"Localizable"];
      v24 = [v29 stringWithFormat:v23];
      [v3 setBody:v24];
    }

    else
    {
      v20 = MEMORY[0x29EDBA0F8];
      v21 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.telephony.BasebandServicesNotification.bundle"];
      v22 = [v21 localizedStringForKey:@"Telephony_Dump_Insufficient_Details_%@" value:&stru_2A1E32050 table:@"Localizable"];
      if (*(a1 + 111) < 0)
      {
        v7 = *v7;
      }

      v23 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
      v24 = [v20 stringWithFormat:v22, v23];
      [v3 setBody:v24];
    }

LABEL_50:
    goto LABEL_51;
  }

LABEL_26:
  operator delete(v47.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_27;
  }

LABEL_60:

  objc_autoreleasePoolPop(v2);
  v37 = *MEMORY[0x29EDCA608];
}

- (void)updateAnalyticsEvent:(const void *)event withUserReponse:(BOOL)reponse
{
  reponseCopy = reponse;
  v40 = *MEMORY[0x29EDCA608];
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v35 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v35 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v7) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v35 = v8;
LABEL_9:
  xpc_release(v7);
  if (*(event + 23) >= 0)
  {
    eventCopy = event;
  }

  else
  {
    eventCopy = *event;
  }

  v10 = xpc_string_create(eventCopy);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, *MEMORY[0x29EDBF3C8], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v14 = *(event + 3);
  v13 = event + 24;
  v12 = v14;
  if (v13[23] >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, *MEMORY[0x29EDBF3D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  if (reponseCopy)
  {
    v18 = "userResponded";
  }

  else
  {
    v18 = "shown";
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v35, *MEMORY[0x29EDBF3C0], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  memset(&__dst, 170, sizeof(__dst));
  v21 = *MEMORY[0x29EDBF298];
  v22 = strlen(*MEMORY[0x29EDBF298]);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    p_dst = operator new(v25);
    __dst.__r_.__value_.__l.__size_ = v23;
    __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v22;
    p_dst = &__dst;
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  memmove(p_dst, v21, v23);
LABEL_33:
  p_dst->__r_.__value_.__s.__data_[v23] = 0;
  if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
  {
    qword_2A18B77A8 = 0;
    qword_2A18B77B0 = 0;
    __cxa_guard_release(&qword_2A18B77A0);
  }

  if (qword_2A18B7798 == -1)
  {
    v26 = qword_2A18B77B0;
    if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }
  }

  else
  {
    dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
    v26 = qword_2A18B77B0;
    if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }
  }

  xpc::object::to_string(__p, &v35);
  if (v33 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  *buf = 136315394;
  v37 = v21;
  v38 = 2080;
  v39 = v27;
  _os_log_impl(&dword_296FF7000, v26, OS_LOG_TYPE_INFO, "Submitting CoreAnalytics event[%s] - %s", buf, 0x16u);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_41:
  v28 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = __dst;
  }

  object = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    object = xpc_null_create();
  }

  metric::sendCoreAnalyticsEvent(&v31.__r_.__value_.__l.__data_, &object, 0);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_51:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_49;
  }

  if (v28 < 0)
  {
    goto LABEL_51;
  }

LABEL_49:
  xpc_release(v35);
  v29 = *MEMORY[0x29EDCA608];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __103__UserNotificationManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_29EE63758;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = responseCopy;
  fObj = self->fQueue.fObj.fObj;
  v10 = handlerCopy;
  v11 = responseCopy;
  dispatch_async(fObj, block);
}

void __103__UserNotificationManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  context = objc_autoreleasePoolPush();
  memset(__dst, 170, sizeof(__dst));
  v2 = [*(a1 + 32) notification];
  v3 = [v2 request];
  v4 = [v3 identifier];
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *&__dst[8] = v7;
    *&__dst[16] = v9 | 0x8000000000000000;
    *__dst = v8;
  }

  else
  {
    __dst[23] = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v8, v5, v7);
LABEL_10:
  v8[v7] = 0;

  if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
  {
    qword_2A18B77A8 = 0;
    qword_2A18B77B0 = 0;
    __cxa_guard_release(&qword_2A18B77A0);
  }

  if (qword_2A18B7798 == -1)
  {
    v10 = qword_2A18B77B0;
    if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
    v10 = qword_2A18B77B0;
    if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  v11 = __dst;
  if (__dst[23] < 0)
  {
    v11 = *__dst;
  }

  *buf = 136315138;
  *&buf[4] = v11;
  _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_INFO, "Received notification response with id: %s", buf, 0xCu);
LABEL_16:
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  v13 = *(a1 + 40);
  v16 = *(v13 + 32);
  v15 = (v13 + 32);
  v14 = v16;
  if (v16)
  {
    if (__dst[23] >= 0)
    {
      v17 = __dst;
    }

    else
    {
      v17 = *__dst;
    }

    if (__dst[23] >= 0)
    {
      v18 = __dst[23];
    }

    else
    {
      v18 = *&__dst[8];
    }

    v19 = v15;
    while (1)
    {
      v20 = *(v14 + 55);
      if (v20 >= 0)
      {
        v21 = (v14 + 4);
      }

      else
      {
        v21 = v14[4];
      }

      if (v20 >= 0)
      {
        v22 = *(v14 + 55);
      }

      else
      {
        v22 = v14[5];
      }

      if (v18 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v18;
      }

      v24 = memcmp(v21, v17, v23);
      if (v24)
      {
        if (v24 < 0)
        {
          goto LABEL_26;
        }

LABEL_40:
        v19 = v14;
        v14 = *v14;
        if (!v14)
        {
LABEL_41:
          if (v19 == v15)
          {
            break;
          }

          v25 = v19[4];
          v26 = *(v19 + 55);
          if (v26 >= 0)
          {
            v27 = v19 + 4;
          }

          else
          {
            v27 = v19[4];
          }

          if (v26 >= 0)
          {
            v28 = *(v19 + 55);
          }

          else
          {
            v28 = v19[5];
          }

          if (v28 >= v18)
          {
            v29 = v18;
          }

          else
          {
            v29 = v28;
          }

          v30 = memcmp(v17, v27, v29);
          if (v30)
          {
            if (v30 < 0)
            {
              break;
            }
          }

          else if (v18 < v28)
          {
            break;
          }

          *&v57[16] = 0xAAAAAAAAAAAAAAAALL;
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v57 = v31;
          *buf = v31;
          *buf = _Block_copy(v19[7]);
          v32 = v19[8];
          *&buf[8] = v32;
          if (v32)
          {
            dispatch_retain(v32);
          }

          if (*(v19 + 95) < 0)
          {
            std::string::__init_copy_ctor_external(v57, v19[9], v19[10]);
          }

          else
          {
            *v57 = *(v19 + 9);
            *&v57[16] = v19[11];
          }

          if (*buf)
          {
            if (*&buf[8])
            {
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3321888768;
              block[2] = __103__UserNotificationManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_68;
              block[3] = &__block_descriptor_72_ea8_32c18_ZTS12CallBackData_e5_v8__0l;
              v50 = _Block_copy(*buf);
              object = *&buf[8];
              if (*&buf[8])
              {
                dispatch_retain(*&buf[8]);
              }

              if ((v57[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&__p, *v57, *&v57[8]);
              }

              else
              {
                __p = *v57;
              }

              dispatch_async(*&buf[8], block);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (object)
              {
                dispatch_release(object);
              }
            }

            else
            {
              (*(*buf + 16))();
            }
          }

          if (SHIBYTE(v54) < 0)
          {
            if (v57[23] >= 0)
            {
              v33 = v57;
            }

            else
            {
              v33 = *v57;
            }

            if (v57[23] >= 0)
            {
              v34 = v57[23];
            }

            else
            {
              v34 = *&v57[8];
            }

            std::string::__assign_no_alias<false>(v53, v33, v34);
          }

          else if ((v57[23] & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v53, *v57, *&v57[8]);
          }

          else
          {
            *v53 = *v57;
            v54 = *&v57[16];
          }

          v35 = *(a1 + 40);
          v36 = v19[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            v38 = v19;
            do
            {
              v37 = v38[2];
              v39 = *v37 == v38;
              v38 = v37;
            }

            while (!v39);
          }

          if (v35[3] == v19)
          {
            v35[3] = v37;
          }

          v40 = v35[4];
          --v35[5];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v40, v19);
          if (*(v19 + 95) < 0)
          {
            operator delete(v19[9]);
          }

          v41 = v19[8];
          if (v41)
          {
            dispatch_release(v41);
          }

          if (*(v19 + 55) < 0)
          {
            operator delete(v19[4]);
          }

          operator delete(v19);
          if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
          {
            qword_2A18B77A8 = 0;
            qword_2A18B77B0 = 0;
            __cxa_guard_release(&qword_2A18B77A0);
          }

          if (qword_2A18B7798 == -1)
          {
            v42 = qword_2A18B77B0;
            if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
            {
              goto LABEL_101;
            }
          }

          else
          {
            dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
            v42 = qword_2A18B77B0;
            if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_INFO))
            {
LABEL_101:
              v43 = __dst;
              if (__dst[23] < 0)
              {
                v43 = *__dst;
              }

              *v60 = 136315138;
              v61 = v43;
              _os_log_impl(&dword_296FF7000, v42, OS_LOG_TYPE_INFO, "Removed callback for id: %s", v60, 0xCu);
            }
          }

          if ((v57[23] & 0x80000000) != 0)
          {
            operator delete(*v57);
            v44 = *&buf[8];
            if (*&buf[8])
            {
LABEL_106:
              dispatch_release(v44);
            }
          }

          else
          {
            v44 = *&buf[8];
            if (*&buf[8])
            {
              goto LABEL_106;
            }
          }

          break;
        }
      }

      else
      {
        if (v22 >= v18)
        {
          goto LABEL_40;
        }

LABEL_26:
        v14 = v14[1];
        if (!v14)
        {
          goto LABEL_41;
        }
      }
    }
  }

  v59 = 0;
  v58 = 0u;
  memset(v57, 0, sizeof(v57));
  *buf = 0u;
  if ((__dst[23] & 0x80000000) == 0)
  {
    *buf = *__dst;
    *v57 = *&__dst[16];
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_110:
      *&v57[8] = *v53;
      *&v57[24] = v54;
      goto LABEL_121;
    }

    goto LABEL_113;
  }

  std::string::__assign_no_alias<true>(buf, *__dst, *&__dst[8]);
  if ((v57[31] & 0x80000000) == 0)
  {
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

LABEL_113:
    std::string::__assign_no_alias<true>(&v57[8], v53[0], v53[1]);
    goto LABEL_121;
  }

  if (v54 >= 0)
  {
    v45 = v53;
  }

  else
  {
    v45 = v53[0];
  }

  if (v54 >= 0)
  {
    v46 = HIBYTE(v54);
  }

  else
  {
    v46 = v53[1];
  }

  std::string::__assign_no_alias<false>(&v57[8], v45, v46);
LABEL_121:
  [*(a1 + 40) updateAnalyticsEvent:buf withUserReponse:1];
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
    if ((v57[31] & 0x80000000) == 0)
    {
LABEL_123:
      if ((v57[7] & 0x80000000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_129;
    }
  }

  else if ((v57[31] & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(*&v57[8]);
  if ((v57[7] & 0x80000000) == 0)
  {
LABEL_124:
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_130:
    operator delete(v53[0]);
    if ((__dst[23] & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_131:
    operator delete(*__dst);
    goto LABEL_126;
  }

LABEL_129:
  operator delete(*buf);
  if (SHIBYTE(v54) < 0)
  {
    goto LABEL_130;
  }

LABEL_125:
  if ((__dst[23] & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_126:
  objc_autoreleasePoolPop(context);
  v47 = *MEMORY[0x29EDCA608];
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  *(self + 3) = self + 32;
  return self;
}

@end