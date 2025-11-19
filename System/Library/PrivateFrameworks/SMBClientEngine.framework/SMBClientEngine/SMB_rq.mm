@interface SMB_rq
- (timespec)sr_credit_timesent;
- (timespec)sr_timesent;
- (void)dealloc;
- (void)smb_rq_done;
@end

@implementation SMB_rq

- (void)dealloc
{
  mb_done(&self->sr_rp);
  md_done(&self->sr_rq);
  v3.receiver = self;
  v3.super_class = SMB_rq;
  [(SMB_rq *)&v3 dealloc];
}

- (void)smb_rq_done
{
  if ((self->_sr_extflags & 5) == 1 && (self->_sr_flags & 0x10) == 0)
  {
    self->_sr_rspcreditsgranted = self->_sr_creditcharge;
    smb2_rq_credit_increment(self);
  }

  mb_done(&self->sr_rp);
  md_done(&self->sr_rq);

  [(SMB_rq *)self setSr_callback:0];
}

- (timespec)sr_credit_timesent
{
  objc_copyStruct(v4, &self->_sr_credit_timesent, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

- (timespec)sr_timesent
{
  objc_copyStruct(v4, &self->_sr_timesent, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

@end