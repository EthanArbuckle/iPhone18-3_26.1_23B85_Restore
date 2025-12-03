@interface AWDNWAPIUsage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIfFltrAttachOs:(BOOL)os;
- (void)setHasIfNetagentEnabled:(BOOL)enabled;
- (void)setHasIfnetAlloc:(BOOL)alloc;
- (void)setHasIfnetAllocOs:(BOOL)os;
- (void)setHasIpFltrAdd:(BOOL)add;
- (void)setHasIpFltrAddOs:(BOOL)os;
- (void)setHasNexusFlowInet6Datagram:(BOOL)datagram;
- (void)setHasNexusFlowInet6Stream:(BOOL)stream;
- (void)setHasNexusFlowInetDatagram:(BOOL)datagram;
- (void)setHasNexusFlowInetStream:(BOOL)stream;
- (void)setHasPfAddrule:(BOOL)addrule;
- (void)setHasPfAddruleOs:(BOOL)os;
- (void)setHasSockAlloc:(BOOL)alloc;
- (void)setHasSockAllocKernel:(BOOL)kernel;
- (void)setHasSockAllocKernelOs:(BOOL)os;
- (void)setHasSockDomainInet6:(BOOL)inet6;
- (void)setHasSockDomainInet:(BOOL)inet;
- (void)setHasSockDomainKey:(BOOL)key;
- (void)setHasSockDomainLocal:(BOOL)local;
- (void)setHasSockDomainMultipath:(BOOL)multipath;
- (void)setHasSockDomainNdrv:(BOOL)ndrv;
- (void)setHasSockDomainOther:(BOOL)other;
- (void)setHasSockDomainRoute:(BOOL)route;
- (void)setHasSockDomainSystem:(BOOL)system;
- (void)setHasSockFltrRegister:(BOOL)register;
- (void)setHasSockFltrRegisterOs:(BOOL)os;
- (void)setHasSockInetMcastJoin:(BOOL)join;
- (void)setHasSockInetMcastJoinOs:(BOOL)os;
- (void)setHasSockNecpClientuuidCount:(BOOL)count;
- (void)setHasSockNetInet6Dgram:(BOOL)dgram;
- (void)setHasSockNetInet6DgramConnected:(BOOL)connected;
- (void)setHasSockNetInet6DgramDns:(BOOL)dns;
- (void)setHasSockNetInet6DgramNoData:(BOOL)data;
- (void)setHasSockNetInet6Stream:(BOOL)stream;
- (void)setHasSockNetInetDgram:(BOOL)dgram;
- (void)setHasSockNetInetDgramConnected:(BOOL)connected;
- (void)setHasSockNetInetDgramDns:(BOOL)dns;
- (void)setHasSockNetInetDgramNoData:(BOOL)data;
- (void)setHasSockNetInetStream:(BOOL)stream;
- (void)setHasTimeSinceLastReport:(BOOL)report;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasVmnetStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation AWDNWAPIUsage

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 0x10000000000;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasIfFltrAttachOs:(BOOL)os
{
  v3 = 2;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasIpFltrAdd:(BOOL)add
{
  v3 = 16;
  if (!add)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIpFltrAddOs:(BOOL)os
{
  v3 = 32;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasSockFltrRegister:(BOOL)register
{
  v3 = 0x1000000;
  if (!register)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasSockFltrRegisterOs:(BOOL)os
{
  v3 = 0x2000000;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasSockAlloc:(BOOL)alloc
{
  v3 = 4096;
  if (!alloc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasSockAllocKernel:(BOOL)kernel
{
  v3 = 0x2000;
  if (!kernel)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasSockAllocKernelOs:(BOOL)os
{
  v3 = 0x4000;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSockNecpClientuuidCount:(BOOL)count
{
  v3 = 0x10000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasSockDomainLocal:(BOOL)local
{
  v3 = 0x40000;
  if (!local)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSockDomainRoute:(BOOL)route
{
  v3 = 0x400000;
  if (!route)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSockDomainInet:(BOOL)inet
{
  v3 = 0x8000;
  if (!inet)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSockDomainInet6:(BOOL)inet6
{
  v3 = 0x10000;
  if (!inet6)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSockDomainSystem:(BOOL)system
{
  v3 = 0x800000;
  if (!system)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasSockDomainMultipath:(BOOL)multipath
{
  v3 = 0x80000;
  if (!multipath)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSockDomainKey:(BOOL)key
{
  v3 = 0x20000;
  if (!key)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSockDomainNdrv:(BOOL)ndrv
{
  v3 = 0x100000;
  if (!ndrv)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSockDomainOther:(BOOL)other
{
  v3 = 0x200000;
  if (!other)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSockNetInetStream:(BOOL)stream
{
  v3 = 0x4000000000;
  if (!stream)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgram:(BOOL)dgram
{
  v3 = 0x400000000;
  if (!dgram)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramConnected:(BOOL)connected
{
  v3 = 0x800000000;
  if (!connected)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramDns:(BOOL)dns
{
  v3 = 0x1000000000;
  if (!dns)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInetDgramNoData:(BOOL)data
{
  v3 = 0x2000000000;
  if (!data)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6Stream:(BOOL)stream
{
  v3 = 0x200000000;
  if (!stream)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6Dgram:(BOOL)dgram
{
  v3 = 0x20000000;
  if (!dgram)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramConnected:(BOOL)connected
{
  v3 = 0x40000000;
  if (!connected)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramDns:(BOOL)dns
{
  v3 = 0x80000000;
  if (!dns)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasSockNetInet6DgramNoData:(BOOL)data
{
  v3 = 0x100000000;
  if (!data)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSockInetMcastJoin:(BOOL)join
{
  v3 = 0x4000000;
  if (!join)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSockInetMcastJoinOs:(BOOL)os
{
  v3 = 0x8000000;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasNexusFlowInetStream:(BOOL)stream
{
  v3 = 512;
  if (!stream)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasNexusFlowInetDatagram:(BOOL)datagram
{
  v3 = 256;
  if (!datagram)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasNexusFlowInet6Stream:(BOOL)stream
{
  v3 = 128;
  if (!stream)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasNexusFlowInet6Datagram:(BOOL)datagram
{
  v3 = 64;
  if (!datagram)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasIfnetAlloc:(BOOL)alloc
{
  v3 = 4;
  if (!alloc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasIfnetAllocOs:(BOOL)os
{
  v3 = 8;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasPfAddrule:(BOOL)addrule
{
  v3 = 1024;
  if (!addrule)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasPfAddruleOs:(BOOL)os
{
  v3 = 2048;
  if (!os)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasVmnetStart:(BOOL)start
{
  v3 = 0x20000000000;
  if (!start)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasIfNetagentEnabled:(BOOL)enabled
{
  v3 = 0x40000000000;
  if (!enabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTimeSinceLastReport:(BOOL)report
{
  v3 = 0x8000000000;
  if (!report)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifFltrAttach), @"if_fltr_attach"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifFltrAttachOs), @"if_fltr_attach_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ipFltrAdd), @"ip_fltr_add"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ipFltrAddOs), @"ip_fltr_add_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockFltrRegister), @"sock_fltr_register"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockFltrRegisterOs), @"sock_fltr_register_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAlloc), @"sock_alloc"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAllocKernel), @"sock_alloc_kernel"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockAllocKernelOs), @"sock_alloc_kernel_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNecpClientuuidCount), @"sock_necp_clientuuid_count"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainLocal), @"sock_domain_local"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainRoute), @"sock_domain_route"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainInet), @"sock_domain_inet"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainInet6), @"sock_domain_inet6"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainSystem), @"sock_domain_system"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainMultipath), @"sock_domain_multipath"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainKey), @"sock_domain_key"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainNdrv), @"sock_domain_ndrv"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockDomainOther), @"sock_domain_other"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetStream), @"sock_net_inet_stream"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgram), @"sock_net_inet_dgram"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramConnected), @"sock_net_inet_dgram_connected"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramDns), @"sock_net_inet_dgram_dns"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInetDgramNoData), @"sock_net_inet_dgram_no_data"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6Stream), @"sock_net_inet6_stream"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6Dgram), @"sock_net_inet6_dgram"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramConnected), @"sock_net_inet6_dgram_connected"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramDns), @"sock_net_inet6_dgram_dns"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockNetInet6DgramNoData), @"sock_net_inet6_dgram_no_data"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockInetMcastJoin), @"sock_inet_mcast_join"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_sockInetMcastJoinOs), @"sock_inet_mcast_join_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInetStream), @"nexus_flow_inet_stream"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInetDatagram), @"nexus_flow_inet_datagram"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInet6Stream), @"nexus_flow_inet6_stream"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_nexusFlowInet6Datagram), @"nexus_flow_inet6_datagram"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifnetAlloc), @"ifnet_alloc"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_ifnetAllocOs), @"ifnet_alloc_os"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_pfAddrule), @"pf_addrule"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_pfAddruleOs), @"pf_addrule_os"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_87:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_ifNetagentEnabled), @"if_netagent_enabled"}];
    if ((*&self->_has & 0x8000000000) == 0)
    {
      return dictionary;
    }

    goto LABEL_44;
  }

LABEL_86:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_vmnetStart), @"vmnet_start"}];
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_43:
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_44:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSinceLastReport), @"time_since_last_report"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x10000000000) != 0)
  {
    *(to + 41) = self->_timestamp;
    *(to + 348) |= 0x10000000000uLL;
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

  *(to + 1) = self->_ifFltrAttach;
  *(to + 348) |= 1uLL;
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
  *(to + 2) = self->_ifFltrAttachOs;
  *(to + 348) |= 2uLL;
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
  *(to + 5) = self->_ipFltrAdd;
  *(to + 348) |= 0x10uLL;
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
  *(to + 6) = self->_ipFltrAddOs;
  *(to + 348) |= 0x20uLL;
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
  *(to + 25) = self->_sockFltrRegister;
  *(to + 348) |= 0x1000000uLL;
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
  *(to + 26) = self->_sockFltrRegisterOs;
  *(to + 348) |= 0x2000000uLL;
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
  *(to + 13) = self->_sockAlloc;
  *(to + 348) |= 0x1000uLL;
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
  *(to + 14) = self->_sockAllocKernel;
  *(to + 348) |= 0x2000uLL;
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
  *(to + 15) = self->_sockAllocKernelOs;
  *(to + 348) |= 0x4000uLL;
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
  *(to + 29) = self->_sockNecpClientuuidCount;
  *(to + 348) |= 0x10000000uLL;
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
  *(to + 19) = self->_sockDomainLocal;
  *(to + 348) |= 0x40000uLL;
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
  *(to + 23) = self->_sockDomainRoute;
  *(to + 348) |= 0x400000uLL;
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
  *(to + 16) = self->_sockDomainInet;
  *(to + 348) |= 0x8000uLL;
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
  *(to + 17) = self->_sockDomainInet6;
  *(to + 348) |= 0x10000uLL;
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
  *(to + 24) = self->_sockDomainSystem;
  *(to + 348) |= 0x800000uLL;
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
  *(to + 20) = self->_sockDomainMultipath;
  *(to + 348) |= 0x80000uLL;
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
  *(to + 18) = self->_sockDomainKey;
  *(to + 348) |= 0x20000uLL;
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
  *(to + 21) = self->_sockDomainNdrv;
  *(to + 348) |= 0x100000uLL;
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
  *(to + 22) = self->_sockDomainOther;
  *(to + 348) |= 0x200000uLL;
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
  *(to + 39) = self->_sockNetInetStream;
  *(to + 348) |= 0x4000000000uLL;
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
  *(to + 35) = self->_sockNetInetDgram;
  *(to + 348) |= 0x400000000uLL;
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
  *(to + 36) = self->_sockNetInetDgramConnected;
  *(to + 348) |= 0x800000000uLL;
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
  *(to + 37) = self->_sockNetInetDgramDns;
  *(to + 348) |= 0x1000000000uLL;
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
  *(to + 38) = self->_sockNetInetDgramNoData;
  *(to + 348) |= 0x2000000000uLL;
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
  *(to + 34) = self->_sockNetInet6Stream;
  *(to + 348) |= 0x200000000uLL;
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
  *(to + 30) = self->_sockNetInet6Dgram;
  *(to + 348) |= 0x20000000uLL;
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
  *(to + 31) = self->_sockNetInet6DgramConnected;
  *(to + 348) |= 0x40000000uLL;
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
  *(to + 32) = self->_sockNetInet6DgramDns;
  *(to + 348) |= 0x80000000uLL;
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
  *(to + 33) = self->_sockNetInet6DgramNoData;
  *(to + 348) |= 0x100000000uLL;
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
  *(to + 27) = self->_sockInetMcastJoin;
  *(to + 348) |= 0x4000000uLL;
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
  *(to + 28) = self->_sockInetMcastJoinOs;
  *(to + 348) |= 0x8000000uLL;
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
  *(to + 10) = self->_nexusFlowInetStream;
  *(to + 348) |= 0x200uLL;
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
  *(to + 9) = self->_nexusFlowInetDatagram;
  *(to + 348) |= 0x100uLL;
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
  *(to + 8) = self->_nexusFlowInet6Stream;
  *(to + 348) |= 0x80uLL;
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
  *(to + 7) = self->_nexusFlowInet6Datagram;
  *(to + 348) |= 0x40uLL;
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
  *(to + 3) = self->_ifnetAlloc;
  *(to + 348) |= 4uLL;
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
  *(to + 4) = self->_ifnetAllocOs;
  *(to + 348) |= 8uLL;
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
  *(to + 11) = self->_pfAddrule;
  *(to + 348) |= 0x400uLL;
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
  *(to + 12) = self->_pfAddruleOs;
  *(to + 348) |= 0x800uLL;
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
  *(to + 42) = self->_vmnetStart;
  *(to + 348) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000) == 0)
    {
      return;
    }

LABEL_87:
    *(to + 40) = self->_timeSinceLastReport;
    *(to + 348) |= 0x8000000000uLL;
    return;
  }

LABEL_86:
  *(to + 344) = self->_ifNetagentEnabled;
  *(to + 348) |= 0x40000000000uLL;
  if ((*&self->_has & 0x8000000000) != 0)
  {
    goto LABEL_87;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 348);
  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0 || self->_timestamp != *(equal + 41))
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
    if ((v7 & 1) == 0 || self->_ifFltrAttach != *(equal + 1))
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
    if ((v7 & 2) == 0 || self->_ifFltrAttachOs != *(equal + 2))
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
    if ((v7 & 0x10) == 0 || self->_ipFltrAdd != *(equal + 5))
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
    if ((v7 & 0x20) == 0 || self->_ipFltrAddOs != *(equal + 6))
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
    if ((v7 & 0x1000000) == 0 || self->_sockFltrRegister != *(equal + 25))
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
    if ((v7 & 0x2000000) == 0 || self->_sockFltrRegisterOs != *(equal + 26))
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
    if ((v7 & 0x1000) == 0 || self->_sockAlloc != *(equal + 13))
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
    if ((v7 & 0x2000) == 0 || self->_sockAllocKernel != *(equal + 14))
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
    if ((v7 & 0x4000) == 0 || self->_sockAllocKernelOs != *(equal + 15))
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
    if ((v7 & 0x10000000) == 0 || self->_sockNecpClientuuidCount != *(equal + 29))
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
    if ((v7 & 0x40000) == 0 || self->_sockDomainLocal != *(equal + 19))
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
    if ((v7 & 0x400000) == 0 || self->_sockDomainRoute != *(equal + 23))
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
    if ((v7 & 0x8000) == 0 || self->_sockDomainInet != *(equal + 16))
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
    if ((v7 & 0x10000) == 0 || self->_sockDomainInet6 != *(equal + 17))
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
    if ((v7 & 0x800000) == 0 || self->_sockDomainSystem != *(equal + 24))
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
    if ((v7 & 0x80000) == 0 || self->_sockDomainMultipath != *(equal + 20))
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
    if ((v7 & 0x20000) == 0 || self->_sockDomainKey != *(equal + 18))
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
    if ((v7 & 0x100000) == 0 || self->_sockDomainNdrv != *(equal + 21))
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
    if ((v7 & 0x200000) == 0 || self->_sockDomainOther != *(equal + 22))
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
    if ((v7 & 0x4000000000) == 0 || self->_sockNetInetStream != *(equal + 39))
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
    if ((v7 & 0x400000000) == 0 || self->_sockNetInetDgram != *(equal + 35))
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
    if ((v7 & 0x800000000) == 0 || self->_sockNetInetDgramConnected != *(equal + 36))
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
    if ((v7 & 0x1000000000) == 0 || self->_sockNetInetDgramDns != *(equal + 37))
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
    if ((v7 & 0x2000000000) == 0 || self->_sockNetInetDgramNoData != *(equal + 38))
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
    if ((v7 & 0x200000000) == 0 || self->_sockNetInet6Stream != *(equal + 34))
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
    if ((v7 & 0x20000000) == 0 || self->_sockNetInet6Dgram != *(equal + 30))
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
    if ((v7 & 0x40000000) == 0 || self->_sockNetInet6DgramConnected != *(equal + 31))
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
    if ((v7 & 0x80000000) == 0 || self->_sockNetInet6DgramDns != *(equal + 32))
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
    if ((v7 & 0x100000000) == 0 || self->_sockNetInet6DgramNoData != *(equal + 33))
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
    if ((v7 & 0x4000000) == 0 || self->_sockInetMcastJoin != *(equal + 27))
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
    if ((v7 & 0x8000000) == 0 || self->_sockInetMcastJoinOs != *(equal + 28))
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
    if ((v7 & 0x200) == 0 || self->_nexusFlowInetStream != *(equal + 10))
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
    if ((v7 & 0x100) == 0 || self->_nexusFlowInetDatagram != *(equal + 9))
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
    if ((v7 & 0x80) == 0 || self->_nexusFlowInet6Stream != *(equal + 8))
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
    if ((v7 & 0x40) == 0 || self->_nexusFlowInet6Datagram != *(equal + 7))
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
    if ((v7 & 4) == 0 || self->_ifnetAlloc != *(equal + 3))
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
    if ((v7 & 8) == 0 || self->_ifnetAllocOs != *(equal + 4))
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
    if ((v7 & 0x400) == 0 || self->_pfAddrule != *(equal + 11))
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
    if ((v7 & 0x800) == 0 || self->_pfAddruleOs != *(equal + 12))
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
    if ((v7 & 0x20000000000) == 0 || self->_vmnetStart != *(equal + 42))
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

  v8 = *(equal + 344);
  if (self->_ifNetagentEnabled)
  {
    if ((*(equal + 344) & 1) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_215;
  }

  if (*(equal + 344))
  {
LABEL_219:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_215:
  LOBYTE(v5) = (v7 & 0x8000000000) == 0;
  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_timeSinceLastReport != *(equal + 40))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 348);
  if ((v3 & 0x10000000000) != 0)
  {
    self->_timestamp = *(from + 41);
    *&self->_has |= 0x10000000000uLL;
    v3 = *(from + 348);
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

  self->_ifFltrAttach = *(from + 1);
  *&self->_has |= 1uLL;
  v3 = *(from + 348);
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
  self->_ifFltrAttachOs = *(from + 2);
  *&self->_has |= 2uLL;
  v3 = *(from + 348);
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
  self->_ipFltrAdd = *(from + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(from + 348);
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
  self->_ipFltrAddOs = *(from + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(from + 348);
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
  self->_sockFltrRegister = *(from + 25);
  *&self->_has |= 0x1000000uLL;
  v3 = *(from + 348);
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
  self->_sockFltrRegisterOs = *(from + 26);
  *&self->_has |= 0x2000000uLL;
  v3 = *(from + 348);
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
  self->_sockAlloc = *(from + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(from + 348);
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
  self->_sockAllocKernel = *(from + 14);
  *&self->_has |= 0x2000uLL;
  v3 = *(from + 348);
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
  self->_sockAllocKernelOs = *(from + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(from + 348);
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
  self->_sockNecpClientuuidCount = *(from + 29);
  *&self->_has |= 0x10000000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainLocal = *(from + 19);
  *&self->_has |= 0x40000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainRoute = *(from + 23);
  *&self->_has |= 0x400000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainInet = *(from + 16);
  *&self->_has |= 0x8000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainInet6 = *(from + 17);
  *&self->_has |= 0x10000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainSystem = *(from + 24);
  *&self->_has |= 0x800000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainMultipath = *(from + 20);
  *&self->_has |= 0x80000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainKey = *(from + 18);
  *&self->_has |= 0x20000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainNdrv = *(from + 21);
  *&self->_has |= 0x100000uLL;
  v3 = *(from + 348);
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
  self->_sockDomainOther = *(from + 22);
  *&self->_has |= 0x200000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInetStream = *(from + 39);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInetDgram = *(from + 35);
  *&self->_has |= 0x400000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInetDgramConnected = *(from + 36);
  *&self->_has |= 0x800000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInetDgramDns = *(from + 37);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInetDgramNoData = *(from + 38);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInet6Stream = *(from + 34);
  *&self->_has |= 0x200000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInet6Dgram = *(from + 30);
  *&self->_has |= 0x20000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInet6DgramConnected = *(from + 31);
  *&self->_has |= 0x40000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInet6DgramDns = *(from + 32);
  *&self->_has |= 0x80000000uLL;
  v3 = *(from + 348);
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
  self->_sockNetInet6DgramNoData = *(from + 33);
  *&self->_has |= 0x100000000uLL;
  v3 = *(from + 348);
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
  self->_sockInetMcastJoin = *(from + 27);
  *&self->_has |= 0x4000000uLL;
  v3 = *(from + 348);
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
  self->_sockInetMcastJoinOs = *(from + 28);
  *&self->_has |= 0x8000000uLL;
  v3 = *(from + 348);
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
  self->_nexusFlowInetStream = *(from + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(from + 348);
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
  self->_nexusFlowInetDatagram = *(from + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(from + 348);
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
  self->_nexusFlowInet6Stream = *(from + 8);
  *&self->_has |= 0x80uLL;
  v3 = *(from + 348);
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
  self->_nexusFlowInet6Datagram = *(from + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(from + 348);
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
  self->_ifnetAlloc = *(from + 3);
  *&self->_has |= 4uLL;
  v3 = *(from + 348);
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
  self->_ifnetAllocOs = *(from + 4);
  *&self->_has |= 8uLL;
  v3 = *(from + 348);
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
  self->_pfAddrule = *(from + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(from + 348);
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
  self->_pfAddruleOs = *(from + 12);
  *&self->_has |= 0x800uLL;
  v3 = *(from + 348);
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
  self->_vmnetStart = *(from + 42);
  *&self->_has |= 0x20000000000uLL;
  v3 = *(from + 348);
  if ((v3 & 0x40000000000) == 0)
  {
LABEL_43:
    if ((v3 & 0x8000000000) == 0)
    {
      return;
    }

LABEL_87:
    self->_timeSinceLastReport = *(from + 40);
    *&self->_has |= 0x8000000000uLL;
    return;
  }

LABEL_86:
  self->_ifNetagentEnabled = *(from + 344);
  *&self->_has |= 0x40000000000uLL;
  if ((*(from + 348) & 0x8000000000) != 0)
  {
    goto LABEL_87;
  }
}

@end