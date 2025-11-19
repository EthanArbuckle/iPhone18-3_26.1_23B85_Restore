@interface SETransceiveHelper
- (BOOL)crsSetSharingResult:(id)a3 signature:(id)a4 error:(id *)a5;
- (BOOL)setAuthRandom:(id)a3 mac:(id)a4 error:(id *)a5;
- (SETransceiveHelper)initWithSEController:(shared_ptr<SEUpdater::P73BaseSEController>)a3;
- (id).cxx_construct;
- (id)copyA9Parameters:(id *)a3;
- (id)copyCasdCert:(id *)a3;
- (id)copySESignature:(id)a3 hsmChallengeSE:(id)a4 ecid:(id)a5 outError:(id *)a6;
- (id)copySeid:(id *)a3;
- (id)selectWithAID:(id)a3;
- (id)transceiveAndRecordCapdu:(void *)a3 rapdu:(void *)a4;
- (int64_t)copyDeviceType:(id *)a3;
- (shared_ptr<SEUpdater::P73BaseSEController>)fSeController;
- (void)dealloc;
- (void)invalidate;
- (void)recordApdu:(Apdu *)a3 toRecord:(id)a4;
- (void)setFSeController:(shared_ptr<SEUpdater::P73BaseSEController>)a3;
@end

@implementation SETransceiveHelper

- (SETransceiveHelper)initWithSEController:(shared_ptr<SEUpdater::P73BaseSEController>)a3
{
  ptr = a3.__ptr_;
  v14.receiver = self;
  v14.super_class = SETransceiveHelper;
  v4 = [(SETransceiveHelper *)&v14 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_fSeController.__cntrl_;
    v5->_fSeController.__ptr_ = v7;
    v5->_fSeController.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v9 = [MEMORY[0x29EDB8DE8] array];
    capduRecord = v5->_capduRecord;
    v5->_capduRecord = v9;

    v11 = [MEMORY[0x29EDB8DE8] array];
    rapduRecord = v5->_rapduRecord;
    v5->_rapduRecord = v11;
  }

  return v5;
}

- (void)dealloc
{
  _ObjCLog(2, "[SETransceiveHelper dealloc]", &cfstr_ReleasingTrans.isa);
  v3.receiver = self;
  v3.super_class = SETransceiveHelper;
  [(SETransceiveHelper *)&v3 dealloc];
}

- (void)invalidate
{
  _ObjCLog(2, "[SETransceiveHelper invalidate]", &cfstr_InvalidatingTr.isa);
  cntrl = self->_fSeController.__cntrl_;
  self->_fSeController.__ptr_ = 0;
  self->_fSeController.__cntrl_ = 0;
  if (cntrl)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id)selectWithAID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x29EDB8DA0] dataWithHexString:v3];
  [APDUUtil getCXXApduWithCla:0 ins:164 p1:4 p2:0 payload:v4];

  SERestoreInfo::Apdu::Apdu(&v6);
}

- (id)copySeid:(id *)a3
{
  v3 = [MEMORY[0x29EDB8DA0] dataWithHexString:@"DF21"];
  [APDUUtil getCXXApduWithCla:128 ins:202 p1:0 p2:254 payload:v3];

  SERestoreInfo::Apdu::Apdu(&v5);
}

- (id)copyCasdCert:(id *)a3
{
  v4 = [(SETransceiveHelper *)self selectWithAID:@"A00000015153504341534400"];
  if (!v4)
  {
    SERestoreInfo::CApdu::CApdu(&v11);
  }

  v8 = v4;
  _ObjCLogWrapOutError(a3, v4, 0, "[SETransceiveHelper copyCasdCert:]", @"While selecting CASD\n", v5, v6, v7, v10);

  return 0;
}

- (int64_t)copyDeviceType:(id *)a3
{
  v3 = [MEMORY[0x29EDB8DA0] dataWithHexString:@"DF31"];
  [APDUUtil getCXXApduWithCla:128 ins:202 p1:0 p2:254 payload:v3];

  SERestoreInfo::Apdu::Apdu(&v5);
}

- (id)copyA9Parameters:(id *)a3
{
  v11[12] = *MEMORY[0x29EDCA608];
  v4 = [(SETransceiveHelper *)self selectWithAID:@"A0000001515350414141504C"];
  v8 = v4;
  if (!v4)
  {
    [APDUUtil getCXXApduWithCla:128 ins:202 p1:127 p2:33 payload:0];
    SERestoreInfo::Apdu::Apdu(v11);
  }

  _ObjCLogWrapOutError(a3, v4, 0, "[SETransceiveHelper copyA9Parameters:]", @"Error encountered when selecting Star SD %@\n", v5, v6, v7, v4);

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

- (id)copySESignature:(id)a3 hsmChallengeSE:(id)a4 ecid:(id)a5 outError:(id *)a6
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16 = [(SETransceiveHelper *)self selectWithAID:@"A00000015153504341534400"];
  if (v16)
  {
    _ObjCLogWrapOutError(a6, v16, 0, "[SETransceiveHelper copySESignature:hsmChallengeSE:ecid:outError:]", @"Failed to select CASD\n", v13, v14, v15, v27);
  }

  else
  {
    v17 = objc_opt_new();
    [v17 appendData:v10];
    [v17 appendData:v11];
    v29 = 0;
    [v12 getValue:&v29];
    [v17 appendU64LE:v29];
    memset(v30, 0, sizeof(v30));
    v18 = v17;
    [v17 bytes];
    [v17 length];
    v19 = AMSupportDigestSha256();
    if (!v19)
    {
      v24 = [MEMORY[0x29EDB8DA0] dataWithBytes:v30 length:32];
      [APDUUtil getCXXApduWithCla:0 ins:136 p1:240 p2:3 payload:v24];

      SERestoreInfo::Apdu::Apdu(&v28);
    }

    _ObjCLogOutError(a6, 0, "[SETransceiveHelper copySESignature:hsmChallengeSE:ecid:outError:]", @"Unable to get AM Digest with error code %d\n", v20, v21, v22, v23, v19);
    v16 = 0;
  }

  v25 = *MEMORY[0x29EDCA608];
  return 0;
}

- (BOOL)crsSetSharingResult:(id)a3 signature:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [v7 appendData:v6];
  [APDUUtil getCXXApduWithCla:128 ins:230 p1:0 p2:0 payload:v7];
  SERestoreInfo::Apdu::Apdu(&v9);
}

- (id)transceiveAndRecordCapdu:(void *)a3 rapdu:(void *)a4
{
  v8 = *(a3 + 1);
  v7 = *(a3 + 2);
  v12[0] = &unk_2A2026DD8;
  v12[1] = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(SETransceiveHelper *)self recordApdu:v12 toRecord:self->_capduRecord];
  v12[0] = &unk_2A2026DD8;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v9 = [MEMORY[0x29EDB8DA0] dataWithBytes:**(a3 + 1) length:*(*(a3 + 1) + 8) - **(a3 + 1)];
  v10 = [v9 asHexString];
  _ObjCLog(3, "[SETransceiveHelper transceiveAndRecordCapdu:rapdu:]", &cfstr_Se.isa, v10);

  SEUpdater::P73BaseSEController::transceive(self->_fSeController.__ptr_, a3, a4, 0, 3);
}

- (void)recordApdu:(Apdu *)a3 toRecord:(id)a4
{
  v7 = a4;
  var0 = a3->var1.var0;
  if (var0)
  {
    [MEMORY[0x29EDB8DA0] dataWithBytes:*var0 length:var0[1] - *var0];
  }

  else
  {
    [@"No APDU" dataUsingEncoding:4];
  }
  v6 = ;
  [v7 addObject:v6];
}

- (BOOL)setAuthRandom:(id)a3 mac:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  SERestoreInfo::Apdu::Apdu(&v9);
}

- (shared_ptr<SEUpdater::P73BaseSEController>)fSeController
{
  cntrl = self->_fSeController.__cntrl_;
  *v2 = self->_fSeController.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setFSeController:(shared_ptr<SEUpdater::P73BaseSEController>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_fSeController.__cntrl_;
  self->_fSeController.__ptr_ = v4;
  self->_fSeController.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end