@interface ResourceUsageAndRenderStage
- (ResourceUsageAndRenderStage)initWithUsage:(unint64_t)usage renderStages:(unint64_t)stages entryUsage:(OptionSet<WebGPU:(unsigned int)entryUsage :()variant<WTF:(WTF:(WTF::RefPtr<const WebGPU::ExternalTexture>>)f :RefPtr<const)WebGPU::TextureView> :RefPtr<WebGPU::Buffer> BindGroupEntryUsage>)a5 binding:resource:;
- (id).cxx_construct;
- (variant<WTF::RefPtr<WebGPU::Buffer>,)resource;
- (void)setResource:()variant<WTF:(WTF:(WTF::RefPtr<const WebGPU::ExternalTexture>>)f :RefPtr<const)WebGPU::TextureView> :RefPtr<WebGPU::Buffer>;
@end

@implementation ResourceUsageAndRenderStage

- (ResourceUsageAndRenderStage)initWithUsage:(unint64_t)usage renderStages:(unint64_t)stages entryUsage:(OptionSet<WebGPU:(unsigned int)entryUsage :()variant<WTF:(WTF:(WTF::RefPtr<const WebGPU::ExternalTexture>>)f :RefPtr<const)WebGPU::TextureView> :RefPtr<WebGPU::Buffer> BindGroupEntryUsage>)a5 binding:resource:
{
  m_ptr = f.impl_.data_.head_.value.m_ptr;
  v17.receiver = self;
  v17.super_class = ResourceUsageAndRenderStage;
  v12 = [(ResourceUsageAndRenderStage *)&v17 init:usage];
  v13 = v12;
  if (v12)
  {
    v12->_usage = usage;
    v12->_renderStages = stages;
    v12->_entryUsage = a5;
    v12->_binding = entryUsage;
    v14 = *(m_ptr + 8);
    if (v12->_resource.impl_.index_ == 255)
    {
      if (v14 == 255)
      {
        goto LABEL_7;
      }
    }

    else if (v14 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v18, &v12->_resource);
      v13->_resource.impl_.index_ = -1;
LABEL_7:
      v15 = v13;
      goto LABEL_8;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN6WebGPU6BufferENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_IKNS8_11TextureViewENSA_ISG_EENSC_ISG_EEEENS7_IKNS8_15ExternalTextureENSA_ISL_EENSC_ISL_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISP_LNS0_5TraitE1EEEEEvOT_EUlRSX_OT0_E_JRSQ_SW_EEEDcmSY_DpOT0_(*(m_ptr + 8), &v12->_resource, &v12->_resource, m_ptr);
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (variant<WTF::RefPtr<WebGPU::Buffer>,)resource
{
  v3 = v2;
  *v2 = 0;
  v2[8] = -1;
  index = self->_resource.impl_.index_;
  if (index != 255)
  {
    selfCopy = self;
    m_ptr = self->_resource.impl_.data_.head_.value.m_ptr;
    if (index == 2 || index == 1)
    {
      if (m_ptr)
      {
        ++*(m_ptr + 2);
      }
    }

    else if (m_ptr)
    {
      while (1)
      {
        v7 = *m_ptr;
        if ((*m_ptr & 1) == 0)
        {
          break;
        }

        v8 = *m_ptr;
        atomic_compare_exchange_strong_explicit(m_ptr, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }

      v9 = 0;
      self = *m_ptr;
      v10 = 1;
      atomic_compare_exchange_strong_explicit(*m_ptr, &v9, 1u, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        selfCopy2 = self;
        MEMORY[0x22AA683C0]();
        self = selfCopy2;
      }

      ++*&self->_entryUsage.m_storage;
      atomic_compare_exchange_strong_explicit(self, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != 1)
      {
        self = WTF::Lock::unlockSlow(self);
      }
    }

LABEL_14:
    *v3 = m_ptr;
    v3[8] = selfCopy->_resource.impl_.index_;
  }

  *&result.impl_.index_ = a2;
  result.impl_.data_.head_.value.m_ptr = self;
  return result;
}

- (void)setResource:()variant<WTF:(WTF:(WTF::RefPtr<const WebGPU::ExternalTexture>>)f :RefPtr<const)WebGPU::TextureView> :RefPtr<WebGPU::Buffer>
{
  v5 = *(f.impl_.data_.head_.value.m_ptr + 8);
  if (self->_resource.impl_.index_ == 255)
  {
    if (v5 == 255)
    {
      return;
    }
  }

  else if (v5 == 255)
  {
    v8 = v3;
    v9 = v4;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v7, &self->_resource);
    self->_resource.impl_.index_ = -1;
    return;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN6WebGPU6BufferENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_IKNS8_11TextureViewENSA_ISG_EENSC_ISG_EEEENS7_IKNS8_15ExternalTextureENSA_ISL_EENSC_ISL_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISP_LNS0_5TraitE1EEEEEvOT_EUlRSX_OT0_E_JRSQ_SW_EEEDcmSY_DpOT0_(v5, &self->_resource, &self->_resource, f.impl_.data_.head_.value.m_ptr);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 40) = 0;
  return self;
}

@end