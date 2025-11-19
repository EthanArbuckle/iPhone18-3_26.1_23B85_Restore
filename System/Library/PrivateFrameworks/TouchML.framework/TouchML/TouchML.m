void sub_26F1959E8(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_prepareLayout);
  v3 = class_getInstanceMethod(a1, sel_tmlPrepareLayout);

  method_exchangeImplementations(InstanceMethod, v3);
}

uint64_t sub_26F195A40(void *a1, const char *a2, double a3)
{
  objc_msgSend_tmlPrepareLayout(a1, a2, a3);

  return objc_msgSend_emitTMLSignal_withArguments_(a1, v4, v5, @"prepareLayout", 0);
}

void sub_26F195B48(uint64_t a1)
{
  v2 = strlen("8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C=-I98/HeBz(hhp&ZF+BZ]I]x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btw^Q3mG.evpShPz!a02Bxrf#xI-bTvqPN$wPz&Vz/6DfwPRT8zBeeTv}#RR8w&!*Aa9=}zdN*2A=R<2wnbK}x(v($A^nMu3j*S+ze:r5BzkVhltQNIyz3!Wy&r*0a$vzEvpShPz!a02Bxrf#xI-bTvqPN$wPz&Mv@Dj6y?mZ5z/d)Tz!0Mzb76.yq+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6l$HgCxjk)[b2!)<Ab](cBZ]I]x>qGQz/fVqz!%l3AZTRLmRM:OB7=9=8zhvbC4>JilVl<:A=k=gwPwz6q+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6c&$>9mSiA!wmoN]z/b");
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v3, v4, "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C=-I98/HeBz(hhp&ZF+BZ]I]x>qGQz/fVqz!%l3AV#b62XmH.wOkB[wFbh=vRPE:Btw^Q3mG.evpShPz!a02Bxrf#xI-bTvqPN$wPz&Vz/6DfwPRT8zBeeTv}#RR8w&!*Aa9=}zdN*2A=R<2wnbK}x(v($A^nMu3j*S+ze:r5BzkVhltQNIyz3!Wy&r*0a$vzEvpShPz!a02Bxrf#xI-bTvqPN$wPz&Mv@Dj6y?mZ5z/d)Tz!0Mzb76.yq+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6l$HgCxjk)[b2!)<Ab](cBZ]I]x>qGQz/fVqz!%l3AZTRLmRM:OB7=9=8zhvbC4>JilVl<:A=k=gwPwz6q+H5hz/Pz=A=kGhv@$:=wP{HWzGG]qy&0W6c&$>9mSiA!wmoN]z/b", v2, 0);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_loadClasses_(TMLContext, v5, v6, v7);
}

void sub_26F195DBC(uint64_t a1)
{
  v2 = strlen(a83847776000000_7);
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v3, v4, a83847776000000_7, v2, 0);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_loadClasses_(TMLContext, v5, v6, v7);
}

id sub_26F196068(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D38138];
  v7 = MEMORY[0x277CCA980];
  v8 = a2;
  v11 = objc_msgSend_decimalNumberWithString_(v7, v9, v10, a3);
  v14 = objc_msgSend_summaryItemWithLabel_amount_type_(v6, v12, v13, v8, v11, a4);

  return v14;
}

id sub_26F196100(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D37F98];
  v3 = a2;
  v4 = [v2 alloc];
  v12 = 0;
  v7 = objc_msgSend_initWithData_error_(v4, v5, v6, v3, &v12);

  v8 = v12;
  v9 = v8;
  if (v8)
  {
    NSLog(&cfstr_WrongPassData.isa, v8);
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

uint64_t sub_26F1961A8()
{
  v0 = NSClassFromString(&cfstr_Pkpaymentautho.isa);

  return MEMORY[0x2821F9670](v0, sel_canMakePayments, v1);
}

uint64_t sub_26F1961D8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NSClassFromString(&cfstr_Pkpaymentautho.isa);
  PaymentsUsingNetworks = objc_msgSend_canMakePaymentsUsingNetworks_(v3, v4, v5, v2);

  return PaymentsUsingNetworks;
}

uint64_t sub_26F19621C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = NSClassFromString(&cfstr_Pkpaymentautho.isa);
  PaymentsUsingNetworks_capabilities = objc_msgSend_canMakePaymentsUsingNetworks_capabilities_(v5, v6, v7, v4, a3);

  return PaymentsUsingNetworks_capabilities;
}

uint64_t sub_26F196E34()
{
  qword_2806D9058 = objc_alloc_init(TMLAspectsRegistration);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26F1972A0(uint64_t a1, void *a2, double a3)
{
  v4 = objc_msgSend_object(a2, a2, a3);
  if (v4)
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, v5, v4);
  }

  return MEMORY[0x2821F96F8]();
}

void sub_26F197B34(uint64_t a1)
{
  v2 = strlen(a83847776000000_12);
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v3, v4, a83847776000000_12, v2, 0);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_loadClasses_(TMLContext, v5, v6, v7);
}

id sub_26F197CCC()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5A40]);

  return v0;
}

id sub_26F197CFC(double a1, uint64_t a2, const char *a3)
{
  if (a3)
  {
    v4 = objc_msgSend_eventWithEventStore_(MEMORY[0x277CC5A28], a3, a1, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_26F197D68(double a1, uint64_t a2, const char *a3)
{
  if (a3)
  {
    v4 = objc_msgSend_alarmWithAbsoluteDate_(MEMORY[0x277CC5988], a3, a1, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_26F1980E4(uint64_t a1)
{
  v8 = NSStringFromClass(*(a1 + 32));
  v1 = v8;
  v4 = objc_msgSend_UTF8String(v8, v2, v3);
  v5 = dispatch_get_global_queue(-2, 0);
  v6 = dispatch_queue_create_with_target_V2(v4, 0, v5);
  v7 = qword_2806D9070;
  qword_2806D9070 = v6;
}

void sub_26F198174(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_isObject(v6, v9, v10) && (objc_msgSend_isObject(v8, v11, v12) & 1) != 0)
  {
    v13 = objc_msgSend_toString(v6, v11, v12);
    v16 = objc_msgSend_convertJsValue_toType_(TMLJSEnvironment, v14, v15, v7, 16);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, "@");
    v22 = objc_msgSend_blockWithFunction_argumentsEncoding_(TMLBlock, v20, v21, v8, v19);

    v23 = qword_2806D9070;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26F19835C;
    block[3] = &unk_279DC5888;
    v38 = v13;
    v39 = v16;
    v40 = v22;
    v24 = v22;
    v25 = v16;
    v26 = v13;
    dispatch_async(v23, block);
  }

  else
  {
    v27 = MEMORY[0x277CD4658];
    v28 = objc_msgSend_currentContext(MEMORY[0x277CD4640], v11, v12);
    v31 = objc_msgSend_valueWithNewErrorFromMessage_inContext_(v27, v29, v30, @"Block is not a function", v28);
    v34 = objc_msgSend_currentContext(MEMORY[0x277CD4640], v32, v33);
    objc_msgSend_setException_(v34, v35, v36, v31);
  }
}

void sub_26F19835C(uint64_t a1, const char *a2, double a3)
{
  v4 = objc_msgSend_executeFunction_argument_(TMLBackgroundBlock, a2, a3, *(a1 + 32), *(a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26F198418;
  v7[3] = &unk_279DC5860;
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t sub_26F198470()
{
  qword_2806D9080 = objc_alloc_init(MEMORY[0x277CD4660]);

  return MEMORY[0x2821F96F8]();
}

void sub_26F198888(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = sub_26F198914(v9);
  if (v4)
  {
    v5 = v4;
    v6 = sub_26F198980(v9, v4, 1);
    objc_msgSend_addTarget_action_forControlEvents_(a1, v7, v8, v6, sel_controlAction_forEvent_, v5);
  }
}

uint64_t sub_26F198914(void *a1)
{
  v1 = qword_2806D90A8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_26F200BA0();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_2806D90A0, v2, v4, v3);

  v8 = objc_msgSend_unsignedIntegerValue(v5, v6, v7);
  return v8;
}

id sub_26F198980(void *a1, uint64_t a2, int a3)
{
  v6 = a1;
  if (qword_2806D9098 != -1)
  {
    sub_26F200BB4();
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(qword_2806D9090, v5, v7, v6);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3 == 0;
  }

  if (!v9)
  {
    v10 = [TMLUIControlActionTarget alloc];
    v8 = objc_msgSend_initWithSignal_controlEvent_(v10, v11, v12, v6, a2);
    objc_msgSend_setObject_forKeyedSubscript_(qword_2806D9090, v13, v14, v8, v6);
  }

  return v8;
}

void sub_26F198A3C(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = sub_26F198914(v9);
  v5 = v9;
  if (v4)
  {
    v7 = sub_26F198980(v9, v4, 0);
    if (v7)
    {
      objc_msgSend_removeTarget_action_forControlEvents_(a1, v6, v8, v7, sel_controlAction_forEvent_, v4);
    }

    v5 = v9;
  }
}

uint64_t sub_26F198C00()
{
  v0 = objc_alloc(MEMORY[0x277CBEB38]);
  qword_2806D9090 = objc_msgSend_initWithCapacity_(v0, v1, v2, 14);

  return MEMORY[0x2821F96F8]();
}

void sub_26F198C44()
{
  v0 = qword_2806D90A0;
  qword_2806D90A0 = &unk_287F57248;
}

void sub_26F198D20(uint64_t a1)
{
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v3, v4, "8384777600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003rWYNry]F}Abok#vruj4zC$j!A=+/lBv/$XzzBrY4@2J(zDyK]xHuYQBywW35d/-]3i$6VzGGq%Bp[)Epd5@qBywW3a}Vttv@Dl^x([2Qz/fV9v@%:s]92EqlRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li3$Bi[BywW3q/(}#wFbFupd5@qBywW3q/(}#wG&f56>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{j1h3VGJ{wO#PWA=l8t5^H^0m@&J<A3u894pK6{wPzV%By!iQzdKs:B98CpzF7de3i$6VzGGq%Bp[)Epd5@qBywW37Y+/)3i$AVB8$=5wFbh*BAh8kxcF5$4pK6?z*cm>wncd1zF6N+vScg3a@7B]vqG:#Cxl5WBzkVhA$OQ+z/oCo5^![PwO+{<vru5[25^%=wN/*aapn%bxM53fwk^eWCt8Z*yH}3zz/fV9v@#=81y=p/y:6]c4@+@$wO#PSz/fV9x(mH55^}64lVl<:vqfQ<AXYSZ8dWr1v@=p5Bz(g?z/O-!ADL#owN[CBD2<Jda@R$xwPIv4x(FfjAZ<$/qE%&<x(W=}oj-x&gf+edC4>JilVl<:A=k=gwPymUA-E0)zF%-plVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy6aUd.IwP{HWzGG]qy&0W6mSirEzFKcdCwY=^zGGq%Buhf&3k^C<xj#9}xj#x-A=k]dA==Odx([2YwQa*/8vW2QyH}=726j)bx(mM46BCgYwmYU2x>z6<AUnN$BAh8kxcFQmx>I9}x>Ia3p&ZF[wPz)rs7#+&oj-xfx>g^)Bzku3wPx*!p6}?Yx>qGQz/fVqz!%l3AZ<$/lVl<:vpKx<5e(k&2v?W&BywW35^Z{2lVl<:vpKy68y]#BwP{HWzGG]qy&0W6mSirmz/fV9v@%:!r0<N/x>qGQz/fVqz!%l3AZ<$/pgXSpz/fV9v@@m[8wAI-v@DmbvpKx(2$4DPz/fV9v@@[nd%tSrCscp^BAhqoy?mSRz/OP:Cscp^BywW3iTUuS3lqGelVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS15lhq5x>qGQz/fVqz!%l3AV#Li6>z31Abn%dwN[RTz/xodBA{I<D2<P4vrcx%C{i>d2XmH.wOkB[wFbh=vRPE:BrSsAa8(miwnbKZBy^{WA-lK=wN/*@z/eu.p&ZF[wPz)r5^}Dkp&ZbTx>7N[wG&Yk9=MdhwnbKZBy^{WA-lK=wN/*@z/eu.lVl<:vpKx(3R<R%A+e=}v{%E<a$r{sAb]J2x>7N[wKZPUmq=Kyy?W^1lVl<:vpKx(3R<R%A+e=}v{%E<bc.pU7EH}+z/fV9v@$KYv@2T@l$HgCxjk)[b1h?Ov@DmbvpKyQx>7{&AZTRLlT:>xwO.[U8yC<@Aa@/$wPwz7lRZ0!zGGq%BwMWYyH}J!x>qGQz/fVqz!%l3AWQ#kQx7YFv@DmbvpKyQx>7{&AZTRLq!o=Rv@$7RzGGq%BwN0@AaK6iC[o#{cKH5%x>7{&AUoxWpd5@qBywW3p?:APwPy*=wP{HWzGG]qy&0W68ybU2v@DmbvpKy#A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5Tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@$K/z/xodBA][}0Wri%3lAX}zGGq%BwMWYyH}JOx>gdNy?m9#lVl<:vpKz25ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS95EF!Nz/fV9v@#=81Z#B(vr<4tv@DmbvpKyQx>7{&AYN-Bwk^5QwN/*Hz/fV9v@#=Mc&$PB0sx&Sz/fV9v@$KYv@2T@l${ggwO+{/Bvf$:BywW35ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS96BC7Pz/fV9v@@s&lRZ0!zGGq%BrR/pz/fV9v@$KYv@2T@i+h@nq!o=Rv@$7RzGGq%Bug/KbaO-wcU47jBywW3p?:APwPygMwk^5QwN/*Hz/fV9v@$K/z/xodBzkrc5ciW%3i>D-v@2T@5/<tmlVl<:vpKyQx>7{&A-M)=Cscp^BAhqoy?mS98vv6^z/fV9v@#Wgz/xodBzkrc5^qY:A::kqdpWplBywW3p?:APwPx?xx>gdNy?m9#lVl<:vpKyQA=k]dA==2bB2>YJbaX(za45^<z/fV9v@$:=wP{HWzGG]qy&0W6l$HgCxjk)[bgV=4l1s?JBywW3r+Vb?lVl<:A=k=gwPyZ.z/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA[A08yV16C4>Jiv@DmbA=k=gwPwz1lRZ0!zGGq%Bxi9!Cscp^BAhqoy?mS99sr6>A=k]dA==Nt5KPqXz/fV9v@$K/z/xodBA]5$v@DmbvpKyWx>qGQz/fVqz!%l3AYOnPz/](bp?sVVz/PX.wObv[y&?%MBzkVhmSirmz/fV9v@$K/z/xodBA][}0Wsrs3m/R8zGGq%Bxi9!Cscp^BAhqoy?mSPx>fOHze:r5By!J/Bza3WzGGq%BpXD>dgcMdx>qGQz/fVqz!%l3AUofQpd5@qBywW3r+Vb?lVl<:A=k=gwPwX63i$6VzGGq%Bp[)Epd5@qBywW3a$WqyzGGq%Bxi9!Cscp^BAhqoy?mSFwnbNwz/6DfwPRG+x([2Qz/fV9v@%:W0XaEyz/fV9v@#=w3pX@RzE^f$x(v>", v2, 0);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_loadClasses_(TMLContext, v5, v6, v7);
}

uint64_t sub_26F1A2E70(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  Class = object_getClass(v4);
  if (objc_msgSend_tmlIsKindOfClass_(v4, v6, v7, a1))
  {
    goto LABEL_2;
  }

  objc_msgSend_superclass(a1, v8, v9);
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = v4, objc_msgSend_observationInfo(v11, v12, v13)))
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromClass(a1);
  v17 = NSStringFromClass(Class);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, v19, @"%@_%@", v16, v17);
  v21 = v20;
  v24 = objc_msgSend_UTF8String(v21, v22, v23);

  v25 = objc_lookUpClass(v24);
  if (v25)
  {
    ClassPair = v25;
    if (object_getClass(v4) == v25)
    {
      goto LABEL_2;
    }
  }

  else
  {
    ClassPair = objc_allocateClassPair(Class, v24, 0);
    outCount = 0;
    v27 = class_copyProtocolList(a1, &outCount);
    if (outCount)
    {
        ;
      }
    }

    free(v27);
    v52 = 0;
    v29 = class_copyMethodList(a1, &v52);
    if (v52)
    {
      for (j = 0; j < v52; ++j)
      {
        v31 = v29[j];
        Name = method_getName(v31);
        Implementation = method_getImplementation(v31);
        TypeEncoding = method_getTypeEncoding(v31);
        class_addMethod(ClassPair, Name, Implementation, TypeEncoding);
      }
    }

    free(v29);
    InstanceMethod = class_getInstanceMethod(Class, sel_class);
    v36 = imp_implementationWithBlock(&unk_287F2BBB0);
    v37 = method_getName(InstanceMethod);
    v38 = method_getTypeEncoding(InstanceMethod);
    class_addMethod(ClassPair, v37, v36, v38);
    if (!class_getInstanceMethod(Class, sel_tmlSuperClass))
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_26F1A326C;
      v51[3] = &unk_279DC6038;
      v51[4] = Class;
      v39 = MEMORY[0x27438BB60](v51);
      v40 = imp_implementationWithBlock(v39);

      v41 = method_getTypeEncoding(InstanceMethod);
      class_addMethod(ClassPair, sel_tmlSuperClass, v40, v41);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_26F1A3274;
    v50[3] = &unk_279DC6058;
    v50[4] = a1;
    v42 = MEMORY[0x27438BB60](v50);
    v43 = imp_implementationWithBlock(v42);

    v44 = class_getInstanceMethod(Class, sel_isKindOfClass_);
    v45 = method_getTypeEncoding(v44);
    class_addMethod(ClassPair, sel_tmlIsKindOfClass_, v43, v45);
    v46 = class_getInstanceMethod(Class, sel_respondsToSelector_);
    v47 = method_getName(v46);
    v48 = method_getTypeEncoding(v46);
    class_addMethod(ClassPair, v47, sub_26F1A3284, v48);
    objc_registerClassPair(ClassPair);
    InstanceSize = class_getInstanceSize(Class);
    if (InstanceSize != class_getInstanceSize(ClassPair))
    {
      goto LABEL_5;
    }
  }

  object_setClass(v4, ClassPair);
LABEL_2:
  v10 = 1;
LABEL_6:

  return v10;
}

Class sub_26F1A3240(int a1, id a2)
{
  Class = object_getClass(a2);

  return class_getSuperclass(Class);
}

BOOL sub_26F1A3284(void *a1, const char *a2, const char *a3)
{
  v5 = a1;
  Superclass = objc_msgSend_tmlSuperClass(v5, v6, v7);
  v13.receiver = v5;
  if (!Superclass)
  {
    Class = object_getClass(v5);
    Superclass = class_getSuperclass(Class);
  }

  v13.super_class = Superclass;
  if (objc_msgSendSuper(&v13, a2, a3))
  {
    v10 = 1;
  }

  else
  {
    v11 = object_getClass(v5);
    v10 = class_getInstanceMethod(v11, a3) != 0;
  }

  return v10;
}

uint64_t sub_26F1A3318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_class();

  return objc_msgSend_isSubclassOfClass_(v4, v5, v6, a3);
}

void sub_26F1A36C8(void *a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = sub_26F1A3744(v8);
  if (v4)
  {
    v5 = sub_26F1A37B0(v8, v4, 1);
    objc_msgSend_addTarget_action_(a1, v6, v7, v5, sel_handleGesture_);
  }
}

uint64_t sub_26F1A3744(void *a1)
{
  v1 = qword_2806D90F8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_26F200BDC();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_2806D90F0, v2, v4, v3);

  v8 = objc_msgSend_integerValue(v5, v6, v7);
  return v8;
}

id sub_26F1A37B0(void *a1, uint64_t a2, int a3)
{
  v6 = a1;
  if (qword_2806D90E8 != -1)
  {
    sub_26F200BF0();
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(qword_2806D90E0, v5, v7, v6);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3 == 0;
  }

  if (!v9)
  {
    v10 = [TMLUIGestureRecognizerActionTarget alloc];
    v8 = objc_msgSend_initWithSignal_state_(v10, v11, v12, v6, a2);
    objc_msgSend_setObject_forKeyedSubscript_(qword_2806D90E0, v13, v14, v8, v6);
  }

  return v8;
}

void sub_26F1A386C(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = sub_26F1A3744(v9);
  v5 = v9;
  if (v4)
  {
    v7 = sub_26F1A37B0(v9, v4, 0);
    if (v7)
    {
      objc_msgSend_removeTarget_action_(a1, v6, v8, v7, sel_handleGesture_);
    }

    v5 = v9;
  }
}

double sub_26F1A38EC(void *a1, const char *a2, double a3)
{
  v4 = objc_msgSend_view(a1, a2, a3);
  objc_msgSend_locationInView_(a1, v5, v6, v4);
  v8 = v7;

  return v8;
}

uint64_t sub_26F1A3A30()
{
  v0 = objc_alloc(MEMORY[0x277CBEB38]);
  qword_2806D90E0 = objc_msgSend_initWithCapacity_(v0, v1, v2, 14);

  return MEMORY[0x2821F96F8]();
}

void sub_26F1A3A74()
{
  v0 = qword_2806D90F0;
  qword_2806D90F0 = &unk_287F57270;
}

void sub_26F1A3AD0()
{
  if (!qword_2806D9100)
  {
    qword_2806D9100 = objc_alloc_init(TMLCertificateManager);

    MEMORY[0x2821F96F8]();
  }
}

void sub_26F1A41C8(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_setValue_forUndefinedKey_);
  v3 = class_getInstanceMethod(a1, sel_tmlSetValue_forUndefinedKey_);

  method_exchangeImplementations(InstanceMethod, v3);
}

uint64_t sub_26F1A4220(void *a1, uint64_t a2, const char *a3, void *a4)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v27.receiver = a1;
  v27.super_class = &off_287F793E0;
  v7 = objc_msgSendSuper2(&v27, sel_canPerformAction_withSender_, a3, v6);
  v10 = objc_msgSend_delegate(a1, v8, v9);
  v28[0] = a1;
  v12 = NSStringFromSelector(a3);
  v28[1] = v12;
  v14 = v6;
  if (!v6)
  {
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v13);
  }

  v28[2] = v14;
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, v13, v7);
  v28[3] = v15;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v17, v28, 4);
  v26 = 0;
  v21 = objc_msgSend_emitTMLSignal_withArguments_returnValue_(v10, v19, v20, @"textFieldCanPerformActionWithSenderDefaultValue", v18, &v26);
  v22 = v26;

  if (!v6)
  {
  }

  if (v21)
  {
    v7 = objc_msgSend_BOOLValue(v22, v23, v24);
  }

  return v7;
}

void sub_26F1A43A8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v41 = a3;
  v6 = a4;
  if (objc_msgSend_isEqualToString_(v6, v7, v8, @"enablesReturnKeyAutomatically"))
  {
    v11 = objc_msgSend_BOOLValue(v41, v9, v10);
    objc_msgSend_setEnablesReturnKeyAutomatically_(a1, v12, v13, v11);
  }

  else if (objc_msgSend_isEqualToString_(v6, v9, v10, @"returnKeyType"))
  {
    v16 = objc_msgSend_integerValue(v41, v14, v15);
    objc_msgSend_setReturnKeyType_(a1, v17, v18, v16);
  }

  else if (objc_msgSend_isEqualToString_(v6, v14, v15, @"keyboardType"))
  {
    v21 = objc_msgSend_integerValue(v41, v19, v20);
    objc_msgSend_setKeyboardType_(a1, v22, v23, v21);
  }

  else if (objc_msgSend_isEqualToString_(v6, v19, v20, @"autocorrectionType"))
  {
    v26 = objc_msgSend_integerValue(v41, v24, v25);
    objc_msgSend_setAutocorrectionType_(a1, v27, v28, v26);
  }

  else if (objc_msgSend_isEqualToString_(v6, v24, v25, @"autocapitalizationType"))
  {
    v31 = objc_msgSend_integerValue(v41, v29, v30);
    objc_msgSend_setAutocapitalizationType_(a1, v32, v33, v31);
  }

  else if (objc_msgSend_isEqualToString_(v6, v29, v30, @"spellCheckingType"))
  {
    v36 = objc_msgSend_integerValue(v41, v34, v35);
    objc_msgSend_setSpellCheckingType_(a1, v37, v38, v36);
  }

  else if (objc_msgSend_isEqualToString_(v6, v34, v35, @"textContentType"))
  {
    objc_msgSend_setTextContentType_(a1, v39, v40, v41);
  }

  else
  {
    objc_msgSend_tmlSetValue_forUndefinedKey_(a1, v39, v40, v41, v6);
  }
}