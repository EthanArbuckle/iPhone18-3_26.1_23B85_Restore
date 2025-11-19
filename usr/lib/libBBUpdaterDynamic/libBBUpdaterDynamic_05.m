uint64_t *std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(CFStringRef *a1, uint64_t **a2)
{
  v3 = qword_1ED948388;
  if (!qword_1ED948388)
  {
    v5 = &qword_1ED948388;
    v6 = &qword_1ED948388;
LABEL_9:
    v7 = operator new(0x38uLL);
    v7[4] = **a2;
    v7[5] = 0;
    v7[6] = 0;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v6;
    *v5 = v7;
    if (*qword_1ED948380)
    {
      qword_1ED948380 = *qword_1ED948380;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1ED948388, v7);
    ++qword_1ED948390;
    return v7;
  }

  v5 = &qword_1ED948388;
  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((CFStringCompare(*a1, *(v3 + 32), 0) & 0x8000000000000000) == 0)
      {
        break;
      }

      v3 = *v6;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if ((CFStringCompare(v6[4], *a1, 0) & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = v6 + 1;
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v7 = *v5;
  if (!*v5)
  {
    goto LABEL_9;
  }

  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v6 = (qword_1ED948490[*(a1 + 32)])();
  v7 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v9 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v10 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v9 & 1) != 0 || v10)
    {
      qword_1ED948898 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948890 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948888 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948880 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948878 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948870 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948868 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948860 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948858 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      qword_1ED948850[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformNextStage>>::flag_false;
      v12 = (qword_1ED948850[*(a1 + 32)])(a1);
      v13 = (qword_1ED948850[*(a1 + 36)])(a1);
      if ((v12 & 1) == 0 && !v13)
      {
        return 1;
      }
    }

    if (*(a1 + 100) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *a2, *(a2 + 8));
        v11 = *(a2 + 24);
        v31 = v11;
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_8:
          v44 = v30;
          v45.__r_.__value_.__r.__words[0] = v11;
          if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_23;
        }
      }

      else
      {
        *&v30.__r_.__value_.__l.__data_ = *a2;
        v11 = *(a2 + 24);
        v30.__r_.__value_.__r.__words[2] = *(a2 + 16);
        v31 = v11;
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }
      }

      std::string::__init_copy_ctor_external(&v44, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      v11 = v31;
      v45.__r_.__value_.__r.__words[0] = v31;
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v48 = v44;
        __p.__r_.__value_.__r.__words[0] = v11;
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

LABEL_23:
      std::string::__init_copy_ctor_external(&v48, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
      v11 = v45.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = v45.__r_.__value_.__r.__words[0];
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        v52 = v48;
        v53.__r_.__value_.__r.__words[0] = v11;
        *v56 = a1;
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          *&v56[8] = *&v52.__r_.__value_.__l.__data_;
          v57.__r_.__value_.__r.__words[0] = v52.__r_.__value_.__r.__words[2];
          v57.__r_.__value_.__l.__size_ = v11;
          goto LABEL_27;
        }

LABEL_25:
        std::string::__init_copy_ctor_external(&v56[8], v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
        v57.__r_.__value_.__l.__size_ = v53.__r_.__value_.__r.__words[0];
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

LABEL_27:
        v57.__r_.__value_.__s.__data_[16] = 5;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        *&v32 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v32 + 1) = 0;
        v33 = *v56;
        if (v57.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&v34, *&v56[8], *&v56[16]);
          *(&v35 + 1) = v57.__r_.__value_.__l.__size_;
          v36 = v57.__r_.__value_.__s.__data_[16];
          if (v57.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v56[8]);
          }
        }

        else
        {
          v34 = *&v56[8];
          v35 = *&v57.__r_.__value_.__l.__data_;
          v36 = v57.__r_.__value_.__s.__data_[16];
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        v39 = v32;
        v17 = v33;
        v40 = v33;
        if (SBYTE7(v35) < 0)
        {
          std::string::__init_copy_ctor_external(&v41, v34, *(&v34 + 1));
          v17 = v40;
        }

        else
        {
          *&v41.__r_.__value_.__l.__data_ = v34;
          v41.__r_.__value_.__r.__words[2] = v35;
        }

        v18 = *(&v35 + 1);
        v42 = *(&v35 + 1);
        v19 = v36;
        v43 = v36;
        v37 = 0;
        *&v44.__r_.__value_.__l.__data_ = v39;
        v44.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          v18 = v42;
          v19 = v43;
          v17 = v44.__r_.__value_.__r.__words[2];
        }

        else
        {
          v45 = v41;
        }

        v46 = v18;
        v47 = v19;
        *&v48.__r_.__value_.__l.__data_ = *&v44.__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
          v18 = v46;
          v19 = v47;
          v17 = v48.__r_.__value_.__r.__words[2];
        }

        else
        {
          __p = v45;
        }

        v50 = v18;
        v51 = v19;
        *&v52.__r_.__value_.__l.__data_ = *&v48.__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v18 = v50;
          v19 = v51;
          v17 = v52.__r_.__value_.__r.__words[2];
        }

        else
        {
          v53 = __p;
        }

        v54 = v18;
        v55 = v19;
        *v56 = *&v52.__r_.__value_.__l.__data_;
        *&v56[16] = v17;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v57, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
          v18 = v54;
          v19 = v55;
        }

        else
        {
          v57 = v53;
        }

        v58 = v18;
        v59 = v19;
        v20 = operator new(0x40uLL);
        *&v20->__r_.__value_.__l.__data_ = *v56;
        v20->__r_.__value_.__r.__words[2] = *&v56[16];
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v20;
          std::string::__init_copy_ctor_external(v20 + 1, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
          v22 = v59;
          v23 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
          v21[2].__r_.__value_.__r.__words[0] = v58;
          v21[2].__r_.__value_.__s.__data_[8] = v22;
          v38[0] = v21;
          if (v23 < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v20[1] = v57;
          v20[2].__r_.__value_.__r.__words[0] = v18;
          v20[2].__r_.__value_.__s.__data_[8] = v19;
          v38[0] = v20;
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_56:
            v37 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
            if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_73;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        v37 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_57:
          if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

LABEL_74:
          operator delete(v41.__r_.__value_.__l.__data_);
LABEL_58:
          v24 = *(a1 + 48);
          v25 = *(a1 + 56);
          v26 = *(a1 + 48);
          v27 = 16 * (v25 - v26) - 1;
          if (v25 == v26)
          {
            v27 = 0;
          }

          v28 = *(a1 + 80) + *(a1 + 72);
          if (v27 == v28)
          {
            std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
            v26 = *(a1 + 48);
            v28 = *(a1 + 80) + *(a1 + 72);
          }

          v29 = (*(v26 + ((v28 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v28 & 0x7F));
          *v29 = 0;
          boost::function0<boost::msm::back::HandledEnum>::move_assign(v29, &v37);
          ++*(a1 + 80);
          if (v37)
          {
            if ((v37 & 1) == 0)
            {
              if (*v37)
              {
                (*v37)(v38, v38, 2);
              }
            }

            v37 = 0;
          }

          if (SBYTE7(v35) < 0)
          {
            operator delete(v34);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return 1;
            }
          }

          else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return 1;
          }

          operator delete(v30.__r_.__value_.__l.__data_);
          return 1;
        }

LABEL_73:
        operator delete(v45.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

LABEL_24:
      std::string::__init_copy_ctor_external(&v52, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
      v11 = __p.__r_.__value_.__r.__words[0];
      v53.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
      *v56 = a1;
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

    *(a1 + 100) = 1;
    v14 = (*(&unk_1ED948D00 + *(a1 + 32) + 1))(a1, 0);
    result = (*(&unk_1ED948D00 + *(a1 + 36) + 1))(a1, 1) | v14;
    if (*(a1 + 101) != 1 || (a3) && !result)
    {
      v15 = result;
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 36));
      result = v15;
    }

    *(a1 + 100) = 0;
    if ((a3 & 6) == 0)
    {
      v16 = result;
      boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
      return v16;
    }
  }

  return result;
}

void sub_1E527A010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
LABEL_3:
    if (a61 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*(v62 - 168));
  if (a61 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if (a39 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if (a39 < 0)
  {
LABEL_6:
    operator delete(a34);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53904B7 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53904B7 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)32>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v36 = *(a4 + 28);
    v37 = *(a1 + 96);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 100));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v14 = *(a1 + 96);
  v13 = *(a1 + 100);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = v14 + 1;
  *(a1 + 96) = v14 + 1;
  if (v11)
  {
    v17 = *gBBULogMaskGet(void)::sBBULogMask;
    v18 = gBBULogVerbosity;
    if (v16 > v15)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v17 & 0x200000) != 0 && (v18 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v35);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v23);
      v27 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v28 = *(&off_1ED944120 + 1);
      off_1ED944120 = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v22 = off_1ED944120;
    }

    v30 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v38[3] = &__block_descriptor_tmp_9;
    v38[4] = v22;
    v39 = v38;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v41 = &__block_descriptor_tmp_13_0;
    v42 = v22;
    v43 = &v39;
    v31 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v32, v33, v34, *(a1 + 96));
        }
      }
    }

    BBUpdaterController::personalize(*(a1 + 16), 32);
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v17 = *gBBULogMaskGet(void)::sBBULogMask;
  v18 = gBBULogVerbosity;
  if (v16 <= v15)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v17 & 2) != 0 && (v18 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v15);
  }

  v19 = *(a1 + 16);
  v20 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v41 = v20;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v19, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::performAction<(BBUStage)4>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 120) = 0;
  *(v3 + 24) = 1;
  BBUpdaterController::personalize(*(a1 + 16), 4);
  *(v3 + 24) = 1;
  ++*(a1 + 108);
  *(v3 + 24) = 2;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::performAction<(BBUStage)2>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 132) = 0;
  *(v3 + 24) = 0;
  BBUpdaterController::personalize(*(a1 + 16), 2);
  *(v3 + 24) = 0;
  ++*(a1 + 120);
  *(v3 + 24) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::startProvision,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 108) = 0;
  *(v3 + 24) = 0;
  BBUpdaterController::provision(*(a1 + 16), 1);
  *(v3 + 24) = 0;
  ++*(a1 + 96);
  *(v3 + 24) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 280, a4))
  {
    v6 = (_MergedGlobals_1[*(a1 + 304) + 53])(a1 + 280, 0);
    v7 = v6;
    if ((*(a1 + 369) & 1) == 0 && !v6)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 53])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v34 = v20;
        v35.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v20.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v34, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    v4 = v21;
    v35.__r_.__value_.__r.__words[0] = v21;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v38 = v34;
      v39.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v4 = v35.__r_.__value_.__r.__words[0];
    v39.__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v42 = v38;
      v43.__r_.__value_.__r.__words[0] = v4;
      *v46 = a1;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v4 = v39.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[0] = v39.__r_.__value_.__r.__words[0];
    *v46 = a1;
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v46[8] = *&v42.__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[0] = v42.__r_.__value_.__r.__words[2];
      v47.__r_.__value_.__l.__size_ = v4;
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v46[8], v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    v47.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v22 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v22 + 1) = 0;
        v23 = *v46;
        if (v47.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v46[8], *&v46[16]);
          *(&v25 + 1) = v47.__r_.__value_.__l.__size_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if (v47.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v46[8]);
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v29 = v22;
              v6 = v23;
              v30 = v23;
              if (SBYTE7(v25) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, __p, *(&__p + 1));
                v6 = v30;
              }

              else
              {
                *&v31.__r_.__value_.__l.__data_ = __p;
                v31.__r_.__value_.__r.__words[2] = v25;
              }

              v7 = *(&v25 + 1);
              v32 = *(&v25 + 1);
              v8 = v26;
              v33 = v26;
              v27 = 0;
              *&v34.__r_.__value_.__l.__data_ = v29;
              v34.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                v7 = v32;
                v8 = v33;
                v6 = v34.__r_.__value_.__r.__words[2];
              }

              else
              {
                v35 = v31;
              }

              v36 = v7;
              v37 = v8;
              *&v38.__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
              v38.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v39, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
                v7 = v36;
                v8 = v37;
                v6 = v38.__r_.__value_.__r.__words[2];
              }

              else
              {
                v39 = v35;
              }

              v40 = v7;
              v41 = v8;
              *&v42.__r_.__value_.__l.__data_ = *&v38.__r_.__value_.__l.__data_;
              v42.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v43, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                v7 = v40;
                v8 = v41;
                v6 = v42.__r_.__value_.__r.__words[2];
              }

              else
              {
                v43 = v39;
              }

              v44 = v7;
              v45 = v8;
              *v46 = *&v42.__r_.__value_.__l.__data_;
              *&v46[16] = v6;
              if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
                v7 = v44;
                v8 = v45;
              }

              else
              {
                v47 = v43;
              }

              v48 = v7;
              v49 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v46;
              v9->__r_.__value_.__r.__words[2] = *&v46[16];
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                v11 = v49;
                v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v48;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v28[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v47;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v28[0] = v9;
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v39.__r_.__value_.__l.__data_);
                    v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v35.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v31.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 40);
                    v14 = *(a1 + 48);
                    v15 = *(a1 + 40);
                    v16 = 16 * (v14 - v15) - 1;
                    if (v14 == v15)
                    {
                      v16 = 0;
                    }

                    v17 = *(a1 + 72) + *(a1 + 64);
                    if (v16 == v17)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
                      v15 = *(a1 + 40);
                      v17 = *(a1 + 72) + *(a1 + 64);
                    }

                    v18 = (*(v15 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F));
                    *v18 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v18, &v27);
                    ++*(a1 + 72);
                    if (v27)
                    {
                      if ((v27 & 1) == 0 && *v27)
                      {
                        (*v27)(v28, v28, 2);
                      }

                      v27 = 0;
                    }

                    if (SBYTE7(v25) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v20.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v46[8];
          v25 = *&v47.__r_.__value_.__l.__data_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v34.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v38.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_1E527B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53905ABLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53905ABLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527C2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 144, a4))
  {
    v6 = (_MergedGlobals_1[*(a1 + 168) + 30])(a1 + 144, 0);
    v7 = v6;
    if ((*(a1 + 233) & 1) == 0 && !v6)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1 + 144, a1 + 144, *(a1 + 168));
    }

    *(a1 + 232) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 144);
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 4 * a2 + 32) = 5;
  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 30])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v34 = v20;
        v35.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v20.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v34, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    v4 = v21;
    v35.__r_.__value_.__r.__words[0] = v21;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v38 = v34;
      v39.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v4 = v35.__r_.__value_.__r.__words[0];
    v39.__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v42 = v38;
      v43.__r_.__value_.__r.__words[0] = v4;
      *v46 = a1;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v4 = v39.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[0] = v39.__r_.__value_.__r.__words[0];
    *v46 = a1;
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v46[8] = *&v42.__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[0] = v42.__r_.__value_.__r.__words[2];
      v47.__r_.__value_.__l.__size_ = v4;
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v46[8], v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    v47.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v22 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
        *(&v22 + 1) = 0;
        v23 = *v46;
        if (v47.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v46[8], *&v46[16]);
          *(&v25 + 1) = v47.__r_.__value_.__l.__size_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if (v47.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v46[8]);
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v29 = v22;
              v6 = v23;
              v30 = v23;
              if (SBYTE7(v25) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, __p, *(&__p + 1));
                v6 = v30;
              }

              else
              {
                *&v31.__r_.__value_.__l.__data_ = __p;
                v31.__r_.__value_.__r.__words[2] = v25;
              }

              v7 = *(&v25 + 1);
              v32 = *(&v25 + 1);
              v8 = v26;
              v33 = v26;
              v27 = 0;
              *&v34.__r_.__value_.__l.__data_ = v29;
              v34.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                v7 = v32;
                v8 = v33;
                v6 = v34.__r_.__value_.__r.__words[2];
              }

              else
              {
                v35 = v31;
              }

              v36 = v7;
              v37 = v8;
              *&v38.__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
              v38.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v39, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
                v7 = v36;
                v8 = v37;
                v6 = v38.__r_.__value_.__r.__words[2];
              }

              else
              {
                v39 = v35;
              }

              v40 = v7;
              v41 = v8;
              *&v42.__r_.__value_.__l.__data_ = *&v38.__r_.__value_.__l.__data_;
              v42.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v43, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                v7 = v40;
                v8 = v41;
                v6 = v42.__r_.__value_.__r.__words[2];
              }

              else
              {
                v43 = v39;
              }

              v44 = v7;
              v45 = v8;
              *v46 = *&v42.__r_.__value_.__l.__data_;
              *&v46[16] = v6;
              if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
                v7 = v44;
                v8 = v45;
              }

              else
              {
                v47 = v43;
              }

              v48 = v7;
              v49 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v46;
              v9->__r_.__value_.__r.__words[2] = *&v46[16];
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                v11 = v49;
                v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v48;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v28[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v47;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v28[0] = v9;
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v39.__r_.__value_.__l.__data_);
                    v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v35.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v31.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 40);
                    v14 = *(a1 + 48);
                    v15 = *(a1 + 40);
                    v16 = 16 * (v14 - v15) - 1;
                    if (v14 == v15)
                    {
                      v16 = 0;
                    }

                    v17 = *(a1 + 72) + *(a1 + 64);
                    if (v16 == v17)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
                      v15 = *(a1 + 40);
                      v17 = *(a1 + 72) + *(a1 + 64);
                    }

                    v18 = (*(v15 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F));
                    *v18 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v18, &v27);
                    ++*(a1 + 72);
                    if (v27)
                    {
                      if ((v27 & 1) == 0 && *v27)
                      {
                        (*v27)(v28, v28, 2);
                      }

                      v27 = 0;
                    }

                    if (SBYTE7(v25) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v20.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v46[8];
          v25 = *&v47.__r_.__value_.__l.__data_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v34.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v38.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_1E527CB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53906ADLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53906ADLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformNextStage>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527D520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformCoreDump>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED9488E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    qword_1ED9488A0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformCoreDump>>::flag_false;
    v17 = (qword_1ED9488A0[*(a1 + 32)])(a1);
    v18 = (qword_1ED9488A0[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948D58 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948D58 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E53907E1 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53907E1 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformCoreDump>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformCoreDump>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527E328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformCoreDump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::collectDump,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 452) = 0;
  *(a1 + 32 + 4 * a2) = 0;
  v5 = *(a1 + 16);
  if (BBUpdaterController::collectCoredumpInternal(v5))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_3;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }
  }

  else
  {
    CFDictionarySetValue(v5[4], @"done", *MEMORY[0x1E695E4D0]);
  }

LABEL_3:
  *(v4 + 4 * a2) = 0;
  ++*(a1 + 112);
  *(v4 + 4 * a2) = 8;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformBootup>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948938 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948930 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948928 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948920 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948918 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948910 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948908 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED948900 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED9488F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    qword_1ED9488F0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformBootup>>::flag_false;
    v17 = (qword_1ED9488F0[*(a1 + 32)])(a1);
    v18 = (qword_1ED9488F0[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformBootup>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948DB0 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948DB0 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390906 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390906 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformBootup>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformBootup>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527F260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformBootup,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<false>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 452) = 0;
  *(v3 + 32) = 0;
  BBUpdaterController::bootup(*(a1 + 16));
  *(v3 + 32) = 0;
  ++*(a1 + 440);
  *(v3 + 32) = 1;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948988 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948980 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948978 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948970 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948968 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948960 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948958 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948950 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948948 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    qword_1ED948940[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>>::flag_false;
    v17 = (qword_1ED948940[*(a1 + 32)])(a1);
    v18 = (qword_1ED948940[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948E08 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948E08 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390A30 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390A30 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E52800C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,boost::msm::front::none>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + 4 * a2;
  *(a1 + 452) = 0;
  *(v9 + 32) = 0;
  BBUpdaterController::checkManifest(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
  *(v9 + 32) = 0;
  ++*(a1 + 428);
  *(v9 + 32) = 2;
  return 1;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_434()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void __cxx_global_var_init_435()
{
  if ((byte_1ED9482D8 & 1) == 0)
  {
    byte_1ED9482D8 = 1;
    qword_1ED9489E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED948998 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventError>;
    qword_1ED9489D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::handleError,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_436()
{
  if ((byte_1ED9482E0 & 1) == 0)
  {
    byte_1ED9482E0 = 1;
    qword_1ED9483E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    unk_1ED9483E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9483D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9483D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::skipPersonalize,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_437()
{
  if ((byte_1ED9482E8 & 1) == 0)
  {
    byte_1ED9482E8 = 1;
    qword_1ED948A38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9489F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED9489F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventSkipPersonalize>;
    qword_1ED948A08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>::execute;
  }
}

void __cxx_global_var_init_438()
{
  if ((byte_1ED9482F0 & 1) == 0)
  {
    byte_1ED9482F0 = 1;
    qword_1ED948410 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948408 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948400 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED9483F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
  }
}

void __cxx_global_var_init_439()
{
  if ((byte_1ED9482F8 & 1) == 0)
  {
    byte_1ED9482F8 = 1;
    qword_1ED948A90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRetry>;
    qword_1ED948A60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>::execute;
    qword_1ED948A68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventRetry,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
    qword_1ED948A58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948A50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<true>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
  }
}

void __cxx_global_var_init_440()
{
  if ((byte_1ED948300 & 1) == 0)
  {
    byte_1ED948300 = 1;
    qword_1ED948AE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventContinue>;
    qword_1ED948AD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventContinue,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED948AA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_441()
{
  if ((byte_1ED948308 & 1) == 0)
  {
    byte_1ED948308 = 1;
    qword_1ED948B40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948AF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventRepersonalize>;
    qword_1ED948B28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventRepersonalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRePerso>>::execute;
  }
}

void __cxx_global_var_init_442()
{
  if ((byte_1ED948310 & 1) == 0)
  {
    byte_1ED948310 = 1;
    qword_1ED948B98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFinalize>;
    qword_1ED948B78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute;
    qword_1ED948B68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_443()
{
  if ((byte_1ED948318 & 1) == 0)
  {
    byte_1ED948318 = 1;
    qword_1ED948430 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948438 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)32>,boost::msm::front::none>>::execute;
    qword_1ED948428 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)4>,boost::msm::front::none>>::execute;
    qword_1ED948420 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_444()
{
  if ((byte_1ED948320 & 1) == 0)
  {
    byte_1ED948320 = 1;
    qword_1ED9483A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,boost::msm::front::none,boost::msm::front::none>>::execute;
    qword_1ED9483A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::gatherParam,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_445()
{
  if ((byte_1ED948328 & 1) == 0)
  {
    byte_1ED948328 = 1;
    qword_1ED948BF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    qword_1ED948BC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute;
    qword_1ED948BD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute;
    qword_1ED948BA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_446()
{
  if ((byte_1ED948330 & 1) == 0)
  {
    byte_1ED948330 = 1;
    qword_1ED948460 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948448 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    unk_1ED948450 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948458 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::performAction<(BBUStage)32>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_447()
{
  if ((byte_1ED948338 & 1) == 0)
  {
    byte_1ED948338 = 1;
    qword_1ED948C48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventEUICC>;
    qword_1ED948C18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>::execute;
  }
}

void __cxx_global_var_init_448()
{
  if ((byte_1ED948340 & 1) == 0)
  {
    byte_1ED948340 = 1;
    qword_1ED948CA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventFuse>;
    qword_1ED948C70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::ControllerFSM_TOP::fuse,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_449()
{
  if ((byte_1ED948348 & 1) == 0)
  {
    byte_1ED948348 = 1;
    qword_1ED948CF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CB0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventProvision>;
    qword_1ED948CC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_450()
{
  if ((byte_1ED948350 & 1) == 0)
  {
    byte_1ED948350 = 1;
    qword_1ED948480 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948488 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)32>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute;
    qword_1ED948478 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::performAction<(BBUStage)4>,boost::msm::front::none>>::execute;
    qword_1ED948470 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::performAction<(BBUStage)2>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_451()
{
  if ((byte_1ED948358 & 1) == 0)
  {
    byte_1ED948358 = 1;
    qword_1ED9483C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::eventCmdPerformNextStage,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::finishProvision,boost::msm::front::none>>::execute;
    qword_1ED9483B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdPerformNextStage,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionFinish,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::startProvision,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_452()
{
  if ((byte_1ED948360 & 1) == 0)
  {
    byte_1ED948360 = 1;
    qword_1ED948D50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D08 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformNextStage>;
    qword_1ED948D20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute;
    qword_1ED948D30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdPerformNextStage>::execute;
  }
}

void __cxx_global_var_init_453()
{
  if ((byte_1ED948368 & 1) == 0)
  {
    byte_1ED948368 = 1;
    qword_1ED948DA8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948DA0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D98 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D90 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D88 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D80 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D78 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D70 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D68 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformCoreDump>;
    qword_1ED948D60 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformCoreDump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::collectDump,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_454()
{
  if ((byte_1ED948370 & 1) == 0)
  {
    byte_1ED948370 = 1;
    qword_1ED948E00 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DF8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DF0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DE8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DE0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DD8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DD0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DC8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DC0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformBootup>;
    qword_1ED948DB8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformBootup,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<false>,boost::msm::front::none>>::execute;
  }
}

void __cxx_global_var_init_455()
{
  if ((byte_1ED948378 & 1) == 0)
  {
    byte_1ED948378 = 1;
    qword_1ED948E58 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E50 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E48 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E40 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E38 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E30 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E28 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E20 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E18 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::call_no_transition<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>;
    qword_1ED948E10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdPerformManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,boost::msm::front::none>>::execute;
  }
}

uint64_t eUICC::detail::StateMachine::Run(int *a1, void *a2, uint64_t a3, const __CFDictionary **a4)
{
  v126 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v90 = v7;
  v91 = v7;
  v89 = v7;
  v8 = *a4;
  v88 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  eUICC::Options::Options(&v89, &v88);
  if (v8)
  {
    CFRelease(v8);
  }

  if (BYTE10(v91) & 1) != 0 || (BYTE10(v89))
  {
    v9 = 0;
  }

  else
  {
    v9 = BYTE11(v89) ^ 1u;
  }

  v86 = 0xAAAAAAAAAAAAAAAALL;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a3 + 184))(&v84, a3);
  eUICC::Source::CreateFromZip(&v84, &v86);
  v10 = v85;
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = &unk_1ED949000;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  eUICC::Options::ToString(&v89, &__p);
  if (SHIBYTE(v97) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    LOBYTE(p_p) = __p;
  }

  v16 = _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Options:\n%s\n", v12, v13, v14, p_p);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  v83 = 0xAAAAAAAAAAAAAAAALL;
  v17 = v89;
  v18 = BYTE9(v91);
  v19 = capabilities::radio::maverick(v16);
  if (v19)
  {
    v20 = operator new(0x138uLL);
    v20[289] = 0;
    *v20 = &unk_1F5F06980;
    *(v20 + 37) = a2;
    *(v20 + 73) = v17;
    v20[290] = v18;
    v20[304] = 15;
    v83 = v20;
    v24 = *a1;
    *a1 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (!capabilities::radio::ice(v19))
  {
    v83 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      v69 = *a1;
      if (v69 <= 9)
      {
LABEL_119:
        v70 = (&off_1E876DE60)[v69];
LABEL_125:
        _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Fatal Error: Error creating vinyl valve! Current State: %s\n", v27, v28, v29, v70);
        *a1 = 8;
        v56 = 9;
LABEL_126:
        if (v11[396] != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "ret = %d\n", v32, v33, v34, v56);
        v73 = v83;
        v83 = 0;
        if (!v73)
        {
          goto LABEL_130;
        }

LABEL_129:
        (*(*v73 + 96))(v73);
        goto LABEL_130;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v69 = *a1;
      if (v69 <= 9)
      {
        goto LABEL_119;
      }
    }

    v70 = "??????";
    goto LABEL_125;
  }

  v30 = operator new(0x140uLL);
  eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v30, a2, v17, v18);
  v83 = v30;
  v24 = *a1;
  *a1 = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
LABEL_21:
    if (v24 <= 9)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_26:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if (v24 <= 9)
  {
LABEL_22:
    v25 = (&off_1E876DE60)[v24];
    v26 = *a1;
    if (v26 > 9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_27:
  v25 = "??????";
  v26 = *a1;
  if (v26 > 9)
  {
    goto LABEL_29;
  }

LABEL_28:
  v31 = (&off_1E876DE60)[v26];
LABEL_29:
  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Resetting state machine: %s --> %s\n", v21, v22, v23, v25);
  while (1)
  {
    if (*a1 > 7)
    {
      v56 = 0;
      goto LABEL_126;
    }

    if (v11[396] == -1)
    {
      v35 = *a1;
      v36 = "??????";
      if (v35 > 9)
      {
        goto LABEL_35;
      }

LABEL_34:
      v36 = (&off_1E876DE60)[v35];
      goto LABEL_35;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v35 = *a1;
    v36 = "??????";
    if (v35 <= 9)
    {
      goto LABEL_34;
    }

LABEL_35:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Running at state %s\n", v32, v33, v34, v36);
    v82 = v9;
    v37 = v86;
    v38 = v87;
    if (v87)
    {
      atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
    }

    v94 = 8;
    LODWORD(__p) = 0;
    v96 = &unk_1F5EFFAE0;
    v97 = eUICC::detail::StateMachine::Start;
    v98 = &v96;
    v99 = 3;
    v100[0] = &unk_1F5EFFAE0;
    v100[1] = eUICC::detail::StateMachine::Perso;
    v101 = v100;
    v102 = 1;
    v103[0] = &unk_1F5EFFAE0;
    v103[1] = eUICC::detail::StateMachine::Recovery;
    v104 = v103;
    v105 = 2;
    v106[0] = &unk_1F5EFFAE0;
    v106[1] = eUICC::detail::StateMachine::VersionCheck;
    v107 = v106;
    v108 = 4;
    v109[0] = &unk_1F5EFFAE0;
    v109[1] = eUICC::detail::StateMachine::UpdateGold;
    v110 = v109;
    v111 = 5;
    v112[0] = &unk_1F5EFFAE0;
    v112[1] = eUICC::detail::StateMachine::UpdateMain;
    v113 = v112;
    v114 = 6;
    v115[0] = &unk_1F5EFFAE0;
    v115[1] = eUICC::detail::StateMachine::PostProcess;
    v116 = v115;
    v117 = 7;
    v118[0] = &unk_1F5EFFAE0;
    v118[1] = eUICC::detail::StateMachine::Retry;
    v119 = v118;
    v120 = 8;
    v122 = 0;
    v123 = 9;
    v125 = 0;
    v93[0] = 0;
    v93[1] = 0;
    v92 = v93;
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, 0, &__p);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v99, &v99);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v102, &v102);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v105, &v105);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v108, &v108);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v111, &v111);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v114, &v114);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v117, &v117);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v120, &v120);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(&v92, v93, v123, &v123);
    if (v125 == &v124)
    {
      (*(*v125 + 32))(v125);
      v39 = v122;
      if (v122 == v121)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v125)
      {
        (*(*v125 + 40))();
      }

      v39 = v122;
      if (v122 == v121)
      {
LABEL_70:
        (*(*v39 + 32))(v39);
        v40 = v119;
        if (v119 == v118)
        {
          goto LABEL_71;
        }

        goto LABEL_44;
      }
    }

    if (v39)
    {
      (*(*v39 + 40))(v39);
    }

    v40 = v119;
    if (v119 == v118)
    {
LABEL_71:
      (*(*v40 + 32))(v40);
      v41 = v116;
      if (v116 == v115)
      {
        goto LABEL_72;
      }

      goto LABEL_47;
    }

LABEL_44:
    if (v40)
    {
      (*(*v40 + 40))(v40);
    }

    v41 = v116;
    if (v116 == v115)
    {
LABEL_72:
      (*(*v41 + 32))(v41);
      v42 = v113;
      if (v113 == v112)
      {
        goto LABEL_73;
      }

      goto LABEL_50;
    }

LABEL_47:
    if (v41)
    {
      (*(*v41 + 40))(v41);
    }

    v42 = v113;
    if (v113 == v112)
    {
LABEL_73:
      (*(*v42 + 32))(v42);
      v43 = v110;
      if (v110 == v109)
      {
        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_50:
    if (v42)
    {
      (*(*v42 + 40))(v42);
    }

    v43 = v110;
    if (v110 == v109)
    {
LABEL_74:
      (*(*v43 + 32))(v43);
      v44 = v107;
      if (v107 == v106)
      {
        goto LABEL_75;
      }

      goto LABEL_56;
    }

LABEL_53:
    if (v43)
    {
      (*(*v43 + 40))(v43);
    }

    v44 = v107;
    if (v107 == v106)
    {
LABEL_75:
      (*(*v44 + 32))(v44);
      v45 = v104;
      if (v104 == v103)
      {
        goto LABEL_76;
      }

      goto LABEL_59;
    }

LABEL_56:
    if (v44)
    {
      (*(*v44 + 40))(v44);
    }

    v45 = v104;
    if (v104 == v103)
    {
LABEL_76:
      (*(*v45 + 32))(v45);
      v46 = v101;
      if (v101 == v100)
      {
        goto LABEL_77;
      }

      goto LABEL_62;
    }

LABEL_59:
    if (v45)
    {
      (*(*v45 + 40))(v45);
    }

    v46 = v101;
    if (v101 == v100)
    {
LABEL_77:
      (*(*v46 + 32))(v46);
      v47 = v98;
      if (v98 == &v96)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

LABEL_62:
    if (v46)
    {
      (*(*v46 + 40))(v46);
    }

    v47 = v98;
    if (v98 == &v96)
    {
LABEL_78:
      (*(*v47 + 4))(v47);
      v48 = v93[0];
      if (!v93[0])
      {
        goto LABEL_141;
      }

      goto LABEL_79;
    }

LABEL_65:
    if (v47)
    {
      (*(*v47 + 5))(v47);
    }

    v48 = v93[0];
    if (!v93[0])
    {
LABEL_141:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x92u, "Assertion failure(((stateMap.end() != def) && def->second) && StateMachine is corrupted.)", v78, v79, v80, v81);
    }

LABEL_79:
    v49 = *a1;
    v50 = v93;
    do
    {
      if (*(v48 + 8) >= v49)
      {
        v50 = v48;
      }

      v48 = v48[*(v48 + 8) < v49];
    }

    while (v48);
    if (v50 == v93)
    {
      goto LABEL_141;
    }

    if (v49 < *(v50 + 8))
    {
      goto LABEL_141;
    }

    v51 = v50[8];
    if (!v51)
    {
      goto LABEL_141;
    }

    __p = v37;
    v96 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = v50[8];
      if (!v51)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    v52 = v11;
    v56 = (*(*v51 + 48))(v51, &__p, &v89, &v94, &v83);
    v57 = v96;
    if (v96 && !atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }

    v11 = v52;
    if (v52[396] == -1)
    {
      v58 = *a1;
      if (v58 > 9)
      {
        goto LABEL_94;
      }

LABEL_93:
      v59 = (&off_1E876DE60)[v58];
      goto LABEL_94;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v58 = *a1;
    if (v58 <= 9)
    {
      goto LABEL_93;
    }

LABEL_94:
    if (v94 <= 9)
    {
      v60 = (&off_1E876DE60)[v94];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Ret %d from state %s next %s\n", v53, v54, v55, v56);
    v61 = v56 == 45 || v56 == 0;
    v62 = v94;
    if (!v61)
    {
      v62 = 8;
    }

    *a1 = v62;
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(v93[0]);
    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v66 = v52[396];
    if (v56 == 45)
    {
      break;
    }

    if (v66 != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v9 = v82;
      v67 = *a1;
      if (v67 > 9)
      {
        goto LABEL_108;
      }

LABEL_107:
      v68 = (&off_1E876DE60)[v67];
      goto LABEL_108;
    }

    v9 = v82;
    v67 = *a1;
    if (v67 <= 9)
    {
      goto LABEL_107;
    }

LABEL_108:
    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Result %d next state %s allowRetry %d\n", v63, v64, v65, v56);
    if (((v56 != 0) & v9) == 1)
    {
      v56 = 0;
      v9 = 0;
      *a1 = 7;
    }

    if (v56)
    {
      goto LABEL_126;
    }
  }

  if (v66 == -1)
  {
    v71 = *a1;
    if (v71 <= 9)
    {
      goto LABEL_122;
    }

LABEL_138:
    v72 = "??????";
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v71 = *a1;
    if (v71 > 9)
    {
      goto LABEL_138;
    }

LABEL_122:
    v72 = (&off_1E876DE60)[v71];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "eUICC -- back to host to personalize in state %s\n", v63, v64, v65, v72);
  v56 = 0;
  v73 = v83;
  v83 = 0;
  if (v73)
  {
    goto LABEL_129;
  }

LABEL_130:
  v74 = v87;
  if (v87 && !atomic_fetch_add((v87 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v74->__on_zero_shared)(v74);
    std::__shared_weak_count::__release_weak(v74);
    if (SBYTE7(v91) < 0)
    {
LABEL_133:
      operator delete(v90[0]);
    }
  }

  else if (SBYTE7(v91) < 0)
  {
    goto LABEL_133;
  }

  v75 = *MEMORY[0x1E69E9840];
  return v56;
}

void sub_1E5281A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  operator delete(v47);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::Start(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v18 + 10) = v6;
  v17[15] = v6;
  v18[0] = v6;
  v17[13] = v6;
  v17[14] = v6;
  v17[11] = v6;
  v17[12] = v6;
  v17[9] = v6;
  v17[10] = v6;
  v17[7] = v6;
  v17[8] = v6;
  v17[5] = v6;
  v17[6] = v6;
  v17[3] = v6;
  v17[4] = v6;
  v17[1] = v6;
  v17[2] = v6;
  v17[0] = v6;
  (*(**a4 + 8))(v17);
  v13 = eUICC::HowToProceed(v17, a2, v7, v8, v9, v10, v11, v12);
  if (v13 > 1)
  {
    if (v13 == 3)
    {
      v15 = 9;
    }

    else
    {
      v15 = 6;
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v15 = 3;
LABEL_8:
    result = 0;
    *a3 = v15;
    goto LABEL_9;
  }

  result = 18;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t eUICC::detail::StateMachine::Perso(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v16 + 10) = v7;
  v15 = v7;
  v16[0] = v7;
  v14[13] = v7;
  v14[14] = v7;
  v14[11] = v7;
  v14[12] = v7;
  v14[9] = v7;
  v14[10] = v7;
  v14[7] = v7;
  v14[8] = v7;
  v14[5] = v7;
  v14[6] = v7;
  v14[3] = v7;
  v14[4] = v7;
  v14[1] = v7;
  v14[2] = v7;
  v14[0] = v7;
  (*(**a4 + 8))(v14);
  if (BYTE4(v14[0]) == 1 || *(a2 + 40) == 1)
  {
    memset(&__p, 170, sizeof(__p));
    eUICC::Firmware::BootloaderVersion(v15, BYTE1(v15), &__p);
    result = eUICC::Perso::Perform(a2, &__p, a4);
    v9 = *a4;
    *(v9 + 8) = 0u;
    v9 = (v9 + 8);
    v9[15] = 0u;
    v9[16] = 0u;
    v9[13] = 0u;
    v9[14] = 0u;
    v9[11] = 0u;
    v9[12] = 0u;
    v9[9] = 0u;
    v9[10] = 0u;
    v9[7] = 0u;
    v9[8] = 0u;
    v9[5] = 0u;
    v9[6] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    *(v9 + 266) = 0u;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      result = v10;
    }
  }

  else
  {
    result = 0;
  }

  if (*(a2 + 9))
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  *a3 = v11;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5281E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::detail::StateMachine::Recovery(uint64_t *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v61[10] = v7;
  v60 = v7;
  *v61 = v7;
  v59[4] = v7;
  v59[5] = v7;
  v59[2] = v7;
  v59[3] = v7;
  v59[0] = v7;
  v59[1] = v7;
  v57 = v7;
  v58 = v7;
  v55 = v7;
  v56 = v7;
  v54 = v7;
  v52 = v7;
  v53 = v7;
  v50 = v7;
  v51 = v7;
  v8 = (*(**a4 + 8))(&v50);
  v9 = capabilities::updater::EUICCVinylSuccessStatus(v8);
  if (v50 != v9)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "euiccData.Valid()");
    v15 = 18;
    goto LABEL_54;
  }

  if (!BYTE7(v51))
  {
    v15 = 0;
LABEL_53:
    *a3 = 2;
    goto LABEL_54;
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v14 = *a1;
  if (v61[19] < 5u)
  {
    memset(__p, 0, sizeof(__p));
  }

  else
  {
    eUICC::eUICCHashedFWDir(__p, &v60, &v60 + 3, v10);
  }

  eUICC::Source::GetMainFirmware(v14, __p, &v48);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v19 = v48;
    if (v48)
    {
LABEL_12:
      v20 = (*(*v19 + 8))(v19);
      v24 = *(&v54 + 1) != *v20;
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "SM::Recovery -- normal? %d\n", v21, v22, v23, !v24);
      v45 = 0xAAAAAAAAAAAAAAAALL;
      v46 = 0xAAAAAAAAAAAAAAAALL;
      if (v24)
      {
        v26 = *a1;
        if (v61[19] < 5u)
        {
          memset(__p, 0, sizeof(__p));
        }

        else
        {
          eUICC::eUICCHashedFWDir(__p, &v60, &v60 + 3, v25);
        }

        eUICC::Source::GetRecoveryForMac((v59 + 3), v26, __p, &v45);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v28 = v45;
        if (!v45)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v28 = v48;
        v45 = v48;
        v46 = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        if (!v28)
        {
LABEL_36:
          memset(__p, 170, sizeof(__p));
          ctu::hex((v59 + 3), 8);
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          v38 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            LOBYTE(v38) = __p[0];
          }

          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "SM::Recovery Missing gold with hash %s\n", v35, v36, v37, v38);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v27 = 0;
          v15 = 15;
          v39 = v46;
          if (!v46)
          {
            goto LABEL_49;
          }

LABEL_47:
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
          }

          goto LABEL_49;
        }
      }

      v29 = *a4;
      v43 = v28;
      v44 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v29 + 32))(v29, &v43);
      v33 = v44;
      if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      v34 = *a4;
      *(v34 + 8) = 0u;
      v34 = (v34 + 8);
      v34[15] = 0u;
      v34[16] = 0u;
      v34[13] = 0u;
      v34[14] = 0u;
      v34[11] = 0u;
      v34[12] = 0u;
      v34[9] = 0u;
      v34[10] = 0u;
      v34[7] = 0u;
      v34[8] = 0u;
      v34[5] = 0u;
      v34[6] = 0u;
      v34[3] = 0u;
      v34[4] = 0u;
      v34[1] = 0u;
      v34[2] = 0u;
      *(v34 + 266) = 0u;
      if (v15)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v15 = (*(**a4 + 16))(*a4, 0, 0);
        if (!v15)
        {
          v27 = 1;
          v39 = v46;
          if (!v46)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
LABEL_46:
          _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v30, v31, v32, "kBBUReturnSuccess == ret");
          v27 = 0;
          v39 = v46;
          if (!v46)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }
      }

      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      goto LABEL_46;
    }
  }

  else
  {
    v19 = v48;
    if (v48)
    {
      goto LABEL_12;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "mainFW != nullptr");
  v27 = 0;
  v15 = 15;
LABEL_49:
  v40 = v49;
  if (v49 && !atomic_fetch_add((v49 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v27)
  {
    goto LABEL_53;
  }

LABEL_54:
  v41 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E52824CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52824E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a24);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void sub_1E5282574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E528259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::detail::StateMachine::VersionCheck(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  memset(&v82, 0, sizeof(v82));
  v79 = 0;
  v80 = 0;
  v81 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v85[10] = v6;
  *v84 = v6;
  *v85 = v6;
  v83[13] = v6;
  v83[14] = v6;
  v83[11] = v6;
  v83[12] = v6;
  v83[9] = v6;
  v83[10] = v6;
  v83[7] = v6;
  v83[8] = v6;
  v83[5] = v6;
  v83[6] = v6;
  v83[3] = v6;
  v83[4] = v6;
  v83[1] = v6;
  v83[2] = v6;
  v83[0] = v6;
  (*(**a4 + 8))(v83);
  v77 = 0xAAAAAAAAAAAAAAAALL;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (v85[19] < 5u)
  {
    memset(&__p, 0, sizeof(__p));
  }

  else
  {
    eUICC::eUICCHashedFWDir(&__p, v84, v84 + 3, v7);
  }

  eUICC::Source::GetMainFirmware(v8, &__p, &v77);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v74 = 0xAAAAAAAAAAAAAAAALL;
    v75 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *a1;
    if (v85[19] >= 5u)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v74 = 0xAAAAAAAAAAAAAAAALL;
    v75 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *a1;
    if (v85[19] >= 5u)
    {
LABEL_6:
      eUICC::eUICCHashedFWDir(&__p, v84, v84 + 3, v9);
      goto LABEL_9;
    }
  }

  memset(&__p, 0, sizeof(__p));
LABEL_9:
  eUICC::Source::GetGoldFirmware(v10, &__p, &v74);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v77)
    {
      goto LABEL_11;
    }

LABEL_22:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "eUICC Source has no FW, ENG?\n", v12, v13, v14, v68);
LABEL_66:
    v28 = 0;
    *a3 = 6;
    v29 = v75;
    if (!v75)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v77)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (!v74)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "goldFirmware");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main & !Gold?\n", v25, v26, v27, v70);
    v28 = 15;
    *a3 = 4;
    v29 = v75;
    if (!v75)
    {
      goto LABEL_69;
    }

LABEL_67:
    if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    goto LABEL_69;
  }

  v15 = capabilities::updater::EUICCVinylSuccessStatus(v11);
  if (LODWORD(v83[0]) == v15)
  {
    eUICC::Firmware::BootloaderVersion(LOBYTE(v84[0]), BYTE1(v84[0]), &__p);
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    v82 = __p;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v22 = &v82;
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v22) = v82.__r_.__value_.__s.__data_[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main FW supports %s?\n", v19, v20, v21, v22);
    v24 = *a1;
    if (v85[19] < 5u)
    {
      memset(&__p, 0, sizeof(__p));
    }

    else
    {
      eUICC::eUICCHashedFWDir(&__p, v84, v84 + 3, v23);
    }

    eUICC::Source::GetMainFirmware(v24, &__p, &v72);
    v33 = eUICC::Firmware::BundleVersionsSupported(v72, &v79);
    v34 = v73;
    if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v33)
    {
      v36 = v79;
      v35 = v80;
      if (v79 == v80)
      {
        goto LABEL_64;
      }

      v37 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v82.__r_.__value_.__r.__words[2]) : v82.__r_.__value_.__l.__size_;
      v38 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v82 : v82.__r_.__value_.__r.__words[0];
      while (1)
      {
        v39 = *(v36 + 23);
        v40 = v39;
        if (v39 < 0)
        {
          v39 = v36[1];
        }

        if (v39 == v37)
        {
          v41 = v40 >= 0 ? v36 : *v36;
          if (!memcmp(v41, v38, v37))
          {
            break;
          }
        }

        v36 += 3;
        if (v36 == v35)
        {
          goto LABEL_64;
        }
      }

      if (v36 == v35)
      {
LABEL_64:
        if (gBBULogMaskGet(void)::once == -1)
        {
LABEL_65:
          _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v30, v31, v32, "std::end(bundleVersions) != std::find(bundleVersions.begin(), bundleVersions.end(), cardVersion)");
          goto LABEL_66;
        }

LABEL_110:
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        goto LABEL_65;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v42 = &v82;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        LOBYTE(v42) = v82.__r_.__value_.__s.__data_[0];
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold FW supports %s?\n", v30, v31, v32, v42);
      v44 = *a1;
      if (v85[19] < 5u)
      {
        memset(&__p, 0, sizeof(__p));
      }

      else
      {
        eUICC::eUICCHashedFWDir(&__p, v84, v84 + 3, v43);
      }

      eUICC::Source::GetGoldFirmware(v44, &__p, &v72);
      v52 = eUICC::Firmware::BundleVersionsSupported(v72, &v79);
      v53 = v73;
      if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v53->__on_zero_shared)(v53);
        std::__shared_weak_count::__release_weak(v53);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v52)
      {
        v55 = v79;
        v54 = v80;
        if (v79 != v80)
        {
          v56 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v82.__r_.__value_.__r.__words[2]) : v82.__r_.__value_.__l.__size_;
          v57 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v82 : v82.__r_.__value_.__r.__words[0];
          while (1)
          {
            v58 = *(v55 + 23);
            v59 = v58;
            if (v58 < 0)
            {
              v58 = v55[1];
            }

            if (v58 == v56)
            {
              v60 = v59 >= 0 ? v55 : *v55;
              if (!memcmp(v60, v57, v56))
              {
                break;
              }
            }

            v55 += 3;
            if (v55 == v54)
            {
              goto LABEL_108;
            }
          }

          if (v55 != v54)
          {
            v28 = 0;
            *a3 = 4;
            v29 = v75;
            if (!v75)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }
        }

LABEL_108:
        if (gBBULogMaskGet(void)::once == -1)
        {
          goto LABEL_65;
        }

        goto LABEL_110;
      }

      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x10Eu, "Assertion failure(success && Failed to get the gold loader version from Gold FW.)", v65, v66, v67, v71);
    }

    else
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/StateMachine/eUICCStateMachine.cpp", 0x109u, "Assertion failure(success && Failed to get the main loader version from Main FW.)", v62, v63, v64, v69);
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "euiccData.Valid()");
  v28 = 18;
  *a3 = 4;
  v29 = v75;
  if (v75)
  {
    goto LABEL_67;
  }

LABEL_69:
  v45 = v78;
  if (v78 && !atomic_fetch_add((v78 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = v79;
  if (v79)
  {
    v47 = v80;
    v48 = v79;
    if (v80 != v79)
    {
      do
      {
        v49 = *(v47 - 1);
        v47 -= 3;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      while (v47 != v46);
      v48 = v79;
    }

    v80 = v46;
    operator delete(v48);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_1E5282E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  __cxa_free_exception(v33);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  std::vector<std::string>::~vector[abi:ne200100](&a25);
  if ((a33 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::UpdateGold(uint64_t *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[16] + 10) = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v9 = (*(**a4 + 8))(__dst);
  v10 = capabilities::updater::EUICCVinylSuccessStatus(v9);
  if (LODWORD(__dst[0]) != v10)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    goto LABEL_6;
  }

  v15 = *a1;
  if (BYTE3(__dst[17]) < 5u)
  {
    memset(cf, 0, 24);
  }

  else
  {
    eUICC::eUICCHashedFWDir(cf, &__dst[15], &__dst[15] + 3, v11);
  }

  eUICC::Source::GetGoldFirmware(v15, cf, __p);
  v20 = __p[0];
  v21 = __p[1];
  __p[0] = 0;
  __p[1] = 0;
  v63 = v20;
  v64 = v21;
  if ((SHIBYTE(cf[2]) & 0x80000000) == 0)
  {
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_24:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "goldFW");
    v16 = 15;
    goto LABEL_51;
  }

  operator delete(cf[0]);
  if (!v20)
  {
    goto LABEL_24;
  }

LABEL_10:
  v25 = ((*v20)[1])(v20);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "In UpdateGold, fwMac.data = %p\n", v22, v23, v24, v25);
  if ((*(a2 + 11) & 1) == 0 && *v25 == *(&__dst[9] + 3))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold FW Macs already matching (no forceGold)\n", v26, v27, v28, v56);
    v16 = 0;
    *a3 = 5;
  }

  else
  {
    ((*v20)[2])(cf, v20);
    if (cf[0])
    {
      CFRelease(cf[0]);
      if ((*(a2 + 11) & 1) != 0 || *v25 != *(&__dst[9] + 3))
      {
        v32 = *a4;
        ((*v20)[2])(&v62, v20);
        v16 = (*(*v32 + 24))(v32, &v62);
        if (v62)
        {
          CFRelease(v62);
        }

        v36 = *a4;
        *(v36 + 8) = 0u;
        v36 = (v36 + 8);
        v36[15] = 0u;
        v36[16] = 0u;
        v36[13] = 0u;
        v36[14] = 0u;
        v36[11] = 0u;
        v36[12] = 0u;
        v36[9] = 0u;
        v36[10] = 0u;
        v36[7] = 0u;
        v36[8] = 0u;
        v36[5] = 0u;
        v36[6] = 0u;
        v36[3] = 0u;
        v36[4] = 0u;
        v36[1] = 0u;
        v36[2] = 0u;
        *(v36 + 266) = 0u;
        if (v16)
        {
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

LABEL_50:
          _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v33, v34, v35, "kBBUReturnSuccess == ret");
          goto LABEL_51;
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully pushed Install Ticket\n", v33, v34, v35, v56);
      }

      v37 = *a4;
      v60 = v20;
      v61 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
      }

      v16 = (*(*v37 + 32))(v37, &v60);
      v38 = v61;
      if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

      v39 = *a4;
      *(v39 + 8) = 0u;
      v39 = (v39 + 8);
      v39[15] = 0u;
      v39[16] = 0u;
      v39[13] = 0u;
      v39[14] = 0u;
      v39[11] = 0u;
      v39[12] = 0u;
      v39[9] = 0u;
      v39[10] = 0u;
      v39[7] = 0u;
      v39[8] = 0u;
      v39[5] = 0u;
      v39[6] = 0u;
      v39[3] = 0u;
      v39[4] = 0u;
      v39[1] = 0u;
      v39[2] = 0u;
      *(v39 + 266) = 0u;
      if (v16)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        goto LABEL_50;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully streamed Firmware\n", v33, v34, v35, v56);
      v16 = (*(**a4 + 16))(*a4, 0, 0);
      v40 = *a4;
      *(v40 + 8) = 0u;
      v40 = (v40 + 8);
      v40[15] = 0u;
      v40[16] = 0u;
      v40[13] = 0u;
      v40[14] = 0u;
      v40[11] = 0u;
      v40[12] = 0u;
      v40[9] = 0u;
      v40[10] = 0u;
      v40[7] = 0u;
      v40[8] = 0u;
      v40[5] = 0u;
      v40[6] = 0u;
      v40[3] = 0u;
      v40[4] = 0u;
      v40[1] = 0u;
      v40[2] = 0u;
      *(v40 + 266) = 0u;
      if (v16)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        goto LABEL_50;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully switched back to Normal\n", v33, v34, v35, v57);
      (*(**a4 + 8))(cf);
      v44 = memcpy(__dst, cf, 0x11AuLL);
      v45 = capabilities::updater::EUICCVinylSuccessStatus(v44);
      if (LODWORD(__dst[0]) == v45)
      {
        v46 = operator new(0x28uLL);
        v47 = v46;
        cf[0] = v46;
        *&cf[1] = xmmword_1E5390C30;
        v48 = *(&__dst[2] + 8);
        *v46 = *(&__dst[1] + 8);
        v46[1] = v48;
        *(v46 + 32) = 0;
        memset(__p, 170, sizeof(__p));
        (**v63)(__p);
        v52 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(cf, __p);
        if (v52)
        {
          v16 = 0;
        }

        else
        {
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          v16 = 22;
          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Gold version strings mismatched: Card %s Bundle %s\n", v49, v50, v51, v47);
        }

        if ((SHIBYTE(__p[2]) & 0x80000000) == 0 || (operator delete(__p[0]), SHIBYTE(cf[2]) < 0))
        {
          operator delete(cf[0]);
        }

        if (v52)
        {
          *a3 = 5;
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Success!\n", v53, v54, v55, v58);
        }

        goto LABEL_51;
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

LABEL_6:
      _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "euiccData.Valid()");
      v16 = 18;
      goto LABEL_51;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Install gold but no ticket -- back to restored please\n", v29, v30, v31, v56);
    v16 = 45;
    *a3 = 4;
  }

LABEL_51:
  v41 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1E5283920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((a18 & 0x80000000) == 0 || (operator delete(__p), a32 < 0))
  {
    operator delete(a27);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t eUICC::detail::StateMachine::UpdateMain(uint64_t *a1, uint64_t a2, int *a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = 0;
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  __p = 0;
  v74 = 0uLL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[16] + 10) = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v9 = (*(**a4 + 8))(__dst);
  v10 = capabilities::updater::EUICCVinylSuccessStatus(v9);
  if (LODWORD(__dst[0]) != v10)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "euiccData.Valid()");
    v16 = 18;
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

  v15 = *a1;
  if (BYTE3(__dst[17]) < 5u)
  {
    memset(cf, 0, 24);
  }

  else
  {
    eUICC::eUICCHashedFWDir(cf, &__dst[15], &__dst[15] + 3, v11);
  }

  eUICC::Source::GetMainFirmware(v15, cf, &v71);
  v21 = v71;
  v22 = v72;
  v71 = 0;
  v72 = 0;
  v77 = v21;
  v78 = v22;
  if (SHIBYTE(cf[2]) < 0)
  {
    operator delete(cf[0]);
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "mainFW");
    v16 = 15;
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

  if (!v21)
  {
    goto LABEL_45;
  }

LABEL_13:
  (**v21)(cf, v21);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75[0]);
  }

  *v75 = *cf;
  v76 = cf[2];
  v23 = operator new(0x28uLL);
  v24 = *(&__dst[2] + 8);
  *v23 = *(&__dst[1] + 8);
  v23[1] = v24;
  *(v23 + 32) = 0;
  if (SHIBYTE(v74) < 0)
  {
    v25 = v23;
    operator delete(__p);
    v23 = v25;
  }

  __p = v23;
  v74 = xmmword_1E5390C30;
  v29 = (*(*v21 + 8))(v21);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  p_p = &__p;
  if (v74 < 0)
  {
    LOBYTE(p_p) = __p;
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Update Main:Card %s Bundle %s\n", v26, v27, v28, p_p);
  if ((*(a2 + 10) & 1) == 0)
  {
    if (v74 >= 0)
    {
      v31 = HIBYTE(v74);
    }

    else
    {
      v31 = v74;
    }

    v32 = HIBYTE(v76);
    if (SHIBYTE(v76) < 0)
    {
      v32 = v75[1];
    }

    if (v31 == v32)
    {
      v33 = v74 >= 0 ? &__p : __p;
      v34 = SHIBYTE(v76) >= 0 ? v75 : v75[0];
      if (!memcmp(v33, v34, v31))
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        v54 = "Main FW versions already matching (no forceMain)\n";
        goto LABEL_73;
      }
    }
  }

  (*(*v21 + 16))(cf, v21);
  if (!cf[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Install main but no ticket -- back to restored please\n", v38, v39, v40, v66);
    v16 = 45;
    v46 = 5;
    goto LABEL_74;
  }

  CFRelease(cf[0]);
  if ((*(a2 + 10) & 1) != 0 || *(&__dst[4] + 1) != *v29)
  {
    v41 = *a4;
    (*(*v21 + 16))(&v70, v21);
    v16 = (*(*v41 + 24))(v41, &v70);
    if (v70)
    {
      CFRelease(v70);
    }

    v45 = *a4;
    *(v45 + 8) = 0u;
    v45 = (v45 + 8);
    v45[15] = 0u;
    v45[16] = 0u;
    v45[13] = 0u;
    v45[14] = 0u;
    v45[11] = 0u;
    v45[12] = 0u;
    v45[9] = 0u;
    v45[10] = 0u;
    v45[7] = 0u;
    v45[8] = 0u;
    v45[5] = 0u;
    v45[6] = 0u;
    v45[3] = 0u;
    v45[4] = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    *(v45 + 266) = 0u;
    if (v16)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v42, v43, v44, "kBBUReturnSuccess == ret");
LABEL_75:
      if ((SHIBYTE(v74) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_7:
      operator delete(__p);
      if ((SHIBYTE(v76) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_8;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully pushed Install Ticket\n", v42, v43, v44, v66);
  }

  v47 = *a4;
  v68 = v21;
  v69 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (*(*v47 + 32))(v47, &v68);
  v51 = v69;
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  v52 = *a4;
  *(v52 + 8) = 0u;
  v52 = (v52 + 8);
  v52[15] = 0u;
  v52[16] = 0u;
  v52[13] = 0u;
  v52[14] = 0u;
  v52[11] = 0u;
  v52[12] = 0u;
  v52[9] = 0u;
  v52[10] = 0u;
  v52[7] = 0u;
  v52[8] = 0u;
  v52[5] = 0u;
  v52[6] = 0u;
  v52[3] = 0u;
  v52[4] = 0u;
  v52[1] = 0u;
  v52[2] = 0u;
  *(v52 + 266) = 0u;
  if (v16)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

LABEL_63:
    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v48, v49, v50, "kBBUReturnSuccess == ret");
    goto LABEL_75;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully streamed Firmware\n", v48, v49, v50, v66);
  v16 = (*(**a4 + 16))(*a4, 0, 0);
  v53 = *a4;
  *(v53 + 8) = 0u;
  v53 = (v53 + 8);
  v53[15] = 0u;
  v53[16] = 0u;
  v53[13] = 0u;
  v53[14] = 0u;
  v53[11] = 0u;
  v53[12] = 0u;
  v53[9] = 0u;
  v53[10] = 0u;
  v53[7] = 0u;
  v53[8] = 0u;
  v53[5] = 0u;
  v53[6] = 0u;
  v53[3] = 0u;
  v53[4] = 0u;
  v53[1] = 0u;
  v53[2] = 0u;
  *(v53 + 266) = 0u;
  if (v16)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    goto LABEL_63;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "successfully switched back to Normal\n", v48, v49, v50, v67);
  (*(**a4 + 8))(cf);
  memcpy(__dst, cf, 0x11AuLL);
  v57 = operator new(0x28uLL);
  cf[0] = v57;
  *&cf[1] = xmmword_1E5390C30;
  v58 = *(&__dst[2] + 8);
  *v57 = *(&__dst[1] + 8);
  v57[1] = v58;
  *(v57 + 32) = 0;
  v59 = capabilities::updater::EUICCVinylSuccessStatus(v57);
  if (LODWORD(__dst[0]) == v59)
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(cf, v75))
    {
      operator delete(v57);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v54 = "Success!\n";
LABEL_73:
      _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", v54, v35, v36, v37, v66);
      v16 = 0;
      v46 = 6;
LABEL_74:
      *a3 = v46;
      goto LABEL_75;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v16 = 22;
    _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Main version strings mismatched: Card %s Bundle %s", v63, v64, v65, v57);
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v60, v61, v62, "euiccData.Valid()");
    v16 = 18;
  }

  operator delete(v57);
  if (SHIBYTE(v74) < 0)
  {
    goto LABEL_7;
  }

LABEL_76:
  if ((SHIBYTE(v76) & 0x80000000) == 0)
  {
LABEL_77:
    v17 = v78;
    if (!v78)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

LABEL_8:
  operator delete(v75[0]);
  v17 = v78;
  if (!v78)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_80:
  v55 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1E528444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a31 & 0x80000000) == 0)
    {
LABEL_7:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a33);
      _Unwind_Resume(a1);
    }
  }

  else if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a26);
  goto LABEL_7;
}

uint64_t eUICC::detail::StateMachine::PostProcess(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v10 = *(a2 + 4);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v14 = 1;
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_5;
      }

      v14 = 0;
    }

    eUICC::ClearMetadata::Perform(v14, a4, a3, a4, a5, a6, a7, a8);
    result = 0;
    *a3 = 9;
    return result;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      goto LABEL_5;
    }

    result = (*(**a4 + 40))(*a4, 1);
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = (*(**a4 + 40))(*a4, 0);
  if (!result)
  {
LABEL_5:
    *a3 = 9;
    return result;
  }

LABEL_10:
  v15 = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "Failed to handle post processing request\n", v11, v12, v13, v16);
  result = v15;
  *a3 = 9;
  return result;
}

uint64_t eUICC::detail::StateMachine::Retry(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  (*(**a4 + 16))(*a4, 0, 1);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCStateMachine", "", "...waiting patiently for reset\n", v5, v6, v7, v9);
  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  *a3 = 0;
  return 0;
}

uint64_t std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::~pair(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t eUICC::HowToProceed(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v8 = "eUICC Skip All\n";
LABEL_5:
    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", v8, a6, a7, a8, v32);
    result = 3;
    goto LABEL_6;
  }

  v12 = capabilities::updater::EUICCVinylSuccessStatus(a1);
  if (*a1 == v12)
  {
    memset(v33, 170, sizeof(v33));
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3223088;
    std::vector<std::string>::vector[abi:ne200100](v33, &__p, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 170, sizeof(__p));
    eUICC::Firmware::BootloaderVersion(a1[240], a1[241], &__p);
    v16 = v33[0];
    v17 = v33[1];
    if (v33[0] != v33[1])
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v20 = *(v16 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = v16[1];
        }

        if (v20 == size)
        {
          v22 = v21 >= 0 ? v16 : *v16;
          if (!memcmp(v22, p_p, size))
          {
            break;
          }
        }

        v16 += 3;
        if (v16 == v17)
        {
          goto LABEL_34;
        }
      }
    }

    if (v16 == v17)
    {
LABEL_34:
      result = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "eUICC HW present is too old so we will skip updating it\n", v13, v14, v15, v32);
      result = 3;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    v23 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v23;
LABEL_36:
    v24 = v33[0];
    if (v33[0])
    {
      v25 = result;
      v26 = v33[1];
      v27 = v33[0];
      if (v33[1] != v33[0])
      {
        do
        {
          v28 = *(v26 - 1);
          v26 -= 3;
          if (v28 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v24);
        v27 = v33[0];
      }

      v33[1] = v24;
      operator delete(v27);
      result = v25;
    }

    goto LABEL_6;
  }

  if (a1[278] == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v8 = "eUICC not stuffed but that's ok!\n";
    goto LABEL_5;
  }

  if (capabilities::updater::shouldBailOnEUICCError(v12))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Bailing on eUICC error due to status %u\n", v29, v30, v31, *a1);
    result = 0;
  }

  else
  {
    result = 2;
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5284AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1E5284B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::eUICCHashedFWDir(eUICC *this, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v46 = v7;
  v55 = v7;
  v54 = v7;
  v53 = v7;
  v52 = v7;
  v51 = v7;
  v50 = v7;
  v47 = v7;
  *__p = v7;
  v43 = v7;
  v40 = v7;
  v41 = v7;
  v38 = v7;
  v39 = v7;
  v49 = 0;
  v8 = MEMORY[0x1E69E5570] + 64;
  v45 = MEMORY[0x1E69E5570] + 64;
  v9 = *(MEMORY[0x1E69E54E8] + 16);
  v37 = *(MEMORY[0x1E69E54E8] + 8);
  *(&v37 + *(v37 - 24)) = v9;
  v10 = (&v37 + *(v37 - 24));
  std::ios_base::init(v10, &v38);
  v11 = MEMORY[0x1E69E5570] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v37 = v11;
  v45 = v8;
  v35 = MEMORY[0x1E69E5538] + 16;
  *&v38 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](&v38 + 8);
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v12 = MEMORY[0x1E69E5548] + 16;
  *&v38 = MEMORY[0x1E69E5548] + 16;
  __p[0] = 0;
  BYTE7(v43) = 0;
  *(&v43 + 1) = 0;
  LODWORD(v44) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v38);
  v34 = v12;
  v13 = *a2;
  if ((a2[1] | ((*a2 & 0x7F) << 8)) < 0x301u)
  {
    v19 = operator new(0x14uLL);
    v36 = 0;
    *v19 = *a3;
    *(v19 + 4) = *(a3 + 16);
    v17 = v19 + 20;
    v18 = v19;
  }

  else
  {
    v14 = operator new(0x14uLL);
    *v14 = *a3;
    v14[4] = *(a3 + 16);
    v15 = operator new(0x28uLL);
    v15[20] = v13;
    *v15 = *a3;
    *(v15 + 4) = *(a3 + 16);
    operator delete(v14);
    v15[21] = a2[1];
    v16 = operator new(0x20uLL);
    *v16 = 0u;
    v16[1] = 0u;
    CC_SHA256(v15, 0x16u, v16);
    v17 = (v16 + 2);
    v36 = v15;
    v18 = v16;
  }

  v20 = 0;
  v21 = v17 - v18;
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  do
  {
    v23 = v37;
    *(&v38 + *(v37 - 24)) = *(&v38 + *(v37 - 24)) & 0xFFFFFFB5 | 8;
    *(&v39 + *(v23 - 24)) = 2;
    v24 = &v37 + *(v23 - 24);
    if (*(v24 + 36) == -1)
    {
      std::ios_base::getloc((&v37 + *(v23 - 24)));
      v25 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
      (v25->__vftable[2].~facet_0)(v25, 32);
      std::locale::~locale(&v56);
    }

    *(v24 + 36) = 48;
    MEMORY[0x1E69270D0](&v37, v18[v20++]);
  }

  while (v22 != v20);
  v26 = this;
  if ((v44 & 0x10) != 0)
  {
    v30 = *(&v43 + 1);
    v27 = MEMORY[0x1E69E54E8];
    if (*(&v43 + 1) < v41)
    {
      *(&v43 + 1) = v41;
      v30 = v41;
    }

    v31 = *(&v40 + 1);
    v28 = v30 - *(&v40 + 1);
    if ((v30 - *(&v40 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E54E8];
    if ((v44 & 8) == 0)
    {
      v28 = 0;
      *(this + 23) = 0;
      v29 = v35;
      goto LABEL_24;
    }

    v31 = v39;
    v28 = v40 - v39;
    if (v40 - v39 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_30:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v32 = 25;
    }

    else
    {
      v32 = (v28 | 7) + 1;
    }

    v33 = operator new(v32);
    *(this + 1) = v28;
    *(this + 2) = v32 | 0x8000000000000000;
    *this = v33;
    v26 = v33;
    v29 = v35;
    goto LABEL_23;
  }

  *(this + 23) = v28;
  v29 = v35;
  if (v28)
  {
LABEL_23:
    memmove(v26, v31, v28);
  }

LABEL_24:
  *(v26 + v28) = 0;
  v37 = *v27;
  *(&v37 + *(v37 - 24)) = v27[3];
  *&v38 = v34;
  if (SBYTE7(v43) < 0)
  {
    operator delete(__p[0]);
  }

  *&v38 = v29;
  std::locale::~locale(&v38 + 1);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](&v45);
  operator delete(v18);
  if (v36)
  {
    operator delete(v36);
  }
}

void sub_1E52850E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a16);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](a12);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5EFFAE0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EFFAE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  result = v5(&v9, a3, a4, a5);
  v7 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    if (!atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E5390DD1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E5390DD1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5390DD1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390DD1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t *std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICC::detail::StateMachine::State,std::pair<eUICC::detail::StateMachine::State const,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(uint64_t *result, uint64_t *a2, int a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 == a2 || (v8 = *(a2 + 8), v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
LABEL_37:
      v22 = operator new(0x48uLL);
      v22[8] = *a4;
      v23 = *(a4 + 32);
      if (v23)
      {
        if (v23 == a4 + 8)
        {
          *(v22 + 8) = v22 + 10;
          (*(*v23 + 24))(v23);
          goto LABEL_47;
        }

        v23 = (*(*v23 + 16))(v23);
      }

      *(v22 + 8) = v23;
LABEL_47:
      *v22 = 0;
      *(v22 + 1) = 0;
      *(v22 + 2) = v5;
      *v13 = v22;
      v25 = **v6;
      if (v25)
      {
        *v6 = v25;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v22);
      ++v6[2];
      return result;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (*(v11 + 8) < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = result + 1;
    v5 = result + 1;
    if (!*v7)
    {
      goto LABEL_37;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = *(v18 + 8);
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_37;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = a2 + 1;
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_37;
    }

    if (*(v14 + 8) > a3)
    {
      goto LABEL_37;
    }

    v21 = *v7;
    v13 = result + 1;
    v5 = result + 1;
    if (!*v7)
    {
      goto LABEL_37;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v24 = *(v21 + 8);
        if (v24 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_37;
        }
      }

      if (v24 >= a3)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_37;
      }
    }
  }

  return result;
}

void sub_1E52858C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[8];
      if (v3 == v2 + 5)
      {
        (*(*v3 + 32))(v3);
      }

      else if (v3)
      {
        (*(*v3 + 40))(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICC::detail::StateMachine::State,std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICC::detail::StateMachine::State>,true>,std::allocator<std::__value_type<eUICC::detail::StateMachine::State,std::function<BBUReturn ()(std::shared_ptr<eUICC::Source>,eUICC::Options const&,eUICC::detail::StateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
      v3 = a1;
    }

    else
    {
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleController_BootROM::create(void *a1@<X8>)
{
  *a1 = 0;
  v3 = operator new(0x50uLL);
  *v3 = &unk_1F5EFFB90;
  v3[1] = 0;
  *(v3 + 1) = 0u;
  v4 = v3 + 2;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v6 = v3;
  if (atomic_load_explicit(v3 + 2, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(v4, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>);
  }

  if (v3[1])
  {
    *a1 = v3;
  }

  else
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    v5 = *(*v3 + 8);

    v5(v3);
  }
}

void sub_1E5285BA4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController_BootROM::init(DaleController_BootROM *this)
{
  v2 = (this + 16);
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>);
  }

  return *(this + 8);
}

uint64_t DaleController_BootROM::sendLoader(DaleController_BootROM *this, const DaleImage *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v81 = 0;
  ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage();
  if (a2)
  {
    Size = DaleImage::getSize(a2);
    if (Size)
    {
      v6 = DaleImage::getSize(a2);
      if (v6)
      {
        DaleImage::getData(a2, 0, v6, &v82);
        v8 = v82;
        v81 = v82;
        if (v82)
        {
          ACFULogging::getLogInstance(v7);
          v9 = ACFULogging::handleMessage();
          LOBYTE(v78) = 0;
          ACFULogging::getLogInstance(v9);
          ACFULogging::handleMessage();
          v10 = *(this + 3);
          LOBYTE(v82) = -64;
          v11 = support::transport::airship::write(*(v10 + 8), &v82, 1uLL);
          if ((v11 & 1) == 0)
          {
            ACFULogging::getLogInstance(v11);
LABEL_59:
            ACFULogging::handleMessage();
            goto LABEL_60;
          }

          v12 = support::transport::airship::read(*(*(this + 3) + 8), &v78, 1uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_58;
          }

          if (v78 != 192)
          {
            goto LABEL_49;
          }

          v80 = 0;
          v78 = 1179402836;
          LODWORD(v79) = 49152;
          HIDWORD(v79) = Size;
          if (Size > 0x6A000)
          {
            goto LABEL_49;
          }

          LODWORD(v80) = 512;
          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v12 = support::transport::airship::write(*(*(this + 3) + 8), &v78, 0x18uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_49;
          }

          v82 = 0u;
          v83 = 0u;
          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v12 = support::transport::airship::read(*(*(this + 3) + 8), &v82, 0x20uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_58;
          }

          v12 = checkStatusInfo(&v82, 49153, 0);
          if ((v12 & 1) == 0)
          {
            goto LABEL_58;
          }

          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v8);
          v76 = DataPtr[1];
          v77 = *DataPtr;
          v73 = DataPtr[3];
          v74 = DataPtr[2];
          v72 = DataPtr[4];
          v75 = DataPtr[5];
          v70 = DataPtr[9];
          v71 = DataPtr[8];
          v60 = DataPtr[10];
          v61 = DataPtr[6];
          v58 = DataPtr[12];
          v59 = DataPtr[11];
          v64 = DataPtr[13];
          v65 = DataPtr[7];
          v68 = DataPtr[15];
          v69 = DataPtr[14];
          v56 = DataPtr[17];
          v57 = DataPtr[16];
          v54 = DataPtr[19];
          v55 = DataPtr[18];
          v66 = DataPtr[23];
          v67 = DataPtr[22];
          v52 = DataPtr[24];
          v53 = DataPtr[20];
          v50 = DataPtr[26];
          v51 = DataPtr[25];
          v48 = DataPtr[28];
          v49 = DataPtr[27];
          v46 = DataPtr[30];
          v47 = DataPtr[29];
          v62 = DataPtr[31];
          v63 = DataPtr[21];
          ACFULogging::getLogInstance(DataPtr);
          v14 = veorq_s8(veorq_s8(veorq_s8(v62, veorq_s8(v47, veorq_s8(v49, veorq_s8(v51, v66)))), veorq_s8(veorq_s8(v63, veorq_s8(v54, veorq_s8(v56, v68))), veorq_s8(veorq_s8(v64, veorq_s8(v59, v70)), veorq_s8(veorq_s8(v65, v75), veorq_s8(v73, v76))))), veorq_s8(veorq_s8(v46, veorq_s8(v48, veorq_s8(v50, veorq_s8(v52, v67)))), veorq_s8(veorq_s8(v53, veorq_s8(v55, veorq_s8(v57, v69))), veorq_s8(veorq_s8(v58, veorq_s8(v60, v71)), veorq_s8(veorq_s8(v61, v72), veorq_s8(v74, v77))))));
          *v14.i8 = veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
          v15 = v14.i16[0] ^ v14.i16[2] ^ ((v14.i32[0] ^ v14.i32[1]) >> 16);
          ACFULogging::handleMessage();
          v16 = *(this + 3);
          v17 = ACFUDataContainer::DirectDataRef::getDataPtr(v8);
          v12 = support::transport::airship::write(*(v16 + 8), v17, 0x200uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_49;
          }

          v82 = 0u;
          v83 = 0u;
          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v12 = support::transport::airship::read(*(*(this + 3) + 8), &v82, 0x20uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_58;
          }

          v12 = checkStatusInfo(&v82, 49155, v15);
          if ((v12 & 1) == 0)
          {
            goto LABEL_58;
          }

          v78 = 0;
          v79 = 0;
          LODWORD(v80) = 0;
          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v78 = 1179402836;
          v18 = Size - 512;
          LODWORD(v79) = 49156;
          HIDWORD(v79) = v18;
          v12 = support::transport::airship::write(*(*(this + 3) + 8), &v78, 0x14uLL);
          if ((v12 & 1) == 0)
          {
            goto LABEL_49;
          }

          v82 = 0u;
          v83 = 0u;
          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v12 = support::transport::airship::read(*(*(this + 3) + 8), &v82, 0x20uLL);
          if ((v12 & 1) == 0 || (v12 = checkStatusInfo(&v82, 49157, 0), (v12 & 1) == 0))
          {
LABEL_58:
            ACFULogging::getLogInstance(v12);
            goto LABEL_59;
          }

          ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage();
          v19 = ACFUDataContainer::DirectDataRef::getDataPtr(v8);
          if (v18 < 2)
          {
            v20 = 0;
            v21 = 0;
            if ((v18 & 1) == 0)
            {
LABEL_39:
              ACFULogging::getLogInstance(v19);
              ACFULogging::handleMessage();
              v41 = *(this + 3);
              v42 = ACFUDataContainer::DirectDataRef::getDataPtr(v8);
              v12 = support::transport::airship::write(*(v41 + 8), (v42 + 512), v18);
              if (v12)
              {
                v82 = 0u;
                v83 = 0u;
                ACFULogging::getLogInstance(v12);
                ACFULogging::handleMessage();
                v12 = support::transport::airship::read(*(*(this + 3) + 8), &v82, 0x20uLL);
                if (v12)
                {
                  v12 = checkStatusInfo(&v82, 49159, v20);
                  if (v12)
                  {
                    ACFULogging::getLogInstance(v12);
                    ACFULogging::handleMessage();
                    v22 = 1;
LABEL_43:
                    v43 = MEMORY[0x1E69262B0](v8);
                    operator delete(v43);
                    goto LABEL_44;
                  }
                }

                goto LABEL_58;
              }

LABEL_49:
              ACFULogging::getLogInstance(v12);
              ACFULogging::handleMessage();
LABEL_60:
              v22 = 0;
              goto LABEL_43;
            }

LABEL_38:
            v20 ^= *(v19 + v21 + 512);
            goto LABEL_39;
          }

          v23 = v18 >> 1;
          if (v23 < 4)
          {
            v24 = 0;
            v20 = 0;
            goto LABEL_35;
          }

          if (v23 >= 0x10)
          {
            v25 = (v18 >> 1) & 0xF;
            v24 = v23 - v25;
            v26 = (v19 + 528);
            v27 = 0uLL;
            v28 = v23 - v25;
            v29 = 0uLL;
            do
            {
              v27 = veorq_s8(v26[-1], v27);
              v29 = veorq_s8(*v26, v29);
              v26 += 2;
              v28 -= 16;
            }

            while (v28);
            v30 = veorq_s8(v29, v27);
            *v30.i8 = veor_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
            v20 = v30.i16[0] ^ v30.i16[2] ^ ((v30.i32[0] ^ v30.i32[1]) >> 16);
            if (!v25)
            {
              goto LABEL_37;
            }

            if (v25 < 4)
            {
LABEL_35:
              v38 = v23 - v24;
              v39 = (v19 + 2 * v24 + 512);
              do
              {
                v40 = *v39++;
                v20 ^= v40;
                --v38;
              }

              while (v38);
              goto LABEL_37;
            }
          }

          else
          {
            v20 = 0;
            v24 = 0;
          }

          v31 = (v18 >> 1) & 3;
          v32 = (v19 + 2 * v24);
          v33 = v24 + v31;
          v24 = v23 - v31;
          v34 = v20;
          v35 = v32 + 64;
          v36 = v33 - v23;
          do
          {
            v37 = *v35++;
            v34 = veor_s8(v37, v34);
            v36 += 4;
          }

          while (v36);
          v20 = v34.i16[0] ^ v34.i16[2] ^ ((v34.i32[0] ^ v34.i32[1]) >> 16);
          if (v31)
          {
            goto LABEL_35;
          }

LABEL_37:
          v21 = v18 & 0xFFFFFFFE;
          if ((v18 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else
      {
        ACFULogging::getLogInstance(0);
        v7 = ACFULogging::handleMessage();
        v81 = 0;
      }

      ACFULogging::getLogInstance(v7);
    }

    else
    {
      ACFULogging::getLogInstance(0);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
  v22 = 0;
LABEL_44:
  v44 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t checkStatusInfo(ACFULogging *a1, int a2, int a3)
{
  ACFULogging::getLogInstance(a1);
  v27 = *(a1 + 3);
  v20 = *(a1 + 1);
  v24 = *(a1 + 2);
  v11 = *a1;
  v6 = ACFULogging::handleMessage();
  if (*a1 != 1179402836)
  {
    ACFULogging::getLogInstance(v6);
    v15 = *a1;
    goto LABEL_30;
  }

  if (*(a1 + 2) != a2)
  {
    ACFULogging::getLogInstance(v6);
    v23 = *(a1 + 2);
    goto LABEL_30;
  }

  v7 = *(a1 + 3);
  ACFULogging::getLogInstance(v6);
  if (v7)
  {
    v16 = *(a1 + 3);
    goto LABEL_30;
  }

  v12 = *(a1 + 8);
  ACFULogging::handleMessage();
  v8 = *(a1 + 2);
  result = 1;
  if (v8 <= 49664)
  {
    if (v8 <= 49156)
    {
      if (v8 == 49153)
      {
        return result;
      }

      if (v8 != 49155)
      {
LABEL_29:
        ACFULogging::getLogInstance(1);
        v14 = *(a1 + 2);
        goto LABEL_30;
      }

      if (*(a1 + 8) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v8 == 49157)
      {
        return result;
      }

      if (v8 != 49159)
      {
        if (v8 == 49409)
        {
          return result;
        }

        goto LABEL_29;
      }

      if (*(a1 + 8) == a3)
      {
        ACFULogging::getLogInstance(1);
        v25 = *(a1 + 11);
        v26 = *(a1 + 12);
        v13 = *(a1 + 9);
        v22 = *(a1 + 10);
        v10 = ACFULogging::handleMessage();
        if (*(a1 + 9))
        {
          ACFULogging::getLogInstance(v10);
          v17 = *(a1 + 9);
        }

        else if (*(a1 + 10))
        {
          ACFULogging::getLogInstance(v10);
          v18 = *(a1 + 10);
        }

        else
        {
          if (!*(a1 + 11) && !*(a1 + 12))
          {
            return 1;
          }

          ACFULogging::getLogInstance(v10);
          v19 = *(a1 + 11);
        }

        goto LABEL_30;
      }
    }

    ACFULogging::getLogInstance(1);
    v21 = *(a1 + 8);
LABEL_30:
    ACFULogging::handleMessage();
    return 0;
  }

  if (v8 > 49920)
  {
    if (v8 != 49921 && v8 != 50175 && v8 != 50177)
    {
      goto LABEL_29;
    }
  }

  else if (v8 != 49665 && v8 != 49668 && v8 != 49919)
  {
    goto LABEL_29;
  }

  return result;
}

void DaleController_BootROM::getBoardParameters(DaleController_BootROM *this@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x110uLL);
  v4->__shared_owners_ = 0;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_1F5EFFBC8;
  v5 = operator new(0x18uLL);
  *(&v42 + 1) = v5 + 3;
  *&v43 = v5 + 3;
  *v5 = xmmword_1E876DEB0;
  v5[2] = @"BbGoldCertId";
  *&v42 = v5;
  DaleCommon::DalePersonalizationParams::DalePersonalizationParams(&v4[1].__vftable, &v42);
  operator delete(v5);
  v39 = v4 + 1;
  v40 = v4;
  *bytes = 0;
  *v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v37.__r_.__value_.__s.__data_[0] = 0;
  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  v7 = *(this + 3);
  LOBYTE(__p[0]) = -62;
  v8 = support::transport::airship::write(*(v7 + 8), __p, 1uLL);
  if ((v8 & 1) == 0)
  {
    ACFULogging::getLogInstance(v8);
LABEL_59:
    ACFULogging::handleMessage();
    goto LABEL_62;
  }

  v9 = support::transport::airship::read(*(*(this + 3) + 8), &v37, 1uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v37.__r_.__value_.__s.__data_[0] != 194)
  {
    goto LABEL_50;
  }

  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  *__p = xmmword_1E5390F30;
  v9 = support::transport::airship::write(*(*(this + 3) + 8), __p, 0x10uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_50;
  }

  memset(__p, 0, sizeof(__p));
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v9 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  v9 = checkStatusInfo(__p, 49665, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  LODWORD(v37.__r_.__value_.__l.__data_) = 0;
  *(v37.__r_.__value_.__r.__words + 4) = 0;
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v9 = support::transport::airship::read(*(*(this + 3) + 8), &v37, 0xCuLL);
  if ((v9 & 1) == 0)
  {
LABEL_50:
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    goto LABEL_62;
  }

  ACFULogging::getLogInstance(v9);
  v10 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v10);
  v11 = operator new(0x30uLL);
  strcpy(v11, "DaleController_BootROM::getBoardParameters");
  __p[0] = v11;
  *&__p[1] = xmmword_1E5390F40;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12.i32[0] = v37.__r_.__value_.__l.__data_;
  v13 = vrev64_s16(*&vmovl_u8(v12));
  *bytes = vuzp1_s8(v13, v13).u32[0];
  v14 = *MEMORY[0x1E695E480];
  v15 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
  v4[1].__shared_owners_ = v15;
  LOBYTE(v4[1].__shared_weak_owners_) = v15 != 0;
  *v45 = *(v37.__r_.__value_.__r.__words + 4);
  v16 = CFDataCreate(v14, v45, 8);
  v4[2].__shared_weak_owners_ = v16;
  LOBYTE(v4[3].__vftable) = v16 != 0;
  memset(__p, 0, sizeof(__p));
  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  v9 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  v9 = checkStatusInfo(__p, 49919, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  v37.__r_.__value_.__s.__data_[0] = 0;
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v17 = *(this + 3);
  LOBYTE(__p[0]) = -62;
  v9 = support::transport::airship::write(*(v17 + 8), __p, 1uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  v9 = support::transport::airship::read(*(*(this + 3) + 8), &v37, 1uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v37.__r_.__value_.__s.__data_[0] != 194)
  {
    goto LABEL_50;
  }

  __p[0] = 0;
  __p[1] = 0;
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  *__p = xmmword_1E5390F50;
  v9 = support::transport::airship::write(*(*(this + 3) + 8), __p, 0x10uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_50;
  }

  memset(__p, 0, sizeof(__p));
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v9 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v9 & 1) == 0 || (v9 = checkStatusInfo(__p, 49668, 0), (v9 & 1) == 0))
  {
LABEL_58:
    ACFULogging::getLogInstance(v9);
    goto LABEL_59;
  }

  v9 = support::transport::airship::read(*(*(this + 3) + 8), &v42, 0x30uLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (*(this + 4) == v42 && *(this + 5) == *(&v42 + 1) && *(this + 6) == v43 && *(this + 7) == *(&v43 + 1) && *(this + 8) == v44 && *(this + 9) == *(&v44 + 1))
  {
    ACFULogging::getLogInstance(v44);
    v28 = ACFULogging::handleMessage();
    goto LABEL_40;
  }

  ACFULogging::getLogInstance(v44);
  v23 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v23);
  strcpy(&v36, "DaleController_BootROM");
  *(&v36.__r_.__value_.__s + 23) = 22;
  v24 = std::string::append(&v36, "::", 2uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v37, "getBoardParameters", 0x12uLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  __p[2] = v26->__r_.__value_.__r.__words[2];
  *__p = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_46:
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_47:
    operator delete(v36.__r_.__value_.__l.__data_);
    goto LABEL_38;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }

LABEL_38:
  LODWORD(__p[0]) = bswap32(v42);
  v28 = CFDataCreate(v14, __p, 4);
  v4[9].__shared_weak_owners_ = v28;
  LOBYTE(v4[10].__vftable) = v28 != 0;
LABEL_40:
  memset(__p, 0, sizeof(__p));
  ACFULogging::getLogInstance(v28);
  ACFULogging::handleMessage();
  v29 = support::transport::airship::read(*(*(this + 3) + 8), __p, 0x20uLL);
  if ((v29 & 1) == 0 || (v29 = checkStatusInfo(__p, 49919, 0), (v29 & 1) == 0))
  {
    ACFULogging::getLogInstance(v29);
    ACFULogging::handleMessage();
LABEL_62:
    v39 = 0;
    v40 = 0;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v31 = 3000;
    v32 = v39;
    v33 = v40;
    if (v40)
    {
      goto LABEL_43;
    }

LABEL_65:
    *a2 = v32;
    *(a2 + 8) = 0;
    *(a2 + 16) = v31;
    goto LABEL_66;
  }

  DaleCommon::DalePersonalizationParams::logParameters(&v4[1]);
  ACFULogging::getLogInstance(v30);
  ACFULogging::handleMessage();
  v31 = 0;
  v32 = v39;
  v33 = v40;
  if (!v40)
  {
    goto LABEL_65;
  }

LABEL_43:
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  *a2 = v32;
  *(a2 + 8) = v33;
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a2 + 16) = v31;
  if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_66:
  v34 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void DaleController_BootROM::~DaleController_BootROM(DaleController_BootROM *this)
{
  *this = &unk_1F5EFFB90;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      support::transport::airship::~airship(v2);
      operator delete(v3);
    }

    operator delete(v1);
  }
}

{
  *this = &unk_1F5EFFB90;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = this;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    this = v2;
  }

  operator delete(this);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_BootROM::init(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  DaleTransport_BootLoader::create(1, &__p);
  v3 = __p;
  __p = 0;
  v4 = *(v1 + 24);
  *(v1 + 24) = v3;
  if (v4)
  {
    v5 = v4[1];
    v4[1] = 0;
    if (v5)
    {
      support::transport::airship::~airship(v5);
      operator delete(v6);
    }

    operator delete(v4);
    v7 = __p;
    __p = 0;
    if (v7)
    {
      v8 = v7[1];
      v7[1] = 0;
      if (v8)
      {
        support::transport::airship::~airship(v8);
        operator delete(v9);
      }

      operator delete(v7);
    }

    v3 = *(v1 + 24);
  }

  if (!v3)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
  }

  *(v1 + 8) = v3 != 0;
}

void *std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E69262B0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_emplace<DaleCommon::DalePersonalizationParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EFFBC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t *BBUEUR25UpdateSource::getItems(BBUEUR25UpdateSource *this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v3 = *(this + 22);
  SequencerRamType = BBUEURUpdateSource::getSequencerRamType(this);
  if (v3)
  {
    v5 = BBUProgrammer::Item::createFromImage(SequencerRamType, v3);
    v6 = operator new(0x18uLL);
    v6[1] = v2;
    v6[2] = v5;
    v7 = *v2;
    *v6 = *v2;
    *(v7 + 8) = v6;
    *v2 = v6;
    ++v2[2];
  }

  v8 = *(this + 23);
  SignedFirmwareSOCViewType = BBUEURUpdateSource::getSignedFirmwareSOCViewType(this);
  if (v8)
  {
    v10 = BBUProgrammer::Item::createFromImage(SignedFirmwareSOCViewType, v8);
    v11 = operator new(0x18uLL);
    v11[1] = v2;
    v11[2] = v10;
    v12 = *v2;
    *v11 = *v2;
    *(v12 + 8) = v11;
    *v2 = v11;
    ++v2[2];
  }

  v13 = *(this + 25);
  XBLscType = BBUEURUpdateSource::getXBLscType(this);
  if (v13)
  {
    v15 = BBUProgrammer::Item::createFromImage(XBLscType, v13);
    v16 = operator new(0x18uLL);
    v16[1] = v2;
    v16[2] = v15;
    v17 = *v2;
    *v16 = *v2;
    *(v17 + 8) = v16;
    *v2 = v16;
    ++v2[2];
  }

  v18 = *(this + 34);
  APDPType = BBUEURUpdateSource::getAPDPType(this);
  if (v18)
  {
    v20 = BBUProgrammer::Item::createFromImage(APDPType, v18);
    v21 = operator new(0x18uLL);
    v21[1] = v2;
    v21[2] = v20;
    v22 = *v2;
    *v21 = *v2;
    *(v22 + 8) = v21;
    *v2 = v21;
    ++v2[2];
  }

  v23 = *(this + 35);
  DEVCFGType = BBUEURUpdateSource::getDEVCFGType(this);
  if (v23)
  {
    v25 = BBUProgrammer::Item::createFromImage(DEVCFGType, v23);
    v26 = operator new(0x18uLL);
    v26[1] = v2;
    v26[2] = v25;
    v27 = *v2;
    *v26 = *v2;
    *(v27 + 8) = v26;
    *v2 = v26;
    ++v2[2];
  }

  v28 = *(this + 50);
  SECType = BBUEURUpdateSource::getSECType(this);
  if (v28)
  {
    v30 = BBUProgrammer::Item::createFromImage(SECType, v28);
    v31 = operator new(0x18uLL);
    v31[1] = v2;
    v31[2] = v30;
    v32 = *v2;
    *v31 = *v2;
    *(v32 + 8) = v31;
    *v2 = v31;
    ++v2[2];
  }

  v33 = *(this + 36);
  HYPType = BBUEURUpdateSource::getHYPType(this);
  if (v33)
  {
    v35 = BBUProgrammer::Item::createFromImage(HYPType, v33);
    v36 = operator new(0x18uLL);
    v36[1] = v2;
    v36[2] = v35;
    v37 = *v2;
    *v36 = *v2;
    *(v37 + 8) = v36;
    *v2 = v36;
    ++v2[2];
  }

  v38 = *(this + 37);
  AOPType = BBUEURUpdateSource::getAOPType(this);
  if (v38)
  {
    v40 = BBUProgrammer::Item::createFromImage(AOPType, v38);
    v41 = operator new(0x18uLL);
    v41[1] = v2;
    v41[2] = v40;
    v42 = *v2;
    *v41 = *v2;
    *(v42 + 8) = v41;
    *v2 = v41;
    ++v2[2];
  }

  v43 = *(this + 26);
  APPSType = BBUEURUpdateSource::getAPPSType(this);
  if (v43)
  {
    v45 = BBUProgrammer::Item::createFromImage(APPSType, v43);
    v46 = operator new(0x18uLL);
    v46[1] = v2;
    v46[2] = v45;
    v47 = *v2;
    *v46 = *v2;
    *(v47 + 8) = v46;
    *v2 = v46;
    ++v2[2];
  }

  v48 = *(this + 27);
  QDSP6SWType = BBUEURUpdateSource::getQDSP6SWType(this);
  if (v48)
  {
    v50 = BBUProgrammer::Item::createFromImage(QDSP6SWType, v48);
    v51 = operator new(0x18uLL);
    v51[1] = v2;
    v51[2] = v50;
    v52 = *v2;
    *v51 = *v2;
    *(v52 + 8) = v51;
    *v2 = v51;
    ++v2[2];
  }

  v53 = *(this + 28);
  TZType = BBUEURUpdateSource::getTZType(this);
  if (v53)
  {
    v55 = BBUProgrammer::Item::createFromImage(TZType, v53);
    v56 = operator new(0x18uLL);
    v56[1] = v2;
    v56[2] = v55;
    v57 = *v2;
    *v56 = *v2;
    *(v57 + 8) = v56;
    *v2 = v56;
    ++v2[2];
  }

  v58 = **(this + 29);
  EFS1Type = BBUEURUpdateSource::getEFS1Type(this);
  if (v58)
  {
    v60 = BBUProgrammer::Item::createFromImage(EFS1Type, v58);
    v61 = operator new(0x18uLL);
    v61[1] = v2;
    v61[2] = v60;
    v62 = *v2;
    *v61 = *v2;
    *(v62 + 8) = v61;
    *v2 = v61;
    ++v2[2];
  }

  v63 = *(*(this + 29) + 8);
  EFS2Type = BBUEURUpdateSource::getEFS2Type(this);
  if (v63)
  {
    v65 = BBUProgrammer::Item::createFromImage(EFS2Type, v63);
    v66 = operator new(0x18uLL);
    v66[1] = v2;
    v66[2] = v65;
    v67 = *v2;
    *v66 = *v2;
    *(v67 + 8) = v66;
    *v2 = v66;
    ++v2[2];
  }

  v68 = *(*(this + 29) + 16);
  EFS3Type = BBUEURUpdateSource::getEFS3Type(this);
  if (v68)
  {
    v70 = BBUProgrammer::Item::createFromImage(EFS3Type, v68);
    v71 = operator new(0x18uLL);
    v71[1] = v2;
    v71[2] = v70;
    v72 = *v2;
    *v71 = *v2;
    *(v72 + 8) = v71;
    *v2 = v71;
    ++v2[2];
  }

  v73 = *(this + 32);
  ACDBType = BBUEURUpdateSource::getACDBType(this);
  if (v73)
  {
    v75 = BBUProgrammer::Item::createFromImage(ACDBType, v73);
    v76 = operator new(0x18uLL);
    v76[1] = v2;
    v76[2] = v75;
    v77 = *v2;
    *v76 = *v2;
    *(v77 + 8) = v76;
    *v2 = v76;
    ++v2[2];
  }

  v78 = *(this + 5);
  CalType = BBUEURUpdateSource::getCalType(this);
  if (v78)
  {
    v80 = BBUProgrammer::Item::createFromImage(CalType, v78);
    v81 = operator new(0x18uLL);
    v81[1] = v2;
    v81[2] = v80;
    v82 = *v2;
    *v81 = *v2;
    *(v82 + 8) = v81;
    *v2 = v81;
    ++v2[2];
  }

  v83 = *(this + 6);
  ProvType = BBUEURUpdateSource::getProvType(this);
  if (v83)
  {
    v85 = BBUProgrammer::Item::createFromImage(ProvType, v83);
    v86 = operator new(0x18uLL);
    v86[1] = v2;
    v86[2] = v85;
    v87 = *v2;
    *v86 = *v2;
    *(v87 + 8) = v86;
    *v2 = v86;
    ++v2[2];
  }

  v88 = *(this + 7);
  PacType = BBUEURUpdateSource::getPacType(this);
  if (v88)
  {
    v90 = BBUProgrammer::Item::createFromImage(PacType, v88);
    v91 = operator new(0x18uLL);
    v91[1] = v2;
    v91[2] = v90;
    v92 = *v2;
    *v91 = *v2;
    *(v92 + 8) = v91;
    *v2 = v91;
    ++v2[2];
  }

  v93 = *(this + 33);
  BBCFGType = BBUEURUpdateSource::getBBCFGType(this);
  if (v93)
  {
    v95 = BBUProgrammer::Item::createFromImage(BBCFGType, v93);
    v96 = operator new(0x18uLL);
    v96[1] = v2;
    v96[2] = v95;
    v97 = *v2;
    *v96 = *v2;
    *(v97 + 8) = v96;
    *v2 = v96;
    ++v2[2];
  }

  v98 = *(this + 38);
  MDMDDRType = BBUEURUpdateSource::getMDMDDRType(this);
  if (v98)
  {
    v100 = BBUProgrammer::Item::createFromImage(MDMDDRType, v98);
    v101 = operator new(0x18uLL);
    v101[1] = v2;
    v101[2] = v100;
    v102 = *v2;
    *v101 = *v2;
    *(v102 + 8) = v101;
    *v2 = v101;
    ++v2[2];
  }

  v103 = *(this + 39);
  OEMMiscType = BBUEURUpdateSource::getOEMMiscType(this);
  if (v103)
  {
    v105 = BBUProgrammer::Item::createFromImage(OEMMiscType, v103);
    v106 = operator new(0x18uLL);
    v106[1] = v2;
    v106[2] = v105;
    v107 = *v2;
    *v106 = *v2;
    *(v107 + 8) = v106;
    *v2 = v106;
    ++v2[2];
  }

  v108 = *(this + 40);
  QTIMiscType = BBUEURUpdateSource::getQTIMiscType(this);
  if (v108)
  {
    v110 = BBUProgrammer::Item::createFromImage(QTIMiscType, v108);
    v111 = operator new(0x18uLL);
    v111[1] = v2;
    v111[2] = v110;
    v112 = *v2;
    *v111 = *v2;
    *(v112 + 8) = v111;
    *v2 = v111;
    ++v2[2];
  }

  v113 = *(this + 41);
  XblCfgType = BBUEURUpdateSource::getXblCfgType(this);
  if (v113)
  {
    v115 = BBUProgrammer::Item::createFromImage(XblCfgType, v113);
    v116 = operator new(0x18uLL);
    v116[1] = v2;
    v116[2] = v115;
    v117 = *v2;
    *v116 = *v2;
    *(v117 + 8) = v116;
    *v2 = v116;
    ++v2[2];
  }

  v118 = *(this + 42);
  UEFIType = BBUEURUpdateSource::getUEFIType(this);
  if (v118)
  {
    v120 = BBUProgrammer::Item::createFromImage(UEFIType, v118);
    v121 = operator new(0x18uLL);
    v121[1] = v2;
    v121[2] = v120;
    v122 = *v2;
    *v121 = *v2;
    *(v122 + 8) = v121;
    *v2 = v121;
    ++v2[2];
  }

  v123 = *(this + 43);
  XblSupportType = BBUEURUpdateSource::getXblSupportType(this);
  if (v123)
  {
    v125 = BBUProgrammer::Item::createFromImage(XblSupportType, v123);
    v126 = operator new(0x18uLL);
    v126[1] = v2;
    v126[2] = v125;
    v127 = *v2;
    *v126 = *v2;
    *(v127 + 8) = v126;
    *v2 = v126;
    ++v2[2];
  }

  v128 = *(this + 44);
  ShrmType = BBUEURUpdateSource::getShrmType(this);
  if (v128)
  {
    v130 = BBUProgrammer::Item::createFromImage(ShrmType, v128);
    v131 = operator new(0x18uLL);
    v131[1] = v2;
    v131[2] = v130;
    v132 = *v2;
    *v131 = *v2;
    *(v132 + 8) = v131;
    *v2 = v131;
    ++v2[2];
  }

  v133 = *(this + 45);
  CpucpType = BBUEURUpdateSource::getCpucpType(this);
  if (v133)
  {
    v135 = BBUProgrammer::Item::createFromImage(CpucpType, v133);
    v136 = operator new(0x18uLL);
    v136[1] = v2;
    v136[2] = v135;
    v137 = *v2;
    *v136 = *v2;
    *(v137 + 8) = v136;
    *v2 = v136;
    ++v2[2];
  }

  v138 = *(this + 46);
  AOPDevCfgType = BBUEURUpdateSource::getAOPDevCfgType(this);
  if (v138)
  {
    v140 = BBUProgrammer::Item::createFromImage(AOPDevCfgType, v138);
    v141 = operator new(0x18uLL);
    v141[1] = v2;
    v141[2] = v140;
    v142 = *v2;
    *v141 = *v2;
    *(v142 + 8) = v141;
    *v2 = v141;
    ++v2[2];
  }

  v143 = *(this + 47);
  Qdsp6SwDtbsType = BBUEURUpdateSource::getQdsp6SwDtbsType(this);
  if (v143)
  {
    v145 = BBUProgrammer::Item::createFromImage(Qdsp6SwDtbsType, v143);
    v146 = operator new(0x18uLL);
    v146[1] = v2;
    v146[2] = v145;
    v147 = *v2;
    *v146 = *v2;
    *(v147 + 8) = v146;
    *v2 = v146;
    ++v2[2];
  }

  v148 = *(this + 48);
  Qupv3FwType = BBUEURUpdateSource::getQupv3FwType(this);
  if (v148)
  {
    v150 = BBUProgrammer::Item::createFromImage(Qupv3FwType, v148);
    v151 = operator new(0x18uLL);
    v151[1] = v2;
    v151[2] = v150;
    v152 = *v2;
    *v151 = *v2;
    *(v152 + 8) = v151;
    *v2 = v151;
    ++v2[2];
  }

  v153 = *(this + 49);
  PTType = BBUEURUpdateSource::getPTType(this);
  if (v153)
  {
    v155 = BBUProgrammer::Item::createFromImage(PTType, v153);
    v156 = operator new(0x18uLL);
    v156[1] = v2;
    v156[2] = v155;
    v157 = *v2;
    *v156 = *v2;
    *(v157 + 8) = v156;
    *v2 = v156;
    ++v2[2];
  }

  return v2;
}