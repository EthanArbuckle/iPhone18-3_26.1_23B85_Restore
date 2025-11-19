@interface AWDNWAPIUsage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIfFltrAttachOs:(BOOL)a3;
- (void)setHasIfNetagentEnabled:(BOOL)a3;
- (void)setHasIfnetAlloc:(BOOL)a3;
- (void)setHasIfnetAllocOs:(BOOL)a3;
- (void)setHasIpFltrAdd:(BOOL)a3;
- (void)setHasIpFltrAddOs:(BOOL)a3;
- (void)setHasNexusFlowInet6Datagram:(BOOL)a3;
- (void)setHasNexusFlowInet6Stream:(BOOL)a3;
- (void)setHasNexusFlowInetDatagram:(BOOL)a3;
- (void)setHasNexusFlowInetStream:(BOOL)a3;
- (void)setHasPfAddrule:(BOOL)a3;
- (void)setHasPfAddruleOs:(BOOL)a3;
- (void)setHasSockAlloc:(BOOL)a3;
- (void)setHasSockAllocKernel:(BOOL)a3;
- (void)setHasSockAllocKernelOs:(BOOL)a3;
- (void)setHasSockDomainInet6:(BOOL)a3;
- (void)setHasSockDomainInet:(BOOL)a3;
- (void)setHasSockDomainKey:(BOOL)a3;
- (void)setHasSockDomainLocal:(BOOL)a3;
- (void)setHasSockDomainMultipath:(BOOL)a3;
- (void)setHasSockDomainNdrv:(BOOL)a3;
- (void)setHasSockDomainOther:(BOOL)a3;
- (void)setHasSockDomainRoute:(BOOL)a3;
- (void)setHasSockDomainSystem:(BOOL)a3;
- (void)setHasSockFltrRegister:(BOOL)a3;
- (void)setHasSockFltrRegisterOs:(BOOL)a3;
- (void)setHasSockInetMcastJoin:(BOOL)a3;
- (void)setHasSockInetMcastJoinOs:(BOOL)a3;
- (void)setHasSockNecpClientuuidCount:(BOOL)a3;
- (void)setHasSockNetInet6Dgram:(BOOL)a3;
- (void)setHasSockNetInet6DgramConnected:(BOOL)a3;
- (void)setHasSockNetInet6DgramDns:(BOOL)a3;
- (void)setHasSockNetInet6DgramNoData:(BOOL)a3;
- (void)setHasSockNetInet6Stream:(BOOL)a3;
- (void)setHasSockNetInetDgram:(BOOL)a3;
- (void)setHasSockNetInetDgramConnected:(BOOL)a3;
- (void)setHasSockNetInetDgramDns:(BOOL)a3;
- (void)setHasSockNetInetDgramNoData:(BOOL)a3;
- (void)setHasSockNetInetStream:(BOOL)a3;
- (void)setHasTimeSinceLastReport:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasVmnetStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNWAPIUsage

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasIfFltrAttachOs:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasIpFltrAdd:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIpFltrAddOs:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasSockFltrRegister:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasSockFltrRegisterOs:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasSockAlloc:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasSockAllocKernel:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasSockAllocKernelOs:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSockNecpClientuuidCount:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasSockDomainLocal:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSockDomainRoute:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSockDomainInet:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSockDomainInet6:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSockDomainSystem:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasSockDomainMultipath:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSockDomainKey:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSockDomainNdrv:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSockDomainOther:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSockNetInetStream:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgram:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramConnected:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramDns:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramNoData:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6Stream:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6Dgram:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramConnected:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramDns:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramNoData:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSockInetMcastJoin:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSockInetMcastJoinOs:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasNexusFlowInetStream:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasNexusFlowInetDatagram:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasNexusFlowInet6Stream:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasNexusFlowInet6Datagram:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasIfnetAlloc:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasIfnetAllocOs:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasPfAddrule:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasPfAddruleOs:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasVmnetStart:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasIfNetagentEnabled:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTimeSinceLastReport:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWAPIUsage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWAPIUsage description](&v3, sel_description), -[AWDNWAPIUsage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifFltrAttach), @"if_fltr_attach"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifFltrAttachOs), @"if_fltr_attach_os"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ipFltrAdd), @"ip_fltr_add"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ipFltrAddOs), @"ip_fltr_add_os"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockFltrRegister), @"sock_fltr_register"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockFltrRegisterOs), @"sock_fltr_register_os"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAlloc), @"sock_alloc"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAllocKernel), @"sock_alloc_kernel"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAllocKernelOs), @"sock_alloc_kernel_os"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNecpClientuuidCount), @"sock_necp_clientuuid_count"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainLocal), @"sock_domain_local"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainRoute), @"sock_domain_route"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainInet), @"sock_domain_inet"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainInet6), @"sock_domain_inet6"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainSystem), @"sock_domain_system"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainMultipath), @"sock_domain_multipath"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainKey), @"sock_domain_key"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainNdrv), @"sock_domain_ndrv"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainOther), @"sock_domain_other"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetStream), @"sock_net_inet_stream"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgram), @"sock_net_inet_dgram"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramConnected), @"sock_net_inet_dgram_connected"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramDns), @"sock_net_inet_dgram_dns"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramNoData), @"sock_net_inet_dgram_no_data"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6Stream), @"sock_net_inet6_stream"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6Dgram), @"sock_net_inet6_dgram"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramConnected), @"sock_net_inet6_dgram_connected"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramDns), @"sock_net_inet6_dgram_dns"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramNoData), @"sock_net_inet6_dgram_no_data"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockInetMcastJoin), @"sock_inet_mcast_join"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockInetMcastJoinOs), @"sock_inet_mcast_join_os"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_34:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInetStream), @"nexus_flow_inet_stream"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_35:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInetDatagram), @"nexus_flow_inet_datagram"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_36:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInet6Stream), @"nexus_flow_inet6_stream"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInet6Datagram), @"nexus_flow_inet6_datagram"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifnetAlloc), @"ifnet_alloc"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifnetAllocOs), @"ifnet_alloc_os"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_40:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_pfAddrule), @"pf_addrule"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_pfAddruleOs), @"pf_addrule_os"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_87:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_ifNetagentEnabled), @"if_netagent_enabled"}];
    if ((*&self->_has & 0x8000000000) == 0)
    {
      return v3;
    }

    goto LABEL_44;
  }

LABEL_86:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_vmnetStart), @"vmnet_start"}];
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_43:
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_44:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSinceLastReport), @"time_since_last_report"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  ifFltrAttach = self->_ifFltrAttach;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  ifFltrAttachOs = self->_ifFltrAttachOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  ipFltrAdd = self->_ipFltrAdd;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  ipFltrAddOs = self->_ipFltrAddOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  sockFltrRegister = self->_sockFltrRegister;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  sockFltrRegisterOs = self->_sockFltrRegisterOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  sockAlloc = self->_sockAlloc;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  sockAllocKernel = self->_sockAllocKernel;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  sockAllocKernelOs = self->_sockAllocKernelOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  sockNecpClientuuidCount = self->_sockNecpClientuuidCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  sockDomainLocal = self->_sockDomainLocal;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  sockDomainRoute = self->_sockDomainRoute;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  sockDomainInet = self->_sockDomainInet;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  sockDomainInet6 = self->_sockDomainInet6;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  sockDomainSystem = self->_sockDomainSystem;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  sockDomainMultipath = self->_sockDomainMultipath;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  sockDomainKey = self->_sockDomainKey;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  sockDomainNdrv = self->_sockDomainNdrv;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  sockDomainOther = self->_sockDomainOther;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  sockNetInetStream = self->_sockNetInetStream;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  sockNetInetDgram = self->_sockNetInetDgram;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  sockNetInetDgramConnected = self->_sockNetInetDgramConnected;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  sockNetInetDgramDns = self->_sockNetInetDgramDns;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  sockNetInetDgramNoData = self->_sockNetInetDgramNoData;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  sockNetInet6Stream = self->_sockNetInet6Stream;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  sockNetInet6Dgram = self->_sockNetInet6Dgram;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  sockNetInet6DgramConnected = self->_sockNetInet6DgramConnected;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  sockNetInet6DgramDns = self->_sockNetInet6DgramDns;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  sockNetInet6DgramNoData = self->_sockNetInet6DgramNoData;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  sockInetMcastJoin = self->_sockInetMcastJoin;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  sockInetMcastJoinOs = self->_sockInetMcastJoinOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_34:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  nexusFlowInetStream = self->_nexusFlowInetStream;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_35:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  nexusFlowInetDatagram = self->_nexusFlowInetDatagram;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_36:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  nexusFlowInet6Stream = self->_nexusFlowInet6Stream;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  nexusFlowInet6Datagram = self->_nexusFlowInet6Datagram;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  ifnetAlloc = self->_ifnetAlloc;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  ifnetAllocOs = self->_ifnetAllocOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_40:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  pfAddrule = self->_pfAddrule;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  pfAddruleOs = self->_pfAddruleOs;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_86:
    ifNetagentEnabled = self->_ifNetagentEnabled;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x8000000000) == 0)
    {
      return;
    }

    goto LABEL_87;
  }

LABEL_85:
  vmnetStart = self->_vmnetStart;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    goto LABEL_86;
  }

LABEL_43:
  if ((*&has & 0x8000000000) == 0)
  {
    return;
  }

LABEL_87:
  timeSinceLastReport = self->_timeSinceLastReport;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    *(a3 + 41) = self->_timestamp;
    *(a3 + 348) |= 0x10000000000uLL;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 1) = self->_ifFltrAttach;
  *(a3 + 348) |= 1uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 2) = self->_ifFltrAttachOs;
  *(a3 + 348) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 5) = self->_ipFltrAdd;
  *(a3 + 348) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 6) = self->_ipFltrAddOs;
  *(a3 + 348) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 25) = self->_sockFltrRegister;
  *(a3 + 348) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 26) = self->_sockFltrRegisterOs;
  *(a3 + 348) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 13) = self->_sockAlloc;
  *(a3 + 348) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 14) = self->_sockAllocKernel;
  *(a3 + 348) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 15) = self->_sockAllocKernelOs;
  *(a3 + 348) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 29) = self->_sockNecpClientuuidCount;
  *(a3 + 348) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 19) = self->_sockDomainLocal;
  *(a3 + 348) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 23) = self->_sockDomainRoute;
  *(a3 + 348) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 16) = self->_sockDomainInet;
  *(a3 + 348) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 17) = self->_sockDomainInet6;
  *(a3 + 348) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 24) = self->_sockDomainSystem;
  *(a3 + 348) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 20) = self->_sockDomainMultipath;
  *(a3 + 348) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 18) = self->_sockDomainKey;
  *(a3 + 348) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 21) = self->_sockDomainNdrv;
  *(a3 + 348) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 22) = self->_sockDomainOther;
  *(a3 + 348) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 39) = self->_sockNetInetStream;
  *(a3 + 348) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 35) = self->_sockNetInetDgram;
  *(a3 + 348) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 36) = self->_sockNetInetDgramConnected;
  *(a3 + 348) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 37) = self->_sockNetInetDgramDns;
  *(a3 + 348) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 38) = self->_sockNetInetDgramNoData;
  *(a3 + 348) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 34) = self->_sockNetInet6Stream;
  *(a3 + 348) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 30) = self->_sockNetInet6Dgram;
  *(a3 + 348) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 31) = self->_sockNetInet6DgramConnected;
  *(a3 + 348) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 32) = self->_sockNetInet6DgramDns;
  *(a3 + 348) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 33) = self->_sockNetInet6DgramNoData;
  *(a3 + 348) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 27) = self->_sockInetMcastJoin;
  *(a3 + 348) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 28) = self->_sockInetMcastJoinOs;
  *(a3 + 348) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_34:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 10) = self->_nexusFlowInetStream;
  *(a3 + 348) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_35:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 9) = self->_nexusFlowInetDatagram;
  *(a3 + 348) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_36:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 8) = self->_nexusFlowInet6Stream;
  *(a3 + 348) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 7) = self->_nexusFlowInet6Datagram;
  *(a3 + 348) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 3) = self->_ifnetAlloc;
  *(a3 + 348) |= 4uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 4) = self->_ifnetAllocOs;
  *(a3 + 348) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_40:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 11) = self->_pfAddrule;
  *(a3 + 348) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 12) = self->_pfAddruleOs;
  *(a3 + 348) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 42) = self->_vmnetStart;
  *(a3 + 348) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000) == 0)
    {
      return;
    }

LABEL_87:
    *(a3 + 40) = self->_timeSinceLastReport;
    *(a3 + 348) |= 0x8000000000uLL;
    return;
  }

LABEL_86:
  *(a3 + 344) = self->_ifNetagentEnabled;
  *(a3 + 348) |= 0x40000000000uLL;
  if ((*&self->_has & 0x8000000000) != 0)
  {
    goto LABEL_87;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    *(result + 41) = self->_timestamp;
    *(result + 348) |= 0x10000000000uLL;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_ifFltrAttach;
  *(result + 348) |= 1uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 2) = self->_ifFltrAttachOs;
  *(result + 348) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 5) = self->_ipFltrAdd;
  *(result + 348) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 6) = self->_ipFltrAddOs;
  *(result + 348) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 25) = self->_sockFltrRegister;
  *(result + 348) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 26) = self->_sockFltrRegisterOs;
  *(result + 348) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 13) = self->_sockAlloc;
  *(result + 348) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 14) = self->_sockAllocKernel;
  *(result + 348) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 15) = self->_sockAllocKernelOs;
  *(result + 348) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 29) = self->_sockNecpClientuuidCount;
  *(result + 348) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 19) = self->_sockDomainLocal;
  *(result + 348) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 23) = self->_sockDomainRoute;
  *(result + 348) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 16) = self->_sockDomainInet;
  *(result + 348) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 17) = self->_sockDomainInet6;
  *(result + 348) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 24) = self->_sockDomainSystem;
  *(result + 348) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 20) = self->_sockDomainMultipath;
  *(result + 348) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 18) = self->_sockDomainKey;
  *(result + 348) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 21) = self->_sockDomainNdrv;
  *(result + 348) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 22) = self->_sockDomainOther;
  *(result + 348) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 39) = self->_sockNetInetStream;
  *(result + 348) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 35) = self->_sockNetInetDgram;
  *(result + 348) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 36) = self->_sockNetInetDgramConnected;
  *(result + 348) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 37) = self->_sockNetInetDgramDns;
  *(result + 348) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 38) = self->_sockNetInetDgramNoData;
  *(result + 348) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 34) = self->_sockNetInet6Stream;
  *(result + 348) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 30) = self->_sockNetInet6Dgram;
  *(result + 348) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 31) = self->_sockNetInet6DgramConnected;
  *(result + 348) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 32) = self->_sockNetInet6DgramDns;
  *(result + 348) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(result + 33) = self->_sockNetInet6DgramNoData;
  *(result + 348) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(result + 27) = self->_sockInetMcastJoin;
  *(result + 348) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(result + 28) = self->_sockInetMcastJoinOs;
  *(result + 348) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_34:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(result + 10) = self->_nexusFlowInetStream;
  *(result + 348) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_35:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(result + 9) = self->_nexusFlowInetDatagram;
  *(result + 348) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_36:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(result + 8) = self->_nexusFlowInet6Stream;
  *(result + 348) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(result + 7) = self->_nexusFlowInet6Datagram;
  *(result + 348) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(result + 3) = self->_ifnetAlloc;
  *(result + 348) |= 4uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(result + 4) = self->_ifnetAllocOs;
  *(result + 348) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_40:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(result + 11) = self->_pfAddrule;
  *(result + 348) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(result + 12) = self->_pfAddruleOs;
  *(result + 348) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(result + 42) = self->_vmnetStart;
  *(result + 348) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

LABEL_87:
  *(result + 344) = self->_ifNetagentEnabled;
  *(result + 348) |= 0x40000000000uLL;
  if ((*&self->_has & 0x8000000000) == 0)
  {
    return result;
  }

LABEL_44:
  *(result + 40) = self->_timeSinceLastReport;
  *(result + 348) |= 0x8000000000uLL;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 348);
  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0 || self->_timestamp != *(a3 + 41))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_219;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_ifFltrAttach != *(a3 + 1))
    {
      goto LABEL_219;
    }
  }

  else if (v7)
  {
    goto LABEL_219;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_ifFltrAttachOs != *(a3 + 2))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_ipFltrAdd != *(a3 + 5))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_ipFltrAddOs != *(a3 + 6))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_sockFltrRegister != *(a3 + 25))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_sockFltrRegisterOs != *(a3 + 26))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_sockAlloc != *(a3 + 13))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_sockAllocKernel != *(a3 + 14))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_sockAllocKernelOs != *(a3 + 15))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_sockNecpClientuuidCount != *(a3 + 29))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_sockDomainLocal != *(a3 + 19))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_sockDomainRoute != *(a3 + 23))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_sockDomainInet != *(a3 + 16))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_sockDomainInet6 != *(a3 + 17))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_sockDomainSystem != *(a3 + 24))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_sockDomainMultipath != *(a3 + 20))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_sockDomainKey != *(a3 + 18))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_sockDomainNdrv != *(a3 + 21))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_sockDomainOther != *(a3 + 22))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0 || self->_sockNetInetStream != *(a3 + 39))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_sockNetInetDgram != *(a3 + 35))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_sockNetInetDgramConnected != *(a3 + 36))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_sockNetInetDgramDns != *(a3 + 37))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0 || self->_sockNetInetDgramNoData != *(a3 + 38))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_sockNetInet6Stream != *(a3 + 34))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_sockNetInet6Dgram != *(a3 + 30))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_sockNetInet6DgramConnected != *(a3 + 31))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_sockNetInet6DgramDns != *(a3 + 32))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_sockNetInet6DgramNoData != *(a3 + 33))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_sockInetMcastJoin != *(a3 + 27))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_sockInetMcastJoinOs != *(a3 + 28))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_nexusFlowInetStream != *(a3 + 10))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_nexusFlowInetDatagram != *(a3 + 9))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_nexusFlowInet6Stream != *(a3 + 8))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_nexusFlowInet6Datagram != *(a3 + 7))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_ifnetAlloc != *(a3 + 3))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_ifnetAllocOs != *(a3 + 4))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_pfAddrule != *(a3 + 11))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_pfAddruleOs != *(a3 + 12))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0 || self->_vmnetStart != *(a3 + 42))
    {
      goto LABEL_219;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_219;
  }

  if ((*&has & 0x40000000000) == 0)
  {
    if ((v7 & 0x40000000000) != 0)
    {
      goto LABEL_219;
    }

    goto LABEL_215;
  }

  if ((v7 & 0x40000000000) == 0)
  {
    goto LABEL_219;
  }

  v8 = *(a3 + 344);
  if (self->_ifNetagentEnabled)
  {
    if ((*(a3 + 344) & 1) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_215;
  }

  if (*(a3 + 344))
  {
LABEL_219:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_215:
  LOBYTE(v5) = (v7 & 0x8000000000) == 0;
  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_timeSinceLastReport != *(a3 + 40))
    {
      goto LABEL_219;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    v46 = 2654435761u * self->_timestamp;
    if (*&has)
    {
LABEL_3:
      v45 = 2654435761 * self->_ifFltrAttach;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v46 = 0;
    if (*&has)
    {
      goto LABEL_3;
    }
  }

  v45 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v44 = 2654435761 * self->_ifFltrAttachOs;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v44 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v43 = 2654435761 * self->_ipFltrAdd;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v43 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_6:
    v42 = 2654435761 * self->_ipFltrAddOs;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v42 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_7:
    v41 = 2654435761 * self->_sockFltrRegister;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v41 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_8:
    v40 = 2654435761 * self->_sockFltrRegisterOs;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v40 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_9:
    v39 = 2654435761 * self->_sockAlloc;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v39 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_10:
    v38 = 2654435761 * self->_sockAllocKernel;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v38 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_11:
    v37 = 2654435761 * self->_sockAllocKernelOs;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  v37 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_12:
    v36 = 2654435761 * self->_sockNecpClientuuidCount;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  v36 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_13:
    v35 = 2654435761 * self->_sockDomainLocal;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  v35 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_14:
    v34 = 2654435761 * self->_sockDomainRoute;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  v34 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_15:
    v33 = 2654435761 * self->_sockDomainInet;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  v33 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_16:
    v32 = 2654435761 * self->_sockDomainInet6;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_17:
    v31 = 2654435761 * self->_sockDomainSystem;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  v31 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_18:
    v30 = 2654435761 * self->_sockDomainMultipath;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_19:
    v3 = 2654435761 * self->_sockDomainKey;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  v3 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_20:
    v4 = 2654435761 * self->_sockDomainNdrv;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v4 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_21:
    v5 = 2654435761 * self->_sockDomainOther;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v5 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_22:
    v6 = 2654435761 * self->_sockNetInetStream;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v6 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_23:
    v7 = 2654435761 * self->_sockNetInetDgram;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v7 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_24:
    v8 = 2654435761 * self->_sockNetInetDgramConnected;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  v8 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_25:
    v9 = 2654435761 * self->_sockNetInetDgramDns;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  v9 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_26:
    v10 = 2654435761 * self->_sockNetInetDgramNoData;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  v10 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_27:
    v11 = 2654435761 * self->_sockNetInet6Stream;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  v11 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_28:
    v12 = 2654435761 * self->_sockNetInet6Dgram;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  v12 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_29:
    v13 = 2654435761 * self->_sockNetInet6DgramConnected;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  v13 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_30:
    v14 = 2654435761 * self->_sockNetInet6DgramDns;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  v14 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_31:
    v15 = 2654435761 * self->_sockNetInet6DgramNoData;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v15 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_32:
    v16 = 2654435761 * self->_sockInetMcastJoin;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v16 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_33:
    v17 = 2654435761 * self->_sockInetMcastJoinOs;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v17 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_34:
    v18 = 2654435761 * self->_nexusFlowInetStream;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v18 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_35:
    v19 = 2654435761 * self->_nexusFlowInetDatagram;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v19 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_36:
    v20 = 2654435761 * self->_nexusFlowInet6Stream;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v20 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_37:
    v21 = 2654435761 * self->_nexusFlowInet6Datagram;
    if ((*&has & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v21 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_38:
    v22 = 2654435761 * self->_ifnetAlloc;
    if ((*&has & 8) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v22 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_39:
    v23 = 2654435761 * self->_ifnetAllocOs;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v23 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_40:
    v24 = 2654435761 * self->_pfAddrule;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v24 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_41:
    v25 = 2654435761 * self->_pfAddruleOs;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v25 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_42:
    v26 = 2654435761 * self->_vmnetStart;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_43;
    }

LABEL_86:
    v27 = 0;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_87:
    v28 = 0;
    return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_85:
  v26 = 0;
  if ((*&has & 0x40000000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_43:
  v27 = 2654435761 * self->_ifNetagentEnabled;
  if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_87;
  }

LABEL_44:
  v28 = 2654435761u * self->_timeSinceLastReport;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 348);
  if ((v3 & 0x10000000000) != 0)
  {
    self->_timestamp = *(a3 + 41);
    *&self->_has |= 0x10000000000uLL;
    v3 = *(a3 + 348);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_ifFltrAttach = *(a3 + 1);
  *&self->_has |= 1uLL;
  v3 = *(a3 + 348);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_ifFltrAttachOs = *(a3 + 2);
  *&self->_has |= 2uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_ipFltrAdd = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_ipFltrAddOs = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_sockFltrRegister = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_sockFltrRegisterOs = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x1000) == 0)
  {
LABEL_9:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_sockAlloc = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x2000) == 0)
  {
LABEL_10:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_sockAllocKernel = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x4000) == 0)
  {
LABEL_11:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_sockAllocKernelOs = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_sockNecpClientuuidCount = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x40000) == 0)
  {
LABEL_13:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_sockDomainLocal = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x400000) == 0)
  {
LABEL_14:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_sockDomainRoute = *(a3 + 23);
  *&self->_has |= 0x400000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x8000) == 0)
  {
LABEL_15:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_sockDomainInet = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x10000) == 0)
  {
LABEL_16:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_sockDomainInet6 = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x800000) == 0)
  {
LABEL_17:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_sockDomainSystem = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x80000) == 0)
  {
LABEL_18:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_sockDomainMultipath = *(a3 + 20);
  *&self->_has |= 0x80000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x20000) == 0)
  {
LABEL_19:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_sockDomainKey = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x100000) == 0)
  {
LABEL_20:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_sockDomainNdrv = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x200000) == 0)
  {
LABEL_21:
    if ((v3 & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_sockDomainOther = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x4000000000) == 0)
  {
LABEL_22:
    if ((v3 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_sockNetInetStream = *(a3 + 39);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_23:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_sockNetInetDgram = *(a3 + 35);
  *&self->_has |= 0x400000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_24:
    if ((v3 & 0x1000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_sockNetInetDgramConnected = *(a3 + 36);
  *&self->_has |= 0x800000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x1000000000) == 0)
  {
LABEL_25:
    if ((v3 & 0x2000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_sockNetInetDgramDns = *(a3 + 37);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x2000000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_sockNetInetDgramNoData = *(a3 + 38);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_27:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_sockNetInet6Stream = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_sockNetInet6Dgram = *(a3 + 30);
  *&self->_has |= 0x20000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_sockNetInet6DgramConnected = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_sockNetInet6DgramDns = *(a3 + 32);
  *&self->_has |= 0x80000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x100000000) == 0)
  {
LABEL_31:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_sockNetInet6DgramNoData = *(a3 + 33);
  *&self->_has |= 0x100000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_sockInetMcastJoin = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_sockInetMcastJoinOs = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x200) == 0)
  {
LABEL_34:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_nexusFlowInetStream = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x100) == 0)
  {
LABEL_35:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_nexusFlowInetDatagram = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x80) == 0)
  {
LABEL_36:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_nexusFlowInet6Stream = *(a3 + 8);
  *&self->_has |= 0x80uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x40) == 0)
  {
LABEL_37:
    if ((v3 & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_nexusFlowInet6Datagram = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(a3 + 348);
  if ((v3 & 4) == 0)
  {
LABEL_38:
    if ((v3 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_ifnetAlloc = *(a3 + 3);
  *&self->_has |= 4uLL;
  v3 = *(a3 + 348);
  if ((v3 & 8) == 0)
  {
LABEL_39:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_ifnetAllocOs = *(a3 + 4);
  *&self->_has |= 8uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x400) == 0)
  {
LABEL_40:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_pfAddrule = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x800) == 0)
  {
LABEL_41:
    if ((v3 & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_pfAddruleOs = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x20000000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_vmnetStart = *(a3 + 42);
  *&self->_has |= 0x20000000000uLL;
  v3 = *(a3 + 348);
  if ((v3 & 0x40000000000) == 0)
  {
LABEL_43:
    if ((v3 & 0x8000000000) == 0)
    {
      return;
    }

LABEL_87:
    self->_timeSinceLastReport = *(a3 + 40);
    *&self->_has |= 0x8000000000uLL;
    return;
  }

LABEL_86:
  self->_ifNetagentEnabled = *(a3 + 344);
  *&self->_has |= 0x40000000000uLL;
  if ((*(a3 + 348) & 0x8000000000) != 0)
  {
    goto LABEL_87;
  }
}

@end