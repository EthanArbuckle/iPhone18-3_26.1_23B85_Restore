uint64_t mav_router::device::pci_shim::handle_transmit(os_unfair_lock_s *this, dispatch_data_t data)
{
  v26 = *MEMORY[0x29EDCA608];
  v18 = 0xAAAAAAAAAAAAAAAALL;
  buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
  v4 = dispatch_data_create_map(data, &buffer_ptr, &v18);
  if (!v4)
  {
    *buf = MEMORY[0x29EDCA5F8];
    v21 = 0x40000000;
    *&v22 = ____mav_log_platform_os_log_handle_block_invoke;
    *(&v22 + 1) = &__block_descriptor_tmp_0;
    v23 = 3;
    if (qword_2A18B79E8 == -1)
    {
      v14 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
LABEL_20:
        v13 = 7;
        v15 = *MEMORY[0x29EDCA608];
        return v13;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B79E8, buf);
      v14 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }
    }

    *buf = 67110402;
    *&buf[4] = 3;
    v21 = 0x400000000000400;
    LODWORD(v22) = 0;
    WORD2(v22) = 2080;
    *(&v22 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::handle_transmit(mav_buffer_t)";
    HIWORD(v22) = 1024;
    v23 = 294;
    v24 = 2048;
    v25 = data;
    _os_log_impl(&dword_2990D9000, v14, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:failed to create mapping of buffer %p", buf, 0x2Eu);
    goto LABEL_20;
  }

  v5 = v4;
  dispatch_release(data);
  os_unfair_lock_lock(this + 12);
  *buf = -1431655766;
  os_unfair_lock_lock(&mav_router::device::pci_shim::mapLock);
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    qword_2A18B7A18 = 0;
    qword_2A18B7A10 = 0;
    qword_2A18B7A08 = &qword_2A18B7A10;
    __cxa_guard_release(&_MergedGlobals);
  }

  v6 = buffer_ptr;
  v7 = qword_2A18B7A10;
  if (qword_2A18B7A10)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 32);
        if (buffer_ptr >= v10)
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= buffer_ptr)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        v8 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = &qword_2A18B7A10;
    v9 = &qword_2A18B7A10;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[4] = v6;
    v11[5] = v5;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v9;
    *v8 = v11;
    if (*qword_2A18B7A08)
    {
      qword_2A18B7A08 = *qword_2A18B7A08;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_2A18B7A10, v11);
    ++qword_2A18B7A18;
  }

  os_unfair_lock_unlock(&mav_router::device::pci_shim::mapLock);
  v12 = *&this[14]._os_unfair_lock_opaque;
  if (v12)
  {
    if (v12(this + 14, buffer_ptr, v18, buf, 1, 1000, mav_router::device::pci_shim::dtor))
    {
      v13 = 0;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    v13 = 7;
  }

  os_unfair_lock_unlock(this + 12);
  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t mav_router_service_transmit(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1 || *a1 <= a2)
  {
    return 1;
  }

  v11[6] = v3;
  v11[7] = v4;
  v5 = *(*(a1 + 8) + 48 * a2 + 8);
  if (!v5)
  {
    return 3;
  }

  v6 = *(v5 + 3);
  if (!v6)
  {
    return 4;
  }

  v7 = *v5;
  if (*(a1 + 4) <= v7)
  {
    return 1;
  }

  if (*(*(a1 + 16) + 40 * v7 + 16) >= 2u)
  {
    v8 = a1;
    v11[1] = a3;
    v9 = a3;
    v11[0] = a2;
    if (mav_mux_encode(v11))
    {
      return 1;
    }

    v6 = *(v5 + 3);
    v7 = *v5;
    a1 = v8;
    a3 = v9;
  }

  return v6(a1, v7, *a3, *(v5 + 4));
}

void ___ZN10mav_router6device8pci_shim6engageEP16dispatch_group_s_block_invoke_2(void *a1, int a2, void *a3, unsigned int a4)
{
  v7 = a1[4];
  v8 = a1[6];
  if (v8)
  {
    v10 = std::__shared_weak_count::lock(v8);
    if (v10 && a1[5])
    {
      if (a2)
      {
        mav_router::device::pci_shim::handleError(v7);
      }

      else
      {
        mav_router::device::pci_shim::handleRead(v7, a3, a4);
      }

LABEL_12:
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);

        std::__shared_weak_count::__release_weak(v10);
      }

      return;
    }
  }

  else
  {
    v10 = 0;
  }

  if (!a2 && a3 && (*(v7 + 216) & 1) == 0)
  {
    free(a3);
  }

  if (v10)
  {
    goto LABEL_12;
  }
}

void mav_router::device::pci_shim::handleRead(os_unfair_lock_s *this, const void *a2, unsigned int a3)
{
  os_unfair_lock_lock(this + 12);
  v6 = *&this[4]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *&this[2]._os_unfair_lock_opaque;
      v9 = a3;
      if (LOBYTE(this[54]._os_unfair_lock_opaque) != 1)
      {
LABEL_9:
        v20 = dispatch_data_create(a2, v9, 0, *MEMORY[0x29EDCA558]);
        v10 = *(v8 + 16);
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      v9 = a3;
      if (LOBYTE(this[54]._os_unfair_lock_opaque) != 1)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3;
    if (LOBYTE(this[54]._os_unfair_lock_opaque) != 1)
    {
      goto LABEL_9;
    }
  }

  v20 = dispatch_data_create(a2, v9, 0, &__block_literal_global_12);
  v10 = *(v8 + 16);
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_10:
  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (*(v10 + 4) > os_unfair_lock_opaque)
  {
    v12 = *(v10 + 16) + 40 * os_unfair_lock_opaque;
    v13 = *(v12 + 16);
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = *(v12 + 8);
        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = &v20;
        v16 = *(v10 + 8) + 48 * *v14;
        v17 = *(v16 + 16);
        if (!v17)
        {
          goto LABEL_20;
        }

LABEL_19:
        v18 = *v15;
        v19 = *(v16 + 24);
        v17(v10);
        *v15 = 0;
        goto LABEL_20;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (!mav_mux_decode(&v20, &v21) && *v10 > v21)
      {
        v15 = v22;
        v16 = *(v10 + 8) + 48 * v21;
        v17 = *(v16 + 16);
        if (v17)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  os_unfair_lock_unlock(this + 12);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void mav_router::device::pci_shim::dtor(mav_router::device::pci_shim *this, void *a2)
{
  os_unfair_lock_lock(&mav_router::device::pci_shim::mapLock);
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    qword_2A18B7A18 = 0;
    qword_2A18B7A10 = 0;
    qword_2A18B7A08 = &qword_2A18B7A10;
    __cxa_guard_release(&_MergedGlobals);
  }

  v3 = qword_2A18B7A10;
  if (!qword_2A18B7A10)
  {
    goto LABEL_10;
  }

  v4 = &qword_2A18B7A10;
  v5 = qword_2A18B7A10;
  do
  {
    v6 = *(v5 + 32);
    v7 = v6 >= this;
    v8 = v6 < this;
    if (v7)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * v8);
  }

  while (v5);
  if (v4 == &qword_2A18B7A10 || v4[4] > this)
  {
LABEL_10:
    v4 = &qword_2A18B7A10;
  }

  v9 = v4[1];
  if (v9)
  {
    v10 = v4[1];
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v12 = v4;
    do
    {
      v11 = v12[2];
      v23 = *v11 == v12;
      v12 = v11;
    }

    while (!v23);
  }

  if (qword_2A18B7A08 == v4)
  {
    qword_2A18B7A08 = v11;
  }

  v13 = v4[5];
  --qword_2A18B7A18;
  if (!*v4)
  {
    v14 = v4;
    if (v9)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (!v9)
  {
    v9 = *v4;
    v14 = v4;
    v15 = 0;
    v16 = v4[2];
    *(*v4 + 16) = v16;
    v17 = *v16;
    if (*v16 == v4)
    {
      goto LABEL_29;
    }

LABEL_25:
    v16[1] = v9;
    v18 = *(v14 + 24);
    if (v14 == v4)
    {
      goto LABEL_39;
    }

LABEL_35:
    v19 = v4[2];
    v19[*v19 != v4] = v14;
    *(v14 + 16) = v19;
    v21 = *v4;
    v20 = v4[1];
    *(v21 + 16) = v14;
    *v14 = v21;
    *(v14 + 8) = v20;
    if (v20)
    {
      *(v20 + 16) = v14;
    }

    *(v14 + 24) = *(v4 + 24);
    if (v3 == v4)
    {
      v3 = v14;
    }

    goto LABEL_39;
  }

  do
  {
    v14 = v9;
    v9 = *v9;
  }

  while (v9);
  v9 = *(v14 + 8);
  if (!v9)
  {
LABEL_28:
    v16 = *(v14 + 16);
    v15 = 1;
    v17 = *v16;
    if (*v16 == v14)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = 0;
  v16 = *(v14 + 16);
  *(v9 + 16) = v16;
  v17 = *v16;
  if (*v16 != v14)
  {
    goto LABEL_25;
  }

LABEL_29:
  *v16 = v9;
  if (v14 == v3)
  {
    v17 = 0;
    v3 = v9;
    v18 = *(v14 + 24);
    if (v14 == v4)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v17 = v16[1];
  v18 = *(v14 + 24);
  if (v14 != v4)
  {
    goto LABEL_35;
  }

LABEL_39:
  if (!v3 || !v18)
  {
    goto LABEL_93;
  }

  if (!v15)
  {
    *(v9 + 24) = 1;
    goto LABEL_93;
  }

  while (1)
  {
    v24 = v17[2];
    v25 = *v24;
    v26 = *(v17 + 24);
    if (*v24 == v17)
    {
      break;
    }

    if ((v17[3] & 1) == 0)
    {
      *(v17 + 24) = 1;
      *(v24 + 24) = 0;
      v27 = *(v24 + 8);
      v28 = *v27;
      *(v24 + 8) = *v27;
      if (v28)
      {
        *(v28 + 16) = v24;
      }

      v29 = *(v24 + 16);
      v27[2] = v29;
      v29[*v29 != v24] = v27;
      *v27 = v24;
      *(v24 + 16) = v27;
      if (v3 == *v17)
      {
        v3 = v17;
      }

      v17 = *(*v17 + 8);
    }

    v30 = *v17;
    if (*v17 && *(v30 + 24) != 1)
    {
      v31 = v17[1];
      if (v31 && (v31[3] & 1) == 0)
      {
LABEL_84:
        v30 = v17;
      }

      else
      {
        *(v30 + 24) = 1;
        *(v17 + 24) = 0;
        v39 = *(v30 + 8);
        *v17 = v39;
        if (v39)
        {
          *(v39 + 16) = v17;
        }

        v40 = v17[2];
        v40[*v40 != v17] = v30;
        *(v30 + 8) = v17;
        *(v30 + 16) = v40;
        v17[2] = v30;
        v31 = v17;
      }

      v41 = *(v30 + 16);
      *(v30 + 24) = *(v41 + 24);
      *(v41 + 24) = 1;
      *(v31 + 24) = 1;
      v42 = *(v41 + 8);
      v43 = *v42;
      *(v41 + 8) = *v42;
      if (v43)
      {
        *(v43 + 16) = v41;
      }

      v44 = *(v41 + 16);
      v42[2] = v44;
      v44[*v44 != v41] = v42;
      *v42 = v41;
      goto LABEL_92;
    }

    v31 = v17[1];
    if (v31 && *(v31 + 24) != 1)
    {
      goto LABEL_84;
    }

    *(v17 + 24) = 0;
    v22 = v17[2];
    if (v22 == v3 || (*(v22 + 24) & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_47:
    v17 = *(*(v22 + 16) + 8 * (**(v22 + 16) == v22));
  }

  if ((v17[3] & 1) == 0)
  {
    *(v17 + 24) = 1;
    *(v24 + 24) = 0;
    v32 = v25[1];
    *v24 = v32;
    if (v32)
    {
      *(v32 + 16) = v24;
    }

    v33 = *(v24 + 16);
    v33[*v33 != v24] = v25;
    v25[1] = v24;
    v25[2] = v33;
    *(v24 + 16) = v25;
    v34 = v17[1];
    if (v3 == v34)
    {
      v3 = v17;
    }

    v17 = *v34;
  }

  v35 = *v17;
  if (*v17 && *(v35 + 24) != 1)
  {
    goto LABEL_88;
  }

  v36 = v17[1];
  if (!v36 || *(v36 + 24) == 1)
  {
    *(v17 + 24) = 0;
    v22 = v17[2];
    v23 = *(v22 + 24) != 1 || v22 == v3;
    if (v23)
    {
LABEL_78:
      *(v22 + 24) = 1;
      goto LABEL_93;
    }

    goto LABEL_47;
  }

  if (v35 && (*(v35 + 24) & 1) == 0)
  {
LABEL_88:
    v36 = v17;
    goto LABEL_89;
  }

  *(v36 + 24) = 1;
  *(v17 + 24) = 0;
  v37 = *v36;
  v17[1] = *v36;
  if (v37)
  {
    *(v37 + 16) = v17;
  }

  v38 = v17[2];
  v36[2] = v38;
  v38[*v38 != v17] = v36;
  *v36 = v17;
  v17[2] = v36;
  v35 = v17;
LABEL_89:
  v41 = v36[2];
  *(v36 + 24) = *(v41 + 24);
  *(v41 + 24) = 1;
  *(v35 + 24) = 1;
  v42 = *v41;
  v45 = *(*v41 + 8);
  *v41 = v45;
  if (v45)
  {
    *(v45 + 16) = v41;
  }

  v46 = *(v41 + 16);
  v46[*v46 != v41] = v42;
  v42[1] = v41;
  v42[2] = v46;
LABEL_92:
  *(v41 + 16) = v42;
LABEL_93:
  operator delete(v4);
  os_unfair_lock_unlock(&mav_router::device::pci_shim::mapLock);

  dispatch_release(v13);
}

void ___ZN10mav_router6device8pci_shim6engageEP16dispatch_group_s_block_invoke_5(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (a2 && a1[5])
      {
        mav_router::device::pci_shim::handleError(v5);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t mav_router::device::controller::exitLowPower(mav_router::device::controller *this)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v1 = this + 8;
  v2 = *(this + 2);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v6 = ___ZN10mav_router6device10controller12exitLowPowerEv_block_invoke;
  v7 = &__block_descriptor_tmp_20;
  v8 = &v9;
  if (v2 == this + 8)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v6(v5, (v2 + 16));
      v2 = *(v2 + 1);
    }

    while (v2 != v1);
    if (v10[3])
    {
      v3 = 0;
    }

    else
    {
      v3 = 6;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v3;
}

void sub_2990DA908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10mav_router6device10controller12exitLowPowerEv_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    result = (*(**a2 + 56))();
    *(*(*(v3 + 32) + 8) + 24) = result == 0;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t mav_router::device::pci_shim::exitLowPower(mav_router::device::pci_shim *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  *&v8 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v8 + 1) = &__block_descriptor_tmp_0;
  v9 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v6);
  }

  v2 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 36);
    v6 = 0x304000602;
    v7 = 0x400000000010400;
    LODWORD(v8) = 0;
    WORD2(v8) = 2080;
    *(&v8 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::exitLowPower()";
    HIWORD(v8) = 1024;
    v9 = 241;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", &v6, 0x2Au);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

void *mav_router::device::controller_mac::controller_mac(void *a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::controller::controller(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_2A1F2E420;
  return a1;
}

{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::controller::controller(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_2A1F2E420;
  return a1;
}

void sub_2990DAB88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2990DAC18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void mav_router::device::controller_mac::~controller_mac(mav_router::device::controller_mac *this)
{
  *this = &unk_2A1F2E4A8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 3))
  {
    v3 = *(this + 2);
    v4 = *(*(this + 1) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 3) = 0;
    if (v3 != (this + 8))
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 3);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 8));
    }
  }
}

{
  *this = &unk_2A1F2E4A8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 3))
  {
    v3 = *(this + 2);
    v4 = *(*(this + 1) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 3) = 0;
    if (v3 != (this + 8))
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 3);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 8));
    }
  }
}

{
  *this = &unk_2A1F2E4A8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 3))
  {
    v3 = *(this + 2);
    v4 = *(*(this + 1) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 3) = 0;
    if (v3 != (this + 8))
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 3);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 8));
    }
  }

  operator delete(this);
}

void mav_router::device::controller_mac::init_routes(mav_router::device::controller_mac *this)
{
  v2 = *(this + 5);
  if (v2 && (v2 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v3 = *(this + 4);
    v4 = *(v3 + 16);
    v6 = *v4;
    LODWORD(v5) = v4[1];
    if (v5 >= v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = v5;
    }

    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = 0;
    v4 = MEMORY[0x10];
    v6 = *MEMORY[0x10];
    LODWORD(v5) = *(MEMORY[0x10] + 4);
    if (v5 >= v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = v5;
    }

    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = 0;
  v8 = *(v4 + 1);
  do
  {
    v9 = v8 + 48 * v7;
    v12 = *(v9 + 8);
    v10 = (v9 + 8);
    v11 = v12;
    if (v12)
    {
      v13 = *(v11 + 16);
      *(v11 + 16) = v13 - 1;
      if (v13 == 1)
      {
        *(v11 + 8) = 0;
      }

      else
      {
        v14 = v8;
        v15 = v6;
        if (v13 == 2)
        {
          while (*(v14 + 8) != v11)
          {
            v14 += 48;
            if (!--v15)
            {
              *v10 = 0;
              goto LABEL_23;
            }
          }

          *(v11 + 8) = v14;
        }
      }

      *v10 = 0;
    }

    ++v7;
  }

  while (v7 != v6);
LABEL_23:
  if (v5)
  {
    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = 0;
LABEL_27:
      if (v17 < *v16 && v17 < v16[1])
      {
        v18 = *(v16 + 1);
        v19 = *(v16 + 2) + 40 * v17;
        *(v18 + 48 * v17 + 8) = v19;
        v20 = *(v19 + 16);
        *(v19 + 16) = v20 + 1;
        if (!v20)
        {
          *(v19 + 8) = v18 + 48 * v17;
        }
      }

      while (++v17 != v5)
      {
        v16 = *(v3 + 16);
        if (v16)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v2;
    (v2->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v21);
  }
}

uint64_t std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t mav_router_device_register_transmit(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a1 && a3 && *(a1 + 4) > a2)
  {
    result = 0;
    v6 = *(a1 + 16) + 40 * a2;
    *(v6 + 24) = a3;
    *(v6 + 32) = a4;
  }

  return result;
}

uint64_t mav_router_device_receive(uint64_t a1, unsigned int a2, dispatch_data_t *a3)
{
  if (!a1 || *(a1 + 4) <= a2)
  {
    return 1;
  }

  v17 = v3;
  v18 = v4;
  v5 = *(a1 + 16) + 40 * a2;
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 6;
  }

  if (v6 == 1)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      v8 = *(a1 + 8) + 48 * *v7;
      v9 = *(v8 + 16);
      if (v9)
      {
LABEL_7:
        v10 = *a3;
        v11 = *(v8 + 24);
        v12 = a3;
        result = v9();
        *v12 = 0;
        return result;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    if (!mav_mux_decode(a3, &v15) && *a1 > v15)
    {
      a3 = v16;
      v8 = *(a1 + 8) + 48 * v15;
      v9 = *(v8 + 16);
      if (v9)
      {
        goto LABEL_7;
      }

      return 4;
    }

    return 1;
  }
}

uint64_t mav_router_device_error(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  if (a1[1] <= a2)
  {
    return 1;
  }

  v5 = *a1;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 1);
      v11 = *(v10 + v7 + 8);
      if (v11 && *v11 == a2)
      {
        v12 = v10 + v7;
        v13 = *(v10 + v7 + 32);
        if (v13)
        {
          v13(a1, v8, a3, *(v12 + 40));
          v5 = *a1;
        }

        else
        {
          v9 = 4;
        }
      }

      ++v8;
      v7 += 48;
    }

    while (v8 < v5);
    return v9;
  }

  return 0;
}

const char *mav_router_channel_get_name_as_cstr(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "unknown channel";
  }

  else
  {
    return mav_router_channel_cstrings[a1];
  }
}

const char *mav_router_device_get_name_as_cstr(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown device";
  }

  else
  {
    return mav_router_device_cstrings[a1];
  }
}

uint64_t mav_router::device::controller::create@<X0>(std::__shared_weak_count **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = operator new(0x48uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::controller_ios::controller_ios(v4, v10);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1F2E6F8;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v5;
  *a2 = v5;
  a2[1] = v8;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return (**v5)(v5);
}

void sub_2990DB4C8(_Unwind_Exception *a1)
{
  (*(*v2 + 24))(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t mav_router::device::controller::controller(uint64_t a1, void *a2)
{
  *a1 = &unk_2A1F2E4A8;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  v3 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v3;
  atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(*(a1 + 40));
  v5 = *(*(a1 + 32) + 16);
  bzero(*(v5 + 1), 48 * *v5);
  v6 = *v5;
  if (v6)
  {
    v7 = *(v5 + 1);
    if (v6 == 1)
    {
      v8 = 0;
LABEL_7:
      v11 = (v7 + 48 * v8);
      do
      {
        *v11 = v8;
        v11 += 12;
        ++v8;
      }

      while (v6 != v8);
      goto LABEL_9;
    }

    v9 = 0;
    v8 = v6 & 0xFFFFFFFE;
    v10 = *(v5 + 1);
    do
    {
      *v10 = v9;
      v10[12] = v9 + 1;
      v9 += 2;
      v10 += 24;
    }

    while (v8 != v9);
    if (v8 != v6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  bzero(*(v5 + 2), 40 * v5[1]);
  v12 = v5[1];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = *(v5 + 2);
  if (v12 == 1)
  {
    v14 = 0;
LABEL_15:
    v17 = (v13 + 40 * v14);
    do
    {
      *v17 = v14;
      v17 += 10;
      ++v14;
    }

    while (v12 != v14);
    goto LABEL_17;
  }

  v15 = 0;
  v14 = v12 & 0xFFFFFFFE;
  v16 = *(v5 + 2);
  do
  {
    *v16 = v15;
    v16[10] = v15 + 1;
    v15 += 2;
    v16 += 20;
  }

  while (v14 != v15);
  if (v14 != v12)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void mav_router::device::controller::~controller(mav_router::device::controller *this)
{
  *this = &unk_2A1F2E4A8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 3))
  {
    v3 = *(this + 2);
    v4 = *(*(this + 1) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 3) = 0;
    if (v3 != (this + 8))
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 3);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (this + 8));
    }
  }
}

uint64_t mav_router::device::controller::engage(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  *buf = MEMORY[0x29EDCA5F8];
  v11 = 0x40000000;
  *&v12 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v12 + 1) = &__block_descriptor_tmp_0;
  v13 = 0;
  if (__mav_log_platform_os_log_handle::once != -1)
  {
    dispatch_once(&__mav_log_platform_os_log_handle::once, buf);
  }

  v4 = __mav_log_platform_os_log_handle::logger[0];
  if (os_log_type_enabled(__mav_log_platform_os_log_handle::logger[0], OS_LOG_TYPE_INFO))
  {
    *buf = 67110146;
    *&buf[4] = 0;
    v11 = 0x400000000010400;
    LODWORD(v12) = 0;
    WORD2(v12) = 2080;
    *(&v12 + 6) = "virtual mav_router_result_t mav_router::device::controller::engage(engage_callback_t)";
    HIWORD(v12) = 1024;
    v13 = 55;
    _os_log_impl(&dword_2990D9000, v4, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:engaging", buf, 0x24u);
  }

  v5 = _Block_copy(a2);
  global_queue = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke;
  v9[3] = &__block_descriptor_tmp_4;
  v9[4] = v5;
  v9[5] = a1;
  dispatch_async(global_queue, v9);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

void ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 1;
  v3 = dispatch_group_create();
  v4 = v2 + 8;
  v5 = *(v2 + 16);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v9 = ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke_2;
  v10 = &__block_descriptor_tmp_1;
  v11 = v13;
  for (i = v3; v5 != v4; v5 = *(v5 + 8))
  {
    v9(v8, (v5 + 16));
  }

  dispatch_retain(v3);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1107296256;
  block[2] = ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke_1;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = *(a1 + 32);
  block[5] = v13;
  block[6] = v3;
  dispatch_group_notify(v3, global_queue, block);
  dispatch_release(v3);
  _Block_object_dispose(v13, 8);
}

uint64_t ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke_2(uint64_t result, void *a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    result = (*(**a2 + 24))(*a2, *(result + 40));
    *(*(*(v3 + 32) + 8) + 24) = result == 0;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

void ___ZN10mav_router6device10controller6engageEU13block_pointerFv19mav_router_result_tE_block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = 0;
  }

  else
  {
    v3 = 6;
  }

  (*(v2 + 16))(v2, v3);
  _Block_release(*(a1 + 32));
  v4 = *(a1 + 48);

  dispatch_release(v4);
}

void __copy_helper_block_e8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32b40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 7);
}

uint64_t mav_router::device::controller::engage(mav_router::device::controller *this)
{
  v14 = 0;
  v15 = 0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v15 = v3;
    if (v3)
    {
      v4 = *(this + 4);
      v14 = v4;
      if (v4)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          dispatch_assert_queue_not_V2(v5);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -1431655766;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = ___ZN10mav_router6device10controller6engageEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_8;
  v9[4] = &v10;
  v9[5] = v6;
  v7 = (*(*this + 32))(this, v9);
  if (v7)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
    _Block_object_dispose(&v10, 8);
    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(v11 + 6);
    dispatch_release(v6);
    _Block_object_dispose(&v10, 8);
    if (!v3)
    {
      return v7;
    }
  }

  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v7;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return v7;
}

void sub_2990DBEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](v7 - 48);
  _Unwind_Resume(a1);
}

void ___ZN10mav_router6device10controller6engageEv_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) = a2;
  dispatch_group_leave(v3);
}

uint64_t mav_router::device::controller::tearDown(mav_router::device::controller *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v1 = this + 8;
  v2 = *(this + 2);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1107296256;
  v7 = ___ZN10mav_router6device10controller8tearDownEv_block_invoke;
  v8 = &__block_descriptor_tmp_11;
  v9 = &v10;
  if (v2 == this + 8)
  {
    goto LABEL_5;
  }

  v3 = this;
  do
  {
    v7(v6, (v2 + 16));
    v2 = *(v2 + 1);
  }

  while (v2 != v1);
  this = v3;
  if (v11[3])
  {
LABEL_5:
    (**this)(this);
    v4 = 0;
  }

  else
  {
    v4 = 6;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_2990DC004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2990DC01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10mav_router6device10controller8tearDownEv_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    result = (*(**a2 + 32))();
    *(*(*(v3 + 32) + 8) + 24) = result == 0;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t mav_router::device::controller::recover(mav_router::device::controller *this)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v1 = this + 8;
  v2 = *(this + 2);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v6 = ___ZN10mav_router6device10controller7recoverEv_block_invoke;
  v7 = &__block_descriptor_tmp_14;
  v8 = &v9;
  if (v2 == this + 8)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v6(v5, (v2 + 16));
      v2 = *(v2 + 1);
    }

    while (v2 != v1);
    if (v10[3])
    {
      v3 = 0;
    }

    else
    {
      v3 = 6;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v3;
}

void sub_2990DC1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10mav_router6device10controller7recoverEv_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    result = (*(**a2 + 40))();
    *(*(*(v3 + 32) + 8) + 24) = result == 0;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t mav_router::device::controller::enterLowPower(mav_router::device::controller *this)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v1 = this + 8;
  v2 = *(this + 2);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v6 = ___ZN10mav_router6device10controller13enterLowPowerEv_block_invoke;
  v7 = &__block_descriptor_tmp_17;
  v8 = &v9;
  if (v2 == this + 8)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v6(v5, (v2 + 16));
      v2 = *(v2 + 1);
    }

    while (v2 != v1);
    if (v10[3])
    {
      v3 = 0;
    }

    else
    {
      v3 = 6;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v3;
}

void sub_2990DC324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10mav_router6device10controller13enterLowPowerEv_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    result = (*(**a2 + 48))();
    *(*(*(v3 + 32) + 8) + 24) = result == 0;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  return result;
}

uint64_t mav_router::device::controller::hasFatalErrorOccurred(mav_router::device::controller *this, BOOL *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v2 = 1;
  v20 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a2)
  {
    v4 = this + 8;
    v5 = *(this + 2);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v9 = ___ZN10mav_router6device10controller21hasFatalErrorOccurredEPb_block_invoke;
    v10 = &__block_descriptor_tmp_21;
    v11 = &v17;
    v12 = &v13;
    if (v5 == this + 8)
    {
      v6 = 0;
      v2 = 0;
    }

    else
    {
      do
      {
        v9(v8, v5 + 2);
        v5 = *(v5 + 1);
      }

      while (v5 != v4);
      v6 = *(v14 + 24);
      if (v18[3])
      {
        v2 = 0;
      }

      else
      {
        v2 = 6;
      }
    }

    *a2 = v6;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v2;
}

void sub_2990DC4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10mav_router6device10controller21hasFatalErrorOccurredEPb_block_invoke(uint64_t result, void *a2)
{
  v2 = result;
  v6 = 0;
  v3 = *(*(result + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    result = (*(**a2 + 64))(*a2, &v6);
    v4 = result == 0;
    v3 = *(*(v2 + 32) + 8);
    v5 = v6;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(v3 + 24) = v4;
  *(*(*(v2 + 40) + 8) + 24) = (*(*(*(v2 + 40) + 8) + 24) | v5) & 1;
  return result;
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t mav_router::device::controller::getFatalErrorReason(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v3 = &v21;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v4 = a1 + 8;
  v5 = *(a1 + 16);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v17 = ___ZN10mav_router6device10controller19getFatalErrorReasonERNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v18 = &__block_descriptor_tmp_26;
  v19 = &v29;
  v20 = &v21;
  if (v5 != a1 + 8)
  {
    do
    {
      v17(v16, (v5 + 16));
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v3 = v22;
  }

  v6 = (v3 + 5);
  if (v3 + 5 != a2)
  {
    v7 = *(v3 + 63);
    if (*(a2 + 23) < 0)
    {
      v10 = v3[5];
      v9 = v3[6];
      if ((v7 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }

      if ((v7 & 0x80u) == 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v9;
      }

      std::string::__assign_no_alias<false>(a2, v11, v12);
    }

    else if ((v7 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a2, v3[5], v3[6]);
    }

    else
    {
      v8 = *v6;
      *(a2 + 16) = v3[7];
      *a2 = v8;
    }
  }

  v13 = *(v30 + 24);
  _Block_object_dispose(&v21, 8);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 6;
  }

  _Block_object_dispose(&v29, 8);
  return v14;
}

void sub_2990DC7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v25 - 64), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN10mav_router6device10controller19getFatalErrorReasonERNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1, void *a2)
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = (*(**a2 + 72))(*a2, &v43) == 0;
    v4 = *(*(a1 + 32) + 8);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  v42 = 16;
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    v7 = (*(**a2 + 96))(*a2, &v42) == 0;
    v8 = v42;
    *(*(*(a1 + 32) + 8) + 24) = v7;
    if (v8 > 0x10)
    {
      v9 = "unknown device";
      goto LABEL_9;
    }
  }

  else
  {
    *(v6 + 24) = 0;
    v8 = 16;
  }

  v9 = mav_router_device_cstrings[v8];
LABEL_9:
  v10 = 0x7FFFFFFFFFFFFFF7;
  v11 = strlen(v9);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    p_dst = operator new(v14);
    __dst.__r_.__value_.__l.__size_ = v12;
    __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_17;
  }

  *(&__dst.__r_.__value_.__s + 23) = v11;
  p_dst = &__dst;
  if (v11)
  {
LABEL_17:
    memmove(p_dst, v9, v12);
  }

  p_dst->__r_.__value_.__s.__data_[v12] = 0;
  v15 = std::string::insert(&__dst, 0, "\n", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) - 20) < 3)
    {
      v18 = SHIBYTE(v38.__r_.__value_.__r.__words[2]) + 3;
      v19 = &v38;
      v20 = 22;
LABEL_24:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v10 = v22;
      }

      else
      {
        v10 = 23;
      }

      v23 = v20 == 22;
      goto LABEL_33;
    }

    v28 = &v38;
LABEL_40:
    v29 = v28 + size;
    v29[2] = 32;
    *v29 = 8250;
    v30 = size + 3;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v38.__r_.__value_.__l.__size_ = size + 3;
    }

    else
    {
      *(&v38.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    v27 = v28 + v30;
    goto LABEL_44;
  }

  size = v38.__r_.__value_.__l.__size_;
  v20 = (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - v38.__r_.__value_.__l.__size_ >= 3)
  {
    v28 = v38.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  v18 = v38.__r_.__value_.__l.__size_ + 3;
  if (0x7FFFFFFFFFFFFFF7 - (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v38.__r_.__value_.__l.__size_ + 3 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v38.__r_.__value_.__r.__words[0];
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_24;
  }

  v23 = 0;
LABEL_33:
  v24 = operator new(v10);
  v25 = v24;
  if (size)
  {
    memmove(v24, v19, size);
  }

  v26 = v25 + size;
  *(v26 + 2) = 32;
  *v26 = 8250;
  if (!v23)
  {
    operator delete(v19);
  }

  v38.__r_.__value_.__l.__size_ = v18;
  v38.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
  v38.__r_.__value_.__r.__words[0] = v25;
  v27 = (v25 + v18);
LABEL_44:
  *v27 = 0;
  v39 = v38;
  memset(&v38, 0, sizeof(v38));
  if (v45 >= 0)
  {
    v31 = &v43;
  }

  else
  {
    v31 = v43;
  }

  if (v45 >= 0)
  {
    v32 = HIBYTE(v45);
  }

  else
  {
    v32 = v44;
  }

  v33 = std::string::append(&v39, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v41 = v33->__r_.__value_.__r.__words[2];
  *__p = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (v41 >= 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  if (v41 >= 0)
  {
    v36 = HIBYTE(v41);
  }

  else
  {
    v36 = __p[1];
  }

  std::string::append((*(*(a1 + 40) + 8) + 40), v35, v36);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_64;
    }
  }

  else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(v38.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

LABEL_66:
    operator delete(v43);
    return;
  }

LABEL_65:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_66;
  }
}

void sub_2990DCC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if ((*(v35 - 65) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v35 - 88));
  _Unwind_Resume(exception_object);
}

void sub_2990DCD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    JUMPOUT(0x2990DCCB8);
  }

  JUMPOUT(0x2990DCCF4);
}

void sub_2990DCD1C()
{
  if (*(v0 - 65) < 0)
  {
    JUMPOUT(0x2990DCCFCLL);
  }

  JUMPOUT(0x2990DCCC8);
}

uint64_t mav_router::device::controller::getMaxPayload(mav_router::device::controller *this, unint64_t *a2)
{
  *a2 = -1;
  v2 = this + 8;
  v3 = *(this + 2);
  if (v3 == (this + 8))
  {
    return 0;
  }

  LOBYTE(v5) = 1;
  v6 = -1;
  do
  {
    v9 = 0;
    if (v5)
    {
      v5 = (*(**(v3 + 16) + 88))(*(v3 + 16), &v9) == 0;
      v7 = v9;
      v6 = *a2;
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    if (v7 < v6)
    {
      v6 = v7;
    }

    *a2 = v6;
    v3 = *(v3 + 8);
  }

  while (v3 != v2);
  if (v5)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF070A8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

void std::__shared_ptr_pointer<mav_router::device::controller_ios *,std::shared_ptr<mav_router::device::controller>::__shared_ptr_default_delete<mav_router::device::controller,mav_router::device::controller_ios>,std::allocator<mav_router::device::controller_ios>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<mav_router::device::controller_ios *,std::shared_ptr<mav_router::device::controller>::__shared_ptr_default_delete<mav_router::device::controller,mav_router::device::controller_ios>,std::allocator<mav_router::device::controller_ios>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mav_router::device::controller_ios *,std::shared_ptr<mav_router::device::controller>::__shared_ptr_default_delete<mav_router::device::controller,mav_router::device::controller_ios>,std::allocator<mav_router::device::controller_ios>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002990E5524)
  {
    if (((v2 & 0x80000002990E5524 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002990E5524))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002990E5524 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mav_router::device::shim::shim(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v5 = a2[1];
  *a1 = &unk_2A1F2E758;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  v6 = *(a1 + 16);
  *(a1 + 24) = a3;
  v7 = std::__shared_weak_count::lock(v6);
  v8 = *(*(a1 + 8) + 16);
  if (v8)
  {
    v9 = *(a1 + 24);
    if (*(v8 + 4) > v9)
    {
      v10 = *(v8 + 16) + 40 * v9;
      *(v10 + 24) = mav_router::device::shim::handle_transmit_static;
      *(v10 + 32) = a1;
    }
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v7;
    (v7->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

void mav_router::device::shim::register_for_transmit(std::__shared_weak_count **this)
{
  v2 = std::__shared_weak_count::lock(this[2]);
  shared_weak_owners = this[1]->__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v4 = *(this + 6);
    if (*(shared_weak_owners + 4) > v4)
    {
      v5 = *(shared_weak_owners + 16) + 40 * v4;
      *(v5 + 24) = mav_router::device::shim::handle_transmit_static;
      *(v5 + 32) = this;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v2;
    (v2->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v6);
  }
}

void mav_router::device::shim::~shim(std::__shared_weak_count **this)
{
  *this = &unk_2A1F2E758;
  if (this[2])
  {
    std::__shared_weak_count::__release_weak(this[2]);
  }
}

uint64_t mav_router::device::shim::getDevice(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t mav_router_get_device_muxed(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  result = 1;
  if (a1 && a3 && *(a1 + 4) > a2)
  {
    result = 0;
    *a3 = *(*(a1 + 16) + 40 * a2 + 16) > 1u;
  }

  return result;
}

uint64_t *mav_router::device::pci_shim::getDataBufferMap(mav_router::device::pci_shim *this)
{
  if (atomic_load_explicit(&_MergedGlobals, memory_order_acquire))
  {
    return &qword_2A18B7A08;
  }

  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_2A18B7A18 = 0;
    qword_2A18B7A10 = 0;
    qword_2A18B7A08 = &qword_2A18B7A10;
    __cxa_guard_release(&_MergedGlobals);
  }

  return &qword_2A18B7A08;
}

uint64_t *mav_router::device::pci_shim::getIntToPCITransportMap(mav_router::device::pci_shim *this)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A18B7A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7A00))
  {
    v7 = xmmword_2990E55B0;
    std::map<unsigned int,PCITransportInterface>::map[abi:ne200100](&v4, &v7, 2);
    v3 = v5;
    qword_2A18B7A20 = v4;
    qword_2A18B7A28 = v5;
    qword_2A18B7A30 = v6;
    if (v6)
    {
      *(v5 + 16) = &qword_2A18B7A28;
      v4 = &v5;
      v5 = 0;
      v6 = 0;
      v3 = 0;
    }

    else
    {
      qword_2A18B7A20 = &qword_2A18B7A28;
    }

    std::__tree<std::__value_type<unsigned int,PCITransportInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCITransportInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCITransportInterface>>>::destroy(v3);
    __cxa_guard_release(&qword_2A18B7A00);
  }

  v1 = *MEMORY[0x29EDCA608];
  return &qword_2A18B7A20;
}

uint64_t mav_router::device::pci_shim::pci_shim(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::shim::shim(a1, &v10, a3);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_2A1F2E7E0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = *a4;
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v7 = *(a4 + 16);
    *(a1 + 168) = *(a4 + 32);
    *(a1 + 152) = v7;
  }

  v8 = *(a4 + 48);
  *(a1 + 176) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 184) = *(a4 + 56);
  *(a1 + 215) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = capabilities::pci::supportsRxIOPool(v8);
  return a1;
}

void sub_2990DD65C(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    *v1 = &unk_2A1F2E758;
    v4 = v1[2];
    if (!v4)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = &unk_2A1F2E758;
    v4 = v1[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
  goto LABEL_4;
}

void sub_2990DD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x2990DD6B8);
  }

  JUMPOUT(0x2990DD6B4);
}

void mav_router::device::pci_shim::~pci_shim(void **this)
{
  *this = &unk_2A1F2E7E0;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[22];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *this = &unk_2A1F2E758;
  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2A1F2E7E0;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[22];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *this = &unk_2A1F2E758;
  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2A1F2E7E0;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[22];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *this = &unk_2A1F2E758;
  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(this);
}

uint64_t mav_router::device::pci_shim::init(mav_router::device::pci_shim *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  *&v8 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v8 + 1) = &__block_descriptor_tmp_0;
  v9 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v6);
  }

  v2 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 36);
    v6 = 0x304000602;
    v7 = 0x400000000010400;
    LODWORD(v8) = 0;
    WORD2(v8) = 2080;
    *(&v8 + 6) = "BOOL mav_router::device::pci_shim::init()";
    HIWORD(v8) = 1024;
    v9 = 69;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", &v6, 0x2Au);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t mav_router::device::pci_shim::engage(mav_router::device::pci_shim *this, dispatch_group_s *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v3 = *(this + 22);
  if (v3)
  {
    dispatch_assert_queue_not_V2(v3);
  }

  v4 = *(this + 5);
  if (!v4 || (v5 = *(this + 4), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&v37 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v37 + 1) = &__block_descriptor_tmp_0;
  LODWORD(v38) = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, buf);
  }

  v8 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    v9 = *(this + 36);
    *buf = 67110402;
    *&buf[4] = 3;
    *&buf[8] = 1024;
    *&buf[10] = 1;
    *&buf[14] = 1024;
    LODWORD(v37) = 0;
    WORD2(v37) = 2080;
    *(&v37 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::engage(dispatch_group_t)";
    HIWORD(v37) = 1024;
    LODWORD(v38) = 123;
    WORD2(v38) = 1024;
    *(&v38 + 6) = v9;
    _os_log_impl(&dword_2990D9000, v8, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", buf, 0x2Au);
  }

  os_unfair_lock_lock(this + 12);
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v10;
  v40 = v10;
  v37 = v10;
  v38 = v10;
  *buf = v10;
  inited = TelephonyBasebandPCITransportInitParameters();
  *(this + 56) = 0u;
  *(this + 17) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *&v37 = &__block_literal_global;
  IntToPCITransportMap = mav_router::device::pci_shim::getIntToPCITransportMap(inited);
  v13 = qword_2A18B7A28;
  if (!qword_2A18B7A28)
  {
    goto LABEL_19;
  }

  v14 = *(this + 36);
  v15 = &qword_2A18B7A28;
  do
  {
    v16 = *(v13 + 28);
    v17 = v16 >= v14;
    v18 = v16 < v14;
    if (v17)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * v18);
  }

  while (v13);
  if (v15 == &qword_2A18B7A28 || v14 < *(v15 + 7))
  {
LABEL_19:
    v15 = &qword_2A18B7A28;
  }

  mav_router::device::pci_shim::getIntToPCITransportMap(IntToPCITransportMap);
  if (v15 == &qword_2A18B7A28)
  {
    *block = MEMORY[0x29EDCA5F8];
    v31 = 0x40000000;
    *&v32 = ____mav_log_platform_os_log_handle_block_invoke;
    *(&v32 + 1) = &__block_descriptor_tmp_0;
    v33 = 3;
    if (qword_2A18B79E8 == -1)
    {
      v21 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
LABEL_31:
        os_unfair_lock_unlock(this + 12);
        v19 = 7;
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B79E8, block);
      v21 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }
    }

    v22 = *(this + 36);
    *block = 67110402;
    *&block[4] = 3;
    v31 = 0x400000000000400;
    LODWORD(v32) = 0;
    WORD2(v32) = 2080;
    *(&v32 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::engage(dispatch_group_t)";
    HIWORD(v32) = 1024;
    v33 = 140;
    v34 = 1024;
    v35 = v22;
    _os_log_impl(&dword_2990D9000, v21, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:invalid interface %u", block, 0x2Au);
    goto LABEL_31;
  }

  *buf = *(v15 + 8);
  DWORD2(v37) = 5000;
  LODWORD(v38) = v38 | 4;
  pthread_once(&ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::getInstance(void)::sOnce, ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init);
  *(&v38 + 4) = 0x180000000008;
  if (*(this + 216) == 1)
  {
    LODWORD(v38) = v38 | 8;
    HIDWORD(v38) = 16;
  }

  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN10mav_router6device8pci_shim6engageEP16dispatch_group_s_block_invoke_2;
  v28[3] = &__block_descriptor_tmp_4_0;
  v28[4] = this;
  v28[5] = v5;
  v29 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v39 = v28;
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 1174405120;
  v26[2] = ___ZN10mav_router6device8pci_shim6engageEP16dispatch_group_s_block_invoke_5;
  v26[3] = &__block_descriptor_tmp_8_0;
  v26[4] = this;
  v26[5] = v5;
  v27 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&v39 + 1) = v26;
  *&v40 = 0;
  if (*(this + 22))
  {
    *(&v40 + 1) = *(this + 22);
  }

  LODWORD(v41) = *(this + 46);
  if ((TelephonyBasebandPCITransportCreate() & 1) == 0)
  {
    *block = MEMORY[0x29EDCA5F8];
    v31 = 0x40000000;
    *&v32 = ____mav_log_platform_os_log_handle_block_invoke;
    *(&v32 + 1) = &__block_descriptor_tmp_0;
    v33 = 3;
    if (qword_2A18B79E8 == -1)
    {
      v23 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B79E8, block);
      v23 = qword_2A18B79C8;
      if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
      {
LABEL_35:
        v19 = 7;
        os_unfair_lock_unlock(this + 12);
        v20 = v27;
        if (!v27)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    *block = 67110146;
    *&block[4] = 3;
    v31 = 0x400000000000400;
    LODWORD(v32) = 0;
    WORD2(v32) = 2080;
    *(&v32 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::engage(dispatch_group_t)";
    HIWORD(v32) = 1024;
    v33 = 198;
    _os_log_impl(&dword_2990D9000, v23, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:failed to create pci transport", block, 0x24u);
    goto LABEL_35;
  }

  v19 = 0;
  os_unfair_lock_unlock(this + 12);
  v20 = v27;
  if (v27)
  {
LABEL_36:
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_37:
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_39:
  std::__shared_weak_count::__release_weak(v7);
  v24 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_2990DE0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v24 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void ___ZN10mav_router6device8pci_shim6engageEP16dispatch_group_s_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  *&v11 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v11 + 1) = &__block_descriptor_tmp_0;
  v12 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v9);
  }

  v7 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    v9 = 0x304000802;
    v10 = 0x400000000010400;
    WORD2(v11) = 2080;
    LODWORD(v11) = 0;
    *(&v11 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::engage(dispatch_group_t)_block_invoke";
    HIWORD(v11) = 1024;
    v12 = 134;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_2990D9000, v7, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:status %u, arg1 %p, arg2 %p", &v9, 0x3Eu);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t mav_router::device::pci_shim::handleError(os_unfair_lock_s *this)
{
  v62 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 12);
  v53 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52[7] = v2;
  v52[8] = v2;
  v52[5] = v2;
  v52[6] = v2;
  v52[3] = v2;
  v52[4] = v2;
  v52[1] = v2;
  v52[2] = v2;
  v52[0] = v2;
  v50 = v2;
  v51 = v2;
  v48 = v2;
  *__p = v2;
  v46 = v2;
  v47 = v2;
  v45 = v2;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v45);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "pci error: ", 11);
  v4 = MEMORY[0x29C297CF0](v3, this[36]._os_unfair_lock_opaque);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ". failed on I/O 0x", 18);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29C297CE0]();
  *buf = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  *&v56 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v56 + 1) = &__block_descriptor_tmp_0;
  v57 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, buf);
  }

  v6 = qword_2A18B79C8;
  if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    goto LABEL_21;
  }

  if ((BYTE8(v51) & 0x10) != 0)
  {
    v9 = v51;
    if (v51 < *(&v48 + 1))
    {
      *&v51 = *(&v48 + 1);
      v9 = *(&v48 + 1);
    }

    v10 = v48;
    v7 = v9 - v48;
    if ((v9 - v48) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if ((BYTE8(v51) & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v44) = 0;
      v8 = __dst;
      goto LABEL_18;
    }

    v10 = *(&v46 + 1);
    v7 = *(&v47 + 1) - *(&v46 + 1);
    if (*(&v47 + 1) - *(&v46 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_49:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v8 = operator new(v11);
    __dst[1] = v7;
    v44 = v11 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_17;
  }

  HIBYTE(v44) = v7;
  v8 = __dst;
  if (v7)
  {
LABEL_17:
    memmove(v8, v10, v7);
  }

LABEL_18:
  *(v8 + v7) = 0;
  v12 = __dst;
  if (v44 < 0)
  {
    v12 = __dst[0];
  }

  *buf = 67110402;
  *&buf[4] = 3;
  v55 = 0x400000000010400;
  LODWORD(v56) = 0;
  WORD2(v56) = 2080;
  *(&v56 + 6) = "void mav_router::device::pci_shim::handleError(IOReturn)";
  HIWORD(v56) = 1024;
  v57 = 381;
  v58 = 2080;
  v59 = v12;
  _os_log_impl(&dword_2990D9000, v6, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:got error (%s)", buf, 0x2Eu);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
    v13 = BYTE8(v51);
    if ((BYTE8(v51) & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    v17 = v51;
    if (v51 < *(&v48 + 1))
    {
      *&v51 = *(&v48 + 1);
      v17 = *(&v48 + 1);
    }

    v16 = &v48;
    goto LABEL_29;
  }

LABEL_21:
  v13 = BYTE8(v51);
  if ((BYTE8(v51) & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v13 & 8) == 0)
  {
    v14 = 0;
    BYTE7(v56) = 0;
    v15 = buf;
    goto LABEL_38;
  }

  v16 = &v46 + 1;
  v17 = *(&v47 + 1);
LABEL_29:
  v18 = *v16;
  v14 = v17 - *v16;
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v14 | 7) + 1;
    }

    v15 = operator new(v19);
    v55 = v14;
    *&v56 = v19 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_37;
  }

  BYTE7(v56) = v17 - *v16;
  v15 = buf;
  if (v14)
  {
LABEL_37:
    memmove(v15, v18, v14);
  }

LABEL_38:
  *(v15 + v14) = 0;
  mav_router::device::pci_shim::setErrorReason_sync(this, buf);
  if (SBYTE7(v56) < 0)
  {
    operator delete(*buf);
    v20 = *&this[4]._os_unfair_lock_opaque;
    if (!v20)
    {
LABEL_47:
      os_unfair_lock_unlock(this + 12);
      goto LABEL_64;
    }
  }

  else
  {
    v20 = *&this[4]._os_unfair_lock_opaque;
    if (!v20)
    {
      goto LABEL_47;
    }
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (!v21)
  {
    goto LABEL_47;
  }

  v22 = v21;
  v23 = *&this[2]._os_unfair_lock_opaque;
  if (!v23)
  {
    goto LABEL_62;
  }

  v24 = *(v23 + 16);
  v25 = this + 48;
  if (SHIBYTE(this[53]._os_unfair_lock_opaque) < 0)
  {
    v25 = *&v25->_os_unfair_lock_opaque;
    if (!v24)
    {
LABEL_54:
      v42 = 1;
      goto LABEL_55;
    }
  }

  else if (!v24)
  {
    goto LABEL_54;
  }

  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (v24[1] <= os_unfair_lock_opaque)
  {
    goto LABEL_54;
  }

  v27 = *v24;
  if (!v27)
  {
    goto LABEL_62;
  }

  v28 = 0;
  v42 = 0;
  do
  {
    v36 = *(v24 + 1);
    v37 = v36 + 48 * v28;
    v38 = *(v37 + 8);
    if (v38 && *v38 == os_unfair_lock_opaque)
    {
      v39 = *(v37 + 32);
      if (v39)
      {
LABEL_68:
        v39(v24, v28, v25, *(v36 + 48 * v28 + 40));
        v27 = *v24;
      }

      else
      {
        if (v28 + 1 >= v27)
        {
LABEL_81:
          v42 = 4;
          goto LABEL_55;
        }

        v40 = (v36 + 48 * v28++ + 80);
        while (1)
        {
          v41 = *(v40 - 3);
          if (!v41 || *v41 != os_unfair_lock_opaque)
          {
            break;
          }

          v39 = *v40;
          if (*v40)
          {
            v42 = 4;
            goto LABEL_68;
          }

          ++v28;
          v40 += 6;
          if (v28 >= v27)
          {
            goto LABEL_81;
          }
        }

        v42 = 4;
      }
    }

    ++v28;
  }

  while (v28 < v27);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_55:
  *buf = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  *&v56 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v56 + 1) = &__block_descriptor_tmp_0;
  v57 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, buf);
  }

  v29 = qword_2A18B79C8;
  v30 = 1;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *&buf[4] = 3;
    v55 = 0x400000000010400;
    LODWORD(v56) = 0;
    WORD2(v56) = 2080;
    *(&v56 + 6) = "void mav_router::device::pci_shim::handleError(IOReturn)";
    HIWORD(v56) = 1024;
    v57 = 392;
    v58 = 1024;
    LODWORD(v59) = v42;
    _os_log_impl(&dword_2990D9000, v29, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:mav_router_device_error returned 0x%x", buf, 0x2Au);
    v30 = qword_2A18B79E8 == -1;
  }

  *buf = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  *&v56 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v56 + 1) = &__block_descriptor_tmp_0;
  v57 = 3;
  if (v30)
  {
    v31 = qword_2A18B79C8;
    if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  dispatch_once(&qword_2A18B79E8, buf);
  v31 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
LABEL_61:
    v32 = *(v23 + 16);
    v33 = this[6]._os_unfair_lock_opaque;
    *buf = 67110658;
    *&buf[4] = 3;
    v55 = 0x400000000010400;
    LODWORD(v56) = 0;
    WORD2(v56) = 2080;
    *(&v56 + 6) = "void mav_router::device::pci_shim::handleError(IOReturn)";
    HIWORD(v56) = 1024;
    v57 = 394;
    v58 = 2048;
    v59 = v32;
    v60 = 1024;
    v61 = v33;
    _os_log_impl(&dword_2990D9000, v31, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:router %p, device %u", buf, 0x34u);
  }

LABEL_62:
  os_unfair_lock_unlock(this + 12);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_64:
  *&v45 = *MEMORY[0x29EDC9538];
  *(&v45 + *(v45 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v45 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v45 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v46);
  std::ostream::~ostream();
  result = MEMORY[0x29C297D80](v52);
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2990DEB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ostringstream::~ostringstream(&a13, MEMORY[0x29EDC9538]);
  MEMORY[0x29C297D80](&a27);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN10mav_router6device8pci_shimEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN10mav_router6device8pci_shimEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t mav_router::device::pci_shim::tearDown(os_unfair_lock_s *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  *&v8 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v8 + 1) = &__block_descriptor_tmp_0;
  v9 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v6);
  }

  v2 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    os_unfair_lock_opaque = this[36]._os_unfair_lock_opaque;
    v6 = 0x304000602;
    v7 = 0x400000000010400;
    LODWORD(v8) = 0;
    WORD2(v8) = 2080;
    *(&v8 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::tearDown()";
    HIWORD(v8) = 1024;
    v9 = 208;
    v10 = 1024;
    v11 = os_unfair_lock_opaque;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", &v6, 0x2Au);
  }

  os_unfair_lock_lock(this + 12);
  TelephonyUtilTransportFree();
  os_unfair_lock_unlock(this + 12);
  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t mav_router::device::pci_shim::recover(os_unfair_lock_s *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  *&v8 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v8 + 1) = &__block_descriptor_tmp_0;
  v9 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v6);
  }

  v2 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    os_unfair_lock_opaque = this[36]._os_unfair_lock_opaque;
    v6 = 0x304000602;
    v7 = 0x400000000010400;
    LODWORD(v8) = 0;
    WORD2(v8) = 2080;
    *(&v8 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::recover()";
    HIWORD(v8) = 1024;
    v9 = 221;
    v10 = 1024;
    v11 = os_unfair_lock_opaque;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", &v6, 0x2Au);
  }

  os_unfair_lock_lock(this + 12);
  if (SHIBYTE(this[53]._os_unfair_lock_opaque) < 0)
  {
    **&this[48]._os_unfair_lock_opaque = 0;
    *&this[50]._os_unfair_lock_opaque = 0;
  }

  else
  {
    LOBYTE(this[48]._os_unfair_lock_opaque) = 0;
    HIBYTE(this[53]._os_unfair_lock_opaque) = 0;
  }

  os_unfair_lock_unlock(this + 12);
  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t mav_router::device::pci_shim::clearErrorReason_sync(uint64_t this)
{
  if (*(this + 215) < 0)
  {
    **(this + 192) = 0;
    *(this + 200) = 0;
  }

  else
  {
    *(this + 192) = 0;
    *(this + 215) = 0;
  }

  return this;
}

uint64_t mav_router::device::pci_shim::enterLowPower(mav_router::device::pci_shim *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  *&v8 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v8 + 1) = &__block_descriptor_tmp_0;
  v9 = 3;
  if (qword_2A18B79E8 != -1)
  {
    dispatch_once(&qword_2A18B79E8, &v6);
  }

  v2 = qword_2A18B79C8;
  if (os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 36);
    v6 = 0x304000602;
    v7 = 0x400000000010400;
    LODWORD(v8) = 0;
    WORD2(v8) = 2080;
    *(&v8 + 6) = "virtual mav_router_result_t mav_router::device::pci_shim::enterLowPower()";
    HIWORD(v8) = 1024;
    v9 = 234;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:service %u", &v6, 0x2Au);
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t mav_router::device::pci_shim::hasFatalErrorOccurred(mav_router::device::pci_shim *this, BOOL *a2)
{
  v2 = *(this + 215);
  if (v2 < 0)
  {
    *a2 = *(this + 25) != 0;
  }

  else
  {
    *a2 = v2 != 0;
  }

  return 0;
}

BOOL mav_router::device::pci_shim::isError_sync(mav_router::device::pci_shim *this)
{
  v1 = *(this + 215);
  if (v1 < 0)
  {
    return *(this + 25) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

uint64_t mav_router::device::pci_shim::getFatalErrorReason(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 192), *(a1 + 200));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *(a1 + 192);
  if (*(a2 + 23) < 0)
  {
LABEL_3:
    operator delete(*a2);
  }

LABEL_4:
  *a2 = v4;
  return 0;
}

void mav_router::device::pci_shim::getErrorReason_sync(mav_router::device::pci_shim *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 215) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 24), *(this + 25));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 12);
    a2->__r_.__value_.__r.__words[2] = *(this + 26);
  }
}

uint64_t mav_router::device::pci_shim::getMaxPayload(mav_router::device::pci_shim *this, unint64_t *a2)
{
  pthread_once(&ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::getInstance(void)::sOnce, ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init);
  *a2 = 6144;
  return 0;
}

void **mav_router::device::pci_shim::setErrorReason_sync(uint64_t a1, const void **a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 0x40000000;
  *&v15 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v15 + 1) = &__block_descriptor_tmp_0;
  v16 = 3;
  if (qword_2A18B79E8 == -1)
  {
    v4 = qword_2A18B79C8;
    if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_2A18B79E8, &v13);
    v4 = qword_2A18B79C8;
    if (!os_log_type_enabled(qword_2A18B79C8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v13 = 0x304000602;
  v14 = 0x400000000000400;
  LODWORD(v15) = 0;
  WORD2(v15) = 2080;
  *(&v15 + 6) = "void mav_router::device::pci_shim::setErrorReason_sync(const std::string &)";
  HIWORD(v15) = 1024;
  v16 = 350;
  v17 = 2080;
  v18 = v5;
  _os_log_impl(&dword_2990D9000, v4, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:reason %s", &v13, 0x2Eu);
LABEL_7:
  result = (a1 + 192);
  if (*(a1 + 215) < 0)
  {
    if (result != a2 && !*(a1 + 200))
    {
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = a2[1];
      }

      result = std::string::__assign_no_alias<false>(result, v10, v11);
    }

    goto LABEL_22;
  }

  if (result == a2 || *(a1 + 215))
  {
LABEL_22:
    v12 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    result = std::string::__assign_no_alias<true>(result, *a2, a2[1]);
  }

  else
  {
    v7 = *a2;
    *(a1 + 208) = a2[2];
    *result = v7;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C297D30](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_2990DF550(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C297D80](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::map<unsigned int,PCITransportInterface>::map[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[2 * a3];
    while (1)
    {
      v8 = *a1;
      v7 = a1[1];
      v9 = v4;
      if (*a1 != v4)
      {
        v10 = a1[1];
        v11 = v4;
        if (v7)
        {
          do
          {
            v9 = v10;
            v10 = v10[1];
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = v11[2];
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (v12);
        }

        v13 = *v5;
        if (*(v9 + 7) >= *v5)
        {
          break;
        }
      }

      if (v7)
      {
        v14 = v9;
      }

      else
      {
        v14 = v4;
      }

      if (v7)
      {
        v15 = (v9 + 1);
      }

      else
      {
        v15 = v4;
      }

      if (!*v15)
      {
        goto LABEL_26;
      }

LABEL_4:
      v5 += 2;
      if (v5 == v6)
      {
        return a1;
      }
    }

    v15 = v4;
    v14 = v4;
    if (v7)
    {
      v16 = a1[1];
      while (1)
      {
        while (1)
        {
          v14 = v16;
          v17 = *(v16 + 7);
          if (v17 <= v13)
          {
            break;
          }

          v16 = *v14;
          v15 = v14;
          if (!*v14)
          {
            goto LABEL_26;
          }
        }

        if (v17 >= v13)
        {
          goto LABEL_4;
        }

        v16 = v14[1];
        if (!v16)
        {
          v15 = v14 + 1;
          break;
        }
      }
    }

LABEL_26:
    v18 = operator new(0x28uLL);
    *(v18 + 28) = *v5;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v14;
    *v15 = v18;
    if (*v8)
    {
      *a1 = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v18);
    ++a1[2];
    goto LABEL_4;
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned int,PCITransportInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCITransportInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCITransportInterface>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,PCITransportInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCITransportInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCITransportInterface>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,PCITransportInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCITransportInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCITransportInterface>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void *ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init()
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1F2EAB8;
  ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::fsInstance = result;
  return result;
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C297CB0](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C297CC0](v14);
  return a1;
}

void sub_2990DFC60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C297CC0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2990DFC40);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_2990DFEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 mav_router::service::transport_shim::create@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = operator new(0x70uLL);
  mav_router::service::transport_shim::transport_shim(v4, a1);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_2A1F2E978;
  v5 = *(a1 + 8);
  *(v4 + 3) = *a1;
  *(v4 + 4) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 5) = *(a1 + 16);
  v6 = dispatch_group_create();
  *(v4 + 6) = v6;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  v4[104] = 1;
  dispatch_group_enter(v6);
  v21.n128_u64[0] = v4;
  v7 = operator new(0x20uLL);
  v7[1] = 0;
  v8 = v7 + 1;
  *v7 = &unk_2A1F2EA18;
  v7[2] = 0;
  v7[3] = v4;
  v21.n128_u64[1] = v7;
  v9 = *(v4 + 2);
  if (v9)
  {
    if (v9->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
      *(v4 + 1) = v4;
      *(v4 + 2) = v7;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v9);
      v7 = v10;
      if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v7;
    if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v11 = v7;
      (*(*v7 + 16))();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  v12 = *(*(v21.n128_u64[0] + 24) + 16);
  v13 = *(v21.n128_u64[0] + 40);
  v14 = operator new(0x10uLL);
  v15 = *(v21.n128_u64[0] + 16);
  if (!v15 || (v16 = *(v21.n128_u64[0] + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v14 = v16;
  v14[1] = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v12 && *v12 > v13)
  {
    v18 = *(v12 + 8) + 48 * v13;
    *(v18 + 16) = mav_router::service::transport_shim_private::handle_receive;
    *(v18 + 24) = v14;
  }

  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v17;
    (v17->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

  result = v21;
  *a2 = v21;
  return result;
}

void sub_2990E0160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *mav_router::service::transport_shim::transport_shim(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F2E940;
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  *&v11 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v11 + 1) = &__block_descriptor_tmp_0;
  v12 = 2;
  if (qword_2A18B79E0 == -1)
  {
    v4 = qword_2A18B79C0;
    if (!os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_2A18B79E0, &v9);
    v4 = qword_2A18B79C0;
    if (!os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }
  }

  v5 = *(a2 + 16);
  if (v5 > 0xA)
  {
    v6 = "unknown channel";
  }

  else
  {
    v6 = mav_router_channel_cstrings[v5];
  }

  v9 = 0x204000602;
  v10 = 0x400000000010400;
  LODWORD(v11) = 0;
  WORD2(v11) = 2080;
  *(&v11 + 6) = "mav_router::service::transport_shim::transport_shim(const parameters &)";
  HIWORD(v11) = 1024;
  v12 = 353;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_2990D9000, v4, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:with channel %s", &v9, 0x2Eu);
LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t mav_router::service::transport_shim::get_shim@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *(result + 80);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v4;
    a2[1] = v3;
  }

  return result;
}

void mav_router::service::transport_shim_private::~transport_shim_private(mav_router::service::transport_shim_private *this)
{
  mav_router::service::transport_shim_private::~transport_shim_private(this);

  operator delete(v1);
}

{
  *this = &unk_2A1F2E978;
  v2 = *(*(this + 3) + 16);
  if (!v2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    goto LABEL_7;
  }

  v3 = *(this + 10);
  if (*v2 <= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v7 = MEMORY[0xAAAAAAAAAAAAAAB2];
    if (!MEMORY[0xAAAAAAAAAAAAAAB2])
    {
LABEL_9:
      operator delete(v5);
      v6 = *(this + 12);
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_8:
    std::__shared_weak_count::__release_weak(v7);
    goto LABEL_9;
  }

  v4 = *(v2 + 8) + 48 * v3;
  *(v4 + 16) = 0;
  v5 = *(v4 + 24);
  if (v5)
  {
LABEL_7:
    v7 = v5[1];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = *(this + 12);
  if (!v6)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_12:
    v8 = *(this + 8);
    v9 = (*(v8 + ((*(this + 11) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(this + 11) & 0x1FFLL];
    v10 = *(this + 11) + 1;
    *(this + 11) = v10;
    *(this + 12) = v6 - 1;
    if (v10 >= 0x400)
    {
      operator delete(*v8);
      *(this + 8) += 8;
      *(this + 11) -= 512;
    }

    dispatch_release(v9);
    v6 = *(this + 12);
  }

  while (v6);
  dispatch_group_enter(*(this + 6));
LABEL_15:
  dispatch_group_leave(*(this + 6));
  dispatch_release(*(this + 6));
  v11 = *(this + 8);
  v12 = *(this + 9);
  *(this + 12) = 0;
  v13 = v12 - v11;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v11);
      v12 = *(this + 9);
      v11 = (*(this + 8) + 8);
      *(this + 8) = v11;
      v13 = v12 - v11;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v14 = 256;
    goto LABEL_21;
  }

  if (v13 == 2)
  {
    v14 = 512;
LABEL_21:
    *(this + 11) = v14;
  }

  if (v11 != v12)
  {
    do
    {
      v15 = *v11++;
      operator delete(v15);
    }

    while (v11 != v12);
    v17 = *(this + 8);
    v16 = *(this + 9);
    if (v16 != v17)
    {
      *(this + 9) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v18 = *(this + 7);
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 4);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(this + 2);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }
}

std::__shared_weak_count *mav_router::service::transport_shim_private::apply_transport(uint64_t a1, uint64_t (**a2)(uint64_t a1, const void *a2, unsigned int a3, unsigned int *a4))
{
  v4 = operator new(0x10uLL);
  v5 = *(a1 + 16);
  *v4 = *(a1 + 8);
  if (!v5)
  {
    *(v4 + 1) = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  result = std::__shared_weak_count::lock(v5);
  *(v4 + 1) = result;
  if (!result)
  {
    goto LABEL_5;
  }

  a2[10] = v4;
  *a2 = mav_router::service::transport_shim_private::write_func;
  a2[1] = mav_router::service::transport_shim_private::read_func;
  a2[2] = mav_router::service::transport_shim_private::unblock_read_func;
  a2[3] = mav_router::service::transport_shim_private::flush_read_func;
  a2[7] = mav_router::service::transport_shim_private::is_valid_func;
  a2[6] = mav_router::service::transport_shim_private::free_func;
  return result;
}

uint64_t mav_router::service::transport_shim_private::write_func(uint64_t a1, const void *a2, unsigned int a3, unsigned int *a4)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 80))
  {
    result = 0;
    goto LABEL_24;
  }

  *buf = MEMORY[0x29EDCA5F8];
  v26 = 0x40000000;
  *&v27 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_0;
  v28 = 2;
  if (qword_2A18B79E0 != -1)
  {
    dispatch_once(&qword_2A18B79E0, buf);
  }

  v8 = qword_2A18B79C0;
  if (os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67111170;
    *&buf[4] = 2;
    v26 = 0x400000000030400;
    LODWORD(v27) = 0;
    WORD2(v27) = 2080;
    *(&v27 + 6) = "static void mav_router::service::transport_shim_private::log_write(const unsigned char *, unsigned int)";
    HIWORD(v27) = 1024;
    v28 = 153;
    v29 = 2080;
    v30 = "";
    v31 = 1024;
    v32 = a3;
    v33 = 1040;
    v34 = a3;
    v35 = 2096;
    v36 = a2;
    _os_log_impl(&dword_2990D9000, v8, OS_LOG_TYPE_DEBUG, "[%04x.%04u.%04u] %s:%u:%s (%u bytes): %.*P", buf, 0x44u);
  }

  v9 = *(a1 + 80);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  v13 = dispatch_data_create(a2, a3, global_queue, 0);
  v14 = v13;
  if (v13)
  {
    v24 = v13;
  }

  v15 = *(*(v11 + 24) + 16);
  if (!v15 || (v16 = *(v11 + 40), *v15 <= v16) || (v17 = *(*(v15 + 8) + 48 * v16 + 8)) == 0 || (v18 = *(v17 + 3)) == 0 || (v19 = *v17, *(v15 + 4) <= v19))
  {
LABEL_20:
    *a4 = 0;
    dispatch_release(v14);
    result = 0;
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (*(*(v15 + 16) + 40 * v19 + 16) >= 2u)
  {
    *&buf[4] = 0;
    v26 = &v24;
    *buf = v16;
    v20 = mav_mux_encode(buf);
    v14 = v24;
    if (v20)
    {
      goto LABEL_20;
    }

    v18 = *(v17 + 3);
    v19 = *v17;
  }

  if (v18(v15, v19, v14, *(v17 + 4)))
  {
    v14 = v24;
    goto LABEL_20;
  }

  *a4 = a3;
  result = 1;
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = result;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    result = v22;
  }

LABEL_24:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mav_router::service::transport_shim_private::read_func(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int a6)
{
  v6 = *(a1 + 80);
  if (!v6)
  {
    return 0;
  }

  *a4 = 0;
  v13 = *v6;
  v12 = v6[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 1000000 * a6;
  while (2)
  {
    if (a6 == -1)
    {
      while (1)
      {
        if (dispatch_group_wait(*(v13 + 48), 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_41;
        }

        os_unfair_lock_lock((v13 + 44));
        if (*(v13 + 96))
        {
          break;
        }

        os_unfair_lock_unlock((v13 + 44));
      }

LABEL_12:
      v31 = a5;
      v16 = *(*(*(v13 + 64) + ((*(v13 + 88) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v13 + 88) & 0x1FFLL));
      size = dispatch_data_get_size(v16);
      if (a3 >= size)
      {
        v18 = size;
      }

      else
      {
        v18 = a3;
      }

      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2000000000;
      v37[3] = a2;
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2000000000;
      v36 = -1431655766;
      v19 = dispatch_data_get_size(v16);
      v32 = 0;
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      if (v18 == -1)
      {
        v20 = v19;
      }

      v36 = v20;
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 1107296256;
      applier[2] = ___ZL19mav_buffer_copy_rawPvS_jjPj_block_invoke;
      applier[3] = &__block_descriptor_tmp_2;
      v34 = 0;
      applier[4] = v35;
      applier[5] = v37;
      applier[6] = &v32;
      v21 = dispatch_data_apply(v16, applier);
      _Block_object_dispose(v35, 8);
      _Block_object_dispose(v37, 8);
      if (!v21 || v32 != v18)
      {
        *a4 += v18;
        if (v16)
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      v23 = dispatch_data_get_size(v16);
      if (v23 >= v18)
      {
        if (v23 == v18)
        {
          v24 = 0;
LABEL_31:
          dispatch_release(v16);
          v16 = v24;
          goto LABEL_32;
        }

        subrange = dispatch_data_create_subrange(v16, v18, v23 - v18);
        v24 = subrange;
        if (subrange)
        {
          goto LABEL_31;
        }
      }

LABEL_32:
      *a4 += v18;
      if (v16)
      {
        goto LABEL_38;
      }

LABEL_33:
      v26 = *(v13 + 64);
      v27 = vaddq_s64(*(v13 + 88), xmmword_2990E5660);
      *(v13 + 88) = v27;
      if (v27.i64[0] >= 0x400uLL)
      {
        operator delete(*v26);
        *(v13 + 64) += 8;
        v28 = *(v13 + 96);
        *(v13 + 88) -= 512;
        if (!v28)
        {
LABEL_37:
          dispatch_group_enter(*(v13 + 48));
        }
      }

      else if (!v27.i64[1])
      {
        goto LABEL_37;
      }

LABEL_38:
      os_unfair_lock_unlock((v13 + 44));
      result = 1;
      a5 = v31;
      if (v31)
      {
        a2 += v18;
        a3 -= v18;
        if (a3)
        {
          continue;
        }

        goto LABEL_42;
      }

      if (v12)
      {
        goto LABEL_43;
      }

      return result;
    }

    break;
  }

  while (1)
  {
    v15 = dispatch_time(0, v14);
    if (dispatch_group_wait(*(v13 + 48), v15))
    {
      break;
    }

    os_unfair_lock_lock((v13 + 44));
    if (*(v13 + 96))
    {
      goto LABEL_12;
    }

    os_unfair_lock_unlock((v13 + 44));
  }

LABEL_41:
  result = 0;
LABEL_42:
  if (v12)
  {
LABEL_43:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v30 = result;
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      return v30;
    }
  }

  return result;
}

BOOL mav_router::service::transport_shim_private::unblock_read_func(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return v1 != 0;
  }

  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((v3 + 44));
  v4 = *(v3 + 96);
  if (v4)
  {
    do
    {
      v6 = *(v3 + 64);
      v7 = (*(v6 + ((*(v3 + 88) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(v3 + 88) & 0x1FFLL];
      v8 = *(v3 + 88) + 1;
      *(v3 + 88) = v8;
      *(v3 + 96) = v4 - 1;
      if (v8 >= 0x400)
      {
        operator delete(*v6);
        *(v3 + 64) += 8;
        *(v3 + 88) -= 512;
      }

      dispatch_release(v7);
      v4 = *(v3 + 96);
    }

    while (v4);
    dispatch_group_enter(*(v3 + 48));
    *(v3 + 104) = 0;
    os_unfair_lock_unlock((v3 + 44));
    if (!v2)
    {
      return v1 != 0;
    }
  }

  else
  {
    *(v3 + 104) = 0;
    os_unfair_lock_unlock((v3 + 44));
    if (!v2)
    {
      return v1 != 0;
    }
  }

  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v1 != 0;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return v1 != 0;
}

uint64_t mav_router::service::transport_shim_private::flush_read_func(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 1;
  }

  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((v3 + 44));
  v4 = *(v3 + 96);
  if (!v4)
  {
    os_unfair_lock_unlock((v3 + 44));
    if (!v2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  do
  {
    v5 = *(v3 + 64);
    v6 = (*(v5 + ((*(v3 + 88) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(v3 + 88) & 0x1FFLL];
    v7 = *(v3 + 88) + 1;
    *(v3 + 88) = v7;
    *(v3 + 96) = v4 - 1;
    if (v7 >= 0x400)
    {
      operator delete(*v5);
      *(v3 + 64) += 8;
      *(v3 + 88) -= 512;
    }

    dispatch_release(v6);
    v4 = *(v3 + 96);
  }

  while (v4);
  dispatch_group_enter(*(v3 + 48));
  os_unfair_lock_unlock((v3 + 44));
  if (v2)
  {
LABEL_11:
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

  return 1;
}

uint64_t mav_router::service::transport_shim_private::free_func(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    return 1;
  }

  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = v2[1];
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v2 = v6;
      }
    }

    operator delete(v2);
    os_unfair_lock_lock(v4 + 11);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    os_unfair_lock_unlock(v4 + 11);
    if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return 1;
    }

    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return 1;
  }

  else
  {
    operator delete(v2);
    os_unfair_lock_lock(v4 + 11);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    os_unfair_lock_unlock(v4 + 11);
    return 1;
  }
}

uint64_t ___ZL19mav_buffer_copy_rawPvS_jjPj_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 56) - a3;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    v7 = v5 < a5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (v6 >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = v6;
  }

  memcpy(*(*(*(a1 + 40) + 8) + 24), (a4 + (v5 & ~(v5 >> 31))), v9);
  *(*(*(a1 + 32) + 8) + 24) -= v9;
  v11 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v9;
  *v11 += v9;
  return 1;
}

uint64_t mav_router::service::transport_shim_private::handle_receive(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t *a4)
{
  v86 = *MEMORY[0x29EDCA608];
  v5 = a4[1];
  if (!v5)
  {
    v75 = 0;
    goto LABEL_12;
  }

  v6 = *a4;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v75 = std::__shared_weak_count::lock(v5);
  if (!v75 || !v6)
  {
LABEL_12:
    dispatch_release(a3);
    v13 = v75;
    if (!v75)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  os_unfair_lock_lock((v6 + 44));
  if (*(v6 + 104) == 1)
  {
    v8 = *(v6 + 64);
    v7 = *(v6 + 72);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = ((v7 - v8) << 6) - 1;
    }

    v11 = *(v6 + 88);
    v12 = v11 + *(v6 + 96);
    v74 = *(v6 + 96);
    if (v10 != v12)
    {
      v14 = *(v6 + 96);
      goto LABEL_72;
    }

    if (v11 >= 0x200)
    {
      *(v6 + 88) = v11 - 512;
      applier = *v8;
      *(v6 + 64) = v8 + 8;
      std::__split_buffer<void **>::emplace_back<void **&>((v6 + 56), &applier);
LABEL_71:
      v8 = *(v6 + 64);
      v14 = *(v6 + 96);
      v12 = *(v6 + 88) + v14;
LABEL_72:
      *(*&v8[(v12 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v12 & 0x1FF)) = a3;
      *(v6 + 96) = v14 + 1;
      applier = MEMORY[0x29EDCA5F8];
      v81 = 0x40000000;
      *&v82 = ____mav_log_platform_os_log_handle_block_invoke;
      *(&v82 + 1) = &__block_descriptor_tmp_0;
      LODWORD(v83) = 2;
      if (qword_2A18B79E0 == -1)
      {
        if (os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_74;
        }
      }

      else
      {
        dispatch_once(&qword_2A18B79E0, &applier);
        if (os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_DEBUG))
        {
LABEL_74:
          size = dispatch_data_get_size(a3);
          v67 = size;
          if (size)
          {
            v68 = operator new(size);
            v73 = v68 + v67;
            bzero(v68, v67);
          }

          else
          {
            v68 = 0;
            v73 = 0;
          }

          v79[0] = 0;
          v79[1] = v79;
          v79[2] = 0x2000000000;
          v79[3] = v68;
          v77[0] = 0;
          v77[1] = v77;
          v77[2] = 0x2000000000;
          v78 = -1431655766;
          v76 = 0;
          v78 = dispatch_data_get_size(a3);
          applier = MEMORY[0x29EDCA5F8];
          v81 = 1107296256;
          *&v82 = ___ZL19mav_buffer_copy_rawPvS_jjPj_block_invoke;
          *(&v82 + 1) = &__block_descriptor_tmp_2;
          *&v84[8] = 0;
          *&v83 = v77;
          *(&v83 + 1) = v79;
          *v84 = &v76;
          dispatch_data_apply(a3, &applier);
          _Block_object_dispose(v77, 8);
          _Block_object_dispose(v79, 8);
          applier = MEMORY[0x29EDCA5F8];
          v81 = 0x40000000;
          *&v82 = ____mav_log_platform_os_log_handle_block_invoke;
          *(&v82 + 1) = &__block_descriptor_tmp_0;
          LODWORD(v83) = 2;
          if (qword_2A18B79E0 == -1)
          {
            v69 = qword_2A18B79C0;
            if (!os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_80;
            }
          }

          else
          {
            dispatch_once(&qword_2A18B79E0, &applier);
            v69 = qword_2A18B79C0;
            if (!os_log_type_enabled(qword_2A18B79C0, OS_LOG_TYPE_DEBUG))
            {
LABEL_80:
              if (v68)
              {
                operator delete(v68);
              }

              goto LABEL_82;
            }
          }

          applier = 0x204000902;
          v81 = 0x400000000030400;
          LODWORD(v82) = 0;
          WORD2(v82) = 2080;
          *(&v82 + 6) = "static void mav_router::service::transport_shim_private::log_received(mav_buffer_t)";
          HIWORD(v82) = 1024;
          LODWORD(v83) = 91;
          WORD2(v83) = 2080;
          *(&v83 + 6) = "";
          HIWORD(v83) = 1024;
          *v84 = v73 - v68;
          *&v84[4] = 1040;
          *&v84[6] = v73 - v68;
          *&v84[10] = 2096;
          v85 = v68;
          _os_log_impl(&dword_2990D9000, v69, OS_LOG_TYPE_DEBUG, "[%04x.%04u.%04u] %s:%u:%s (%u bytes): %.*P", &applier, 0x44u);
          goto LABEL_80;
        }
      }

LABEL_82:
      if (!v74)
      {
        dispatch_group_leave(*(v6 + 48));
      }

      goto LABEL_84;
    }

    v15 = *(v6 + 80);
    v16 = *(v6 + 56);
    if (v9 < (v15 - v16))
    {
      v17 = operator new(0x1000uLL);
      if (v15 != v7)
      {
        *v7 = v17;
        *(v6 + 72) += 8;
        goto LABEL_71;
      }

      if (v8 != v16)
      {
        v23 = v8;
LABEL_70:
        *(v23 - 1) = v17;
        v65 = *(v6 + 64);
        *(v6 + 64) = v65 - 8;
        applier = *(v65 - 8);
        *(v6 + 64) = v65;
        std::__split_buffer<void **>::emplace_back<void **&>((v6 + 56), &applier);
        goto LABEL_71;
      }

      if (v7 == v8)
      {
        v49 = 1;
      }

      else
      {
        v49 = (v15 - v8) >> 2;
      }

      if (!(v49 >> 61))
      {
        v50 = v17;
        v51 = operator new(8 * v49);
        v17 = v50;
        v52 = (v49 + 3) >> 2;
        v23 = &v51[8 * v52];
        v53 = v23;
        if (v7 != v8)
        {
          v53 = &v23[v9];
          v54 = v7 - v8 - 8;
          v55 = &v51[8 * v52];
          v56 = v8;
          if (v54 < 0x38)
          {
            goto LABEL_99;
          }

          v57 = &v51[8 * v52];
          v55 = v57;
          v56 = v8;
          if ((v57 - v8) < 0x20)
          {
            goto LABEL_99;
          }

          v58 = (v54 >> 3) + 1;
          v59 = 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
          v55 = &v23[v59];
          v56 = &v8[v59];
          v60 = (v8 + 16);
          v61 = v57 + 16;
          v62 = v58 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v63 = *v60;
            *(v61 - 1) = *(v60 - 1);
            *v61 = v63;
            v60 += 2;
            v61 += 2;
            v62 -= 4;
          }

          while (v62);
          if (v58 != (v58 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_99:
            do
            {
              v64 = *v56;
              v56 += 8;
              *v55 = v64;
              v55 += 8;
            }

            while (v55 != v53);
          }
        }

        *(v6 + 56) = v51;
        *(v6 + 64) = v23;
        *(v6 + 72) = v53;
        *(v6 + 80) = &v51[8 * v49];
        if (v8)
        {
          operator delete(v16);
          v17 = v50;
          v23 = *(v6 + 64);
        }

        goto LABEL_70;
      }

LABEL_95:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = (v15 - v16) >> 2;
    if (v15 == v16)
    {
      v18 = 1;
    }

    if (v18 >> 61)
    {
      goto LABEL_95;
    }

    v19 = 8 * v18;
    v20 = operator new(8 * v18);
    v21 = operator new(0x1000uLL);
    v22 = &v20[v9];
    v72 = &v20[v19];
    if (v9 == v19)
    {
      if (v9 < 1)
      {
        if (v7 == v8)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 >> 2;
        }

        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v24);
        v72 = &v22[8 * v24];
        operator delete(v20);
        v8 = *(v6 + 64);
        v7 = *(v6 + 72);
        v20 = v22;
      }

      else
      {
        v22 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    *v22 = v21;
    v25 = v22 + 8;
    if (v7 == v8)
    {
      v29 = v22;
      v26 = v72;
LABEL_55:
      v48 = *(v6 + 56);
      *(v6 + 56) = v20;
      *(v6 + 64) = v29;
      *(v6 + 72) = v25;
      *(v6 + 80) = v26;
      if (v48)
      {
        operator delete(v48);
      }

      goto LABEL_71;
    }

    v26 = v72;
    while (v22 != v20)
    {
      v27 = v22;
LABEL_35:
      v28 = *(v7 - 1);
      v7 -= 8;
      *(v27 - 1) = v28;
      v29 = v27 - 8;
      v22 = v29;
      if (v7 == *(v6 + 64))
      {
        goto LABEL_55;
      }
    }

    if (v25 < v26)
    {
      v27 = &v20[8 * ((((v26 - v25) >> 3) + 1 + ((((v26 - v25) >> 3) + 1) >> 63)) >> 1)];
      v31 = v25 - v20;
      v30 = v25 == v20;
      v25 += 8 * ((((v26 - v25) >> 3) + 1 + ((((v26 - v25) >> 3) + 1) >> 63)) >> 1);
      if (!v30)
      {
        memmove(v27, v22, v31);
      }

      goto LABEL_35;
    }

    if (v26 == v20)
    {
      v32 = 1;
    }

    else
    {
      v32 = (v26 - v20) >> 2;
    }

    if (v32 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = operator new(8 * v32);
    v34 = v33;
    v35 = (v32 + 3) >> 2;
    v27 = &v33[8 * v35];
    v36 = v25 - v20;
    v30 = v25 == v20;
    v25 = v27;
    if (!v30)
    {
      v25 = &v27[v36];
      v37 = v36 - 8;
      if (v37 >= 0x18 && (v38 = 8 * v35, (&v33[8 * v35] - v22) >= 0x20))
      {
        v42 = (v37 >> 3) + 1;
        v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
        v39 = &v27[v43];
        v40 = &v22[v43];
        v44 = (v22 + 16);
        v45 = &v33[v38 + 16];
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *v44;
          *(v45 - 1) = *(v44 - 1);
          *v45 = v47;
          v44 += 2;
          v45 += 32;
          v46 -= 4;
        }

        while (v46);
        if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v39 = &v33[8 * v35];
        v40 = v22;
      }

      do
      {
        v41 = *v40;
        v40 += 8;
        *v39 = v41;
        v39 += 8;
      }

      while (v39 != v25);
    }

LABEL_49:
    v26 = &v33[8 * v32];
    operator delete(v20);
    v20 = v34;
    goto LABEL_35;
  }

  dispatch_release(a3);
LABEL_84:
  os_unfair_lock_unlock((v6 + 44));
  v13 = v75;
LABEL_85:
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_87:
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v70 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2990E1994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  operator delete(v14);
  operator delete(v13);
  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](&a12);
  std::__shared_weak_count::__release_weak(v12);
  _Unwind_Resume(a1);
}

void std::__split_buffer<void **>::emplace_back<void **&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = &v8[v9];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] += 8;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__shared_ptr_pointer<mav_router::service::transport_shim_private *,std::shared_ptr<mav_router::service::transport_shim_private>::__shared_ptr_default_delete<mav_router::service::transport_shim_private,mav_router::service::transport_shim_private>,std::allocator<mav_router::service::transport_shim_private>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<mav_router::service::transport_shim_private *,std::shared_ptr<mav_router::service::transport_shim_private>::__shared_ptr_default_delete<mav_router::service::transport_shim_private,mav_router::service::transport_shim_private>,std::allocator<mav_router::service::transport_shim_private>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mav_router::service::transport_shim_private *,std::shared_ptr<mav_router::service::transport_shim_private>::__shared_ptr_default_delete<mav_router::service::transport_shim_private,mav_router::service::transport_shim_private>,std::allocator<mav_router::service::transport_shim_private>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002990E57B5)
  {
    if (((v2 & 0x80000002990E57B5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002990E57B5))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002990E57B5 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mav_router_service_register_receive(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a1 && a3 && *a1 > a2)
  {
    result = 0;
    v6 = *(a1 + 8) + 48 * a2;
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
  }

  return result;
}

uint64_t mav_router_service_unregister_receive(uint64_t a1, unsigned int a2, void *a3)
{
  result = 1;
  if (a1 && a3 && *a1 > a2)
  {
    result = 0;
    v5 = *(a1 + 8) + 48 * a2;
    *(v5 + 16) = 0;
    *a3 = *(v5 + 24);
  }

  return result;
}

uint64_t mav_router_service_register_error_handler(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a1 && a3 && *a1 > a2)
  {
    result = 0;
    v6 = *(a1 + 8) + 48 * a2;
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
  }

  return result;
}

uint64_t mav_router_service_unregister_error_handler(uint64_t a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    return 1;
  }

  result = 0;
  v4 = *(a1 + 8) + 48 * a2;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  return result;
}

uint64_t mav_router_init_context(unsigned int *a1)
{
  bzero(*(a1 + 1), 48 * *a1);
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 1);
    if (v2 == 1)
    {
      v4 = 0;
LABEL_7:
      v7 = (v3 + 48 * v4);
      do
      {
        *v7 = v4;
        v7 += 12;
        ++v4;
      }

      while (v2 != v4);
      goto LABEL_9;
    }

    v5 = 0;
    v4 = v2 & 0xFFFFFFFE;
    v6 = *(a1 + 1);
    do
    {
      *v6 = v5;
      v6[12] = v5 + 1;
      v5 += 2;
      v6 += 24;
    }

    while (v4 != v5);
    if (v4 != v2)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  bzero(*(a1 + 2), 40 * a1[1]);
  v8 = a1[1];
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 2);
  if (v8 == 1)
  {
    v10 = 0;
LABEL_15:
    v13 = (v9 + 40 * v10);
    do
    {
      *v13 = v10;
      v13 += 10;
      ++v10;
    }

    while (v8 != v10);
    return 0;
  }

  v11 = 0;
  v10 = v8 & 0xFFFFFFFE;
  v12 = *(a1 + 2);
  do
  {
    *v12 = v11;
    v12[10] = v11 + 1;
    v11 += 2;
    v12 += 20;
  }

  while (v10 != v11);
  if (v10 != v8)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t mav_router_route(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1 || *a1 <= a2 || *(a1 + 4) <= a3)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + 40 * a3;
  *(v3 + 48 * a2 + 8) = v4;
  v5 = *(v4 + 16);
  *(v4 + 16) = v5 + 1;
  result = 0;
  if (!v5)
  {
    *(v4 + 8) = v3 + 48 * a2;
  }

  return result;
}

uint64_t mav_router_unroute(unsigned int *a1, unsigned int a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *a1;
  if (v2 <= a2)
  {
    return 1;
  }

  v3 = *(a1 + 1);
  v4 = v3 + 48 * a2;
  v7 = *(v4 + 8);
  v5 = (v4 + 8);
  v6 = v7;
  if (!v7)
  {
    return 3;
  }

  v8 = *(v6 + 16);
  *(v6 + 16) = v8 - 1;
  if (v8 == 1)
  {
    result = 0;
    *(v6 + 8) = 0;
    *v5 = 0;
  }

  else if (v8 == 2)
  {
    while (1)
    {
      v9 = *(v3 + 8);
      if (v9 == v6)
      {
        break;
      }

      v3 += 48;
      if (!--v2)
      {
        result = v9 != v6;
        *v5 = 0;
        return result;
      }
    }

    *(v6 + 8) = v3;
    result = 0;
    *v5 = 0;
  }

  else
  {
    result = 0;
    *v5 = 0;
  }

  return result;
}

uint64_t mav_router_unroute_all(unsigned int *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *a1;
  if (v1)
  {
    v2 = 0;
    v3 = *(a1 + 1);
    do
    {
      v4 = v3 + 48 * v2;
      v7 = *(v4 + 8);
      v5 = (v4 + 8);
      v6 = v7;
      if (v7)
      {
        v8 = *(v6 + 16);
        *(v6 + 16) = v8 - 1;
        if (v8 == 1)
        {
          *(v6 + 8) = 0;
        }

        else
        {
          v9 = v1;
          v10 = v3;
          if (v8 == 2)
          {
            while (*(v10 + 8) != v6)
            {
              v10 += 48;
              if (!--v9)
              {
                *v5 = 0;
                return 1;
              }
            }

            *(v6 + 8) = v10;
          }
        }

        *v5 = 0;
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return 0;
}

uint64_t mav_router_swap(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 <= a2 || *a1 <= a3)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = v4 + 48 * a2;
  v8 = *(v5 + 8);
  v6 = (v5 + 8);
  v7 = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = v4 + 48 * a3;
  v10 = *(v9 + 8);
  if (!v10)
  {
    return 1;
  }

  result = 0;
  *(v9 + 8) = v7;
  *v6 = v10;
  *(v10 + 8) = v4 + 48 * a2;
  *(*(v9 + 8) + 8) = v4 + 48 * a3;
  return result;
}

void mav_router_t::create(__int128 *a1@<X0>, std::__shared_weak_count **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x68uLL);
  v25 = *a1;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    __p = *(a1 + 1);
  }

  v5 = *(a1 + 5);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v28 = *(a1 + 6);
  v29 = *(a1 + 14);
  *v4 = 0;
  *(v4 + 1) = 0;
  v6 = operator new(0x18uLL);
  *(v4 + 3) = 0;
  *(v4 + 2) = v6;
  *(v4 + 4) = 0;
  *(v4 + 40) = v25;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 56), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v4 + 56) = __p;
  }

  v7 = object;
  *(v4 + 10) = object;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(v4 + 11) = v28;
  *(v4 + 24) = v29;
  v8 = HIDWORD(v28);
  v9 = *(v4 + 2);
  *v9 = HIDWORD(v28);
  v10 = v29;
  *(v9 + 4) = v29;
  *(v9 + 8) = operator new[](48 * v8);
  *(v9 + 16) = operator new[](40 * v10);
  *a2 = v4;
  v11 = operator new(0x20uLL);
  v11[1] = 0;
  v12 = v11 + 1;
  *v11 = &unk_2A1F2EA68;
  v11[2] = 0;
  v11[3] = v4;
  a2[1] = v11;
  v24[0] = 0;
  v13 = *(v4 + 1);
  if (!v13)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    *v4 = v4;
    *(v4 + 1) = v11;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v13->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    *v4 = v4;
    *(v4 + 1) = v11;
    v14 = v11;
    std::__shared_weak_count::__release_weak(v13);
    v11 = v14;
    if (!atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_16:
      v15 = v11;
      (*(*v11 + 16))();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_17:
  if (v24[0])
  {
    mav_router_t::~mav_router_t(v24[0]);
    operator delete(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *a2;
  v17 = a2[1];
  v22 = *a2;
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::controller::create(&v22, v24);
  v19 = *v24;
  v24[0] = 0;
  v24[1] = 0;
  shared_owners = v18[1].__shared_owners_;
  v18[1].std::__shared_count = v19;
  if (shared_owners && !atomic_fetch_add(&shared_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (shared_owners->__on_zero_shared)(shared_owners);
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  v21 = v24[1];
  if (v24[1] && !atomic_fetch_add(v24[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_2990E23B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](v6);
  v8 = v5[1];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  mav_router_parameters_t::~mav_router_parameters_t(va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void mav_router_parameters_t::~mav_router_parameters_t(mav_router_parameters_t *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void mav_router_t::create(void *a1@<X0>, uint64_t a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  *(a2 + 52) = *a1;
  v6 = *a2;
  if ((*(a2 + 39) & 0x80000000) == 0)
  {
    *&__p.__r_.__value_.__l.__data_ = *(a2 + 16);
    v5 = *(a2 + 40);
    __p.__r_.__value_.__r.__words[2] = *(a2 + 32);
    object = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  v5 = *(a2 + 40);
  object = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  mav_router_t::create(&v6, a3);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mav_router_t::create(void *a1@<X0>, int a2@<W1>, std::__shared_weak_count **a3@<X8>)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0x38uLL);
  v14 = v7;
  v15 = xmmword_2990E5820;
  strcpy(v7, "/var/wireless/Library/Logs/CoreTelephonyTraceScratch");
  v16 = 0;
  *&v17 = 0xB00000019;
  DWORD2(v17) = 17;
  LODWORD(v13) = a2;
  v8 = v13;
  std::string::__init_copy_ctor_external(&__p, v7, 0x34uLL);
  object = 0;
  v11 = v17;
  v12 = DWORD2(v17);
  mav_router_t::create(a1, &v8, a3);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator delete(v7);
}

void sub_2990E269C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  mav_router_parameters_t::~mav_router_parameters_t(&a9);
  mav_router_parameters_t::~mav_router_parameters_t(&a17);
  _Unwind_Resume(a1);
}

void sub_2990E26B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mav_router_parameters_t::~mav_router_parameters_t(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<mav_router_t *,std::shared_ptr<mav_router_t>::__shared_ptr_default_delete<mav_router_t,mav_router_t>,std::allocator<mav_router_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mav_router_t *,std::shared_ptr<mav_router_t>::__shared_ptr_default_delete<mav_router_t,mav_router_t>,std::allocator<mav_router_t>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    mav_router_t::~mav_router_t(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<mav_router_t *,std::shared_ptr<mav_router_t>::__shared_ptr_default_delete<mav_router_t,mav_router_t>,std::allocator<mav_router_t>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002990E58B5)
  {
    if (((v2 & 0x80000002990E58B5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002990E58B5))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002990E58B5 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void mav_router_t::~mav_router_t(mav_router_t *this)
{
  v2 = *(this + 2);
  if (v2[1])
  {
    operator delete[](v2[1]);
    v2 = *(this + 2);
  }

  v2[1] = 0;
  if (v2[2])
  {
    operator delete[](v2[2]);
    v2 = *(this + 2);
  }

  operator delete(v2);
  *(this + 2) = 0;
  v3 = *(this + 10);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v4 = *(this + 4);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

mav_router_t **std::unique_ptr<mav_router_t>::~unique_ptr[abi:ne200100](mav_router_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    mav_router_t::~mav_router_t(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void mav_router_ios_preferences::mav_router_ios_preferences(mav_router_ios_preferences *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1F2EAB8;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1F2EAB8;
}

uint64_t mav_router_ios_preferences::should_use_qmi_over_pci(capabilities::ipc *a1, int a2)
{
  if ((a2 - 3) >= 2)
  {
    return capabilities::ipc::supportsPCI(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mav_router_ios_preferences::get_max_pci_read_params(mav_router_ios_preferences *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 6144;
  *a3 = 8;
  return 1;
}

void mav_router_ios_preferences::~mav_router_ios_preferences(mav_router_ios_preferences *this)
{
  *this = &unk_2A1F2EAB8;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1F2EAB8;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void mav_router::device::null_shim::~null_shim(std::__shared_weak_count **this)
{
  *this = &unk_2A1F2E758;
  if (this[2])
  {
    std::__shared_weak_count::__release_weak(this[2]);
  }
}

{
  *this = &unk_2A1F2E758;
  if (this[2])
  {
    v2 = this;
    std::__shared_weak_count::__release_weak(this[2]);
    this = v2;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t mav_mux_init_paramameters(int a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  result = 0;
  *a3 = 0;
  a3[1] = a2;
  *a3 = a1;
  return result;
}

uint64_t mav_mux_encode(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  buffer[0] = -16657;
  buffer[1] = *a1;
  v2 = *(a1 + 8);
  LOWORD(v16) = dispatch_data_get_size(*v2);
  v16 = v16;
  v14 = -91;
  global_queue = dispatch_get_global_queue(0, 0);
  v4 = dispatch_data_create(buffer, 8uLL, global_queue, 0);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  concat = dispatch_data_create_concat(v4, *v2);
  if (!concat)
  {
LABEL_9:
    v12 = 2;
    goto LABEL_10;
  }

  v7 = concat;
  dispatch_release(*v2);
  *v2 = v7;
  dispatch_release(v5);
  v8 = *(a1 + 8);
  v9 = dispatch_data_create(&v14, 1uLL, global_queue, 0);
  if (!v9)
  {
    return 2;
  }

  v5 = v9;
  v10 = dispatch_data_create_concat(*v8, v9);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  dispatch_release(*v8);
  v12 = 0;
  *v8 = v11;
LABEL_10:
  dispatch_release(v5);
  return v12;
}

uint64_t mav_mux_decode(dispatch_data_t *a1, uint64_t a2)
{
  v28 = 0;
  v27 = 0;
  result = 1;
  if (!a1 || !a2)
  {
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *a1;
  if ((dispatch_data_get_size(*a1) & 0xFFFFFFF8) == 0)
  {
    return 3;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = &v28;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = -1431655766;
  size = dispatch_data_get_size(v5);
  v29 = 0;
  v7 = size >= 8 ? 8 : size;
  v41 = v7;
  applier = MEMORY[0x29EDCA5F8];
  v31 = 1107296256;
  v32 = __mav_buffer_copy_raw_block_invoke;
  v33 = &__block_descriptor_tmp_3;
  v37 = 0;
  v34 = &v38;
  v35 = &v42;
  v36 = &v29;
  v8 = dispatch_data_apply(v5, &applier);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  v9 = v29 == 8 ? 0 : 102;
  if (v8)
  {
    if (v29 == 8)
    {
      v10 = *a1;
      v11 = dispatch_data_get_size(*a1);
      if (v11 < 8)
      {
        return 3;
      }

      if (v11 == 8)
      {
        v13 = 0;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v10, 8uLL, v11 - 8);
        if (!subrange)
        {
          return 3;
        }

        v13 = subrange;
        v10 = *a1;
      }

      dispatch_release(v10);
      v9 = 0;
      *a1 = v13;
    }
  }

  else
  {
    v9 = 103;
  }

  result = 3;
  if (v9)
  {
    return result;
  }

  if (v28 != 48879)
  {
    return result;
  }

  v14 = *a1;
  if (!*a1)
  {
    return result;
  }

  v15 = dispatch_data_get_size(*a1);
  v16 = v15;
  if (v15 < 2)
  {
    return 3;
  }

  v17 = v15 - 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = &v27;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = -1431655766;
  v18 = dispatch_data_get_size(v14);
  v29 = 0;
  v19 = 102;
  v20 = v18 - v17;
  if (v18 >= v17)
  {
    if (v16 <= v18)
    {
      v20 = 1;
    }

    v41 = v20;
    applier = MEMORY[0x29EDCA5F8];
    v31 = 1107296256;
    v32 = __mav_buffer_copy_raw_block_invoke;
    v33 = &__block_descriptor_tmp_3;
    v37 = v17;
    v34 = &v38;
    v35 = &v42;
    v36 = &v29;
    if (dispatch_data_apply(v14, &applier))
    {
      v19 = 0;
    }

    else
    {
      v19 = 103;
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  if (v29 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 102;
  }

  if (!v19)
  {
    if (v29 != 1)
    {
      goto LABEL_38;
    }

    v22 = *a1;
    v23 = dispatch_data_get_size(*a1);
    if ((v23 & 0xFFFFFFFE) != 0)
    {
      v24 = dispatch_data_create_subrange(v22, 0, (v23 - 1));
      if (v24)
      {
        v25 = v24;
        dispatch_release(*a1);
        v21 = 0;
        *a1 = v25;
        goto LABEL_38;
      }
    }

    return 3;
  }

  v21 = v19;
LABEL_38:
  result = 3;
  if (!v21 && v27 == 165)
  {
    v26 = dispatch_data_get_size(*a1);
    if (HIDWORD(v28) == v26)
    {
      result = 0;
      *a2 = WORD1(v28);
      *(a2 + 8) = a1;
      return result;
    }

    return 3;
  }

  return result;
}

uint64_t __mav_buffer_copy_raw_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 56) - a3;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    v7 = v5 < a5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (v6 >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = v6;
  }

  memcpy(*(*(*(a1 + 40) + 8) + 24), (a4 + (v5 & ~(v5 >> 31))), v9);
  *(*(*(a1 + 32) + 8) + 24) -= v9;
  v11 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v9;
  *v11 += v9;
  return 1;
}

void __copy_helper_block_8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t __mav_log_platform_os_log_handle(int a1)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ____mav_log_platform_os_log_handle_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a1;
  if (__mav_log_platform_os_log_handle::once[a1] != -1)
  {
    v2 = a1;
    dispatch_once(&__mav_log_platform_os_log_handle::once[a1], block);
    a1 = v2;
  }

  return __mav_log_platform_os_log_handle::logger[a1];
}

os_log_t ____mav_log_platform_os_log_handle_block_invoke(uint64_t a1)
{
  result = os_log_create("com.apple.telephony.ipc", kRouterLogCategory[*(a1 + 32)]);
  __mav_log_platform_os_log_handle::logger[*(a1 + 32)] = result;
  return result;
}

uint64_t mav_router::device::controller_ios::controller_ios(uint64_t a1, std::__shared_weak_count **a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v44[0] = *a2;
  v44[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  mav_router::device::controller::controller(a1, v44);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *a1 = &unk_2A1F2EBC0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  v42 = 0;
  v43 = 0;
  v5 = *(a1 + 40);
  if (v5 && (v43 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v6 = *(a1 + 32);
    v42 = v6;
  }

  else
  {
    v6 = 0;
  }

  mav_router::device::controller_ios::determine_mappings(a1);
  v7 = pthread_once(&ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::getInstance(void)::sOnce, ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init);
  if ((*(v6 + 40) - 3) >= 2 && capabilities::ipc::supportsPCI(v7))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = __p;
    v38[0] = 0xAAAAAAAAAAAAAAAALL;
    *__p = 0u;
    v40 = 0u;
    v41 = v8;
    v38[1] = 20;
    if (__p != (v6 + 56))
    {
      if (*(v6 + 79) < 0)
      {
        v9 = std::string::__assign_no_alias<true>(__p, *(v6 + 56), *(v6 + 64));
      }

      else
      {
        *__p = *(v6 + 56);
        *&v40 = *(v6 + 72);
      }
    }

    v10 = *(v6 + 80);
    *(&v40 + 1) = *(v6 + 48);
    *&v41 = v10;
    DWORD2(v41) = *(v6 + 88);
    v35 = capabilities::pci::controlChannelCount(v9);
    *buf = MEMORY[0x29EDCA5F8];
    v46 = 0x40000000;
    *&v47 = ____mav_log_platform_os_log_handle_block_invoke;
    *(&v47 + 1) = &__block_descriptor_tmp_0;
    v48 = 0;
    if (__mav_log_platform_os_log_handle::once != -1)
    {
      dispatch_once(&__mav_log_platform_os_log_handle::once, buf);
    }

    v11 = __mav_log_platform_os_log_handle::logger[0];
    if (os_log_type_enabled(__mav_log_platform_os_log_handle::logger[0], OS_LOG_TYPE_INFO))
    {
      *buf = 67110402;
      *&buf[4] = 0;
      v46 = 0x400000000010400;
      LODWORD(v47) = 0;
      WORD2(v47) = 2080;
      *(&v47 + 6) = "mav_router::device::controller_ios::controller_ios(mav_router_weak_ptr_t)";
      HIWORD(v47) = 1024;
      v48 = 38;
      v49 = 1024;
      v50 = v35;
      _os_log_impl(&dword_2990D9000, v11, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:PCI supported with %u control channels", buf, 0x2Au);
    }

    if (v35)
    {
      v12 = 0;
      v13 = MEMORY[0x29EDCA5F8];
      while (1)
      {
        *buf = v13;
        v46 = 0x40000000;
        *&v47 = ____mav_log_platform_os_log_handle_block_invoke;
        *(&v47 + 1) = &__block_descriptor_tmp_0;
        v48 = 0;
        if (__mav_log_platform_os_log_handle::once == -1)
        {
          break;
        }

        dispatch_once(&__mav_log_platform_os_log_handle::once, buf);
        v14 = __mav_log_platform_os_log_handle::logger[0];
        if (os_log_type_enabled(__mav_log_platform_os_log_handle::logger[0], OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }

LABEL_25:
        LODWORD(v38[0]) = v12;
        v15 = operator new(0xE0uLL);
        v16 = v15;
        v17 = a2[1];
        v36 = *a2;
        v37 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        mav_router::device::pci_shim::pci_shim(v15, &v36, v12 + 13, v38);
        *buf = v16;
        v18 = operator new(0x20uLL);
        v18->__shared_owners_ = 0;
        p_shared_owners = &v18->__shared_owners_;
        v18->__vftable = &unk_2A1F2EC78;
        v18->__shared_weak_owners_ = 0;
        v18[1].__vftable = v16;
        v46 = v18;
        v20 = *(v16 + 5);
        if (v20)
        {
          if (v20->__shared_owners_ != -1)
          {
            goto LABEL_33;
          }

          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *(v16 + 4) = v16;
          *(v16 + 5) = v18;
          std::__shared_weak_count::__release_weak(v20);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_33;
          }

LABEL_32:
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
          goto LABEL_33;
        }

        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *(v16 + 4) = v16;
        *(v16 + 5) = v18;
        if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_32;
        }

LABEL_33:
        if (v37)
        {
          std::__shared_weak_count::__release_weak(v37);
        }

        v21 = *buf;
        mav_router::device::pci_shim::init(*buf);
        v22 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = operator new(0x20uLL);
        v23[2] = v21;
        v23[3] = v22;
        v24 = *(a1 + 8);
        *v23 = v24;
        v23[1] = a1 + 8;
        *(v24 + 8) = v23;
        *(a1 + 8) = v23;
        ++*(a1 + 24);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        if (v35 == ++v12)
        {
          goto LABEL_42;
        }
      }

      v14 = __mav_log_platform_os_log_handle::logger[0];
      if (!os_log_type_enabled(__mav_log_platform_os_log_handle::logger[0], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

LABEL_24:
      *buf = 67110402;
      *&buf[4] = 0;
      v46 = 0x400000000010400;
      LODWORD(v47) = 0;
      WORD2(v47) = 2080;
      *(&v47 + 6) = "mav_router::device::controller_ios::controller_ios(mav_router_weak_ptr_t)";
      HIWORD(v47) = 1024;
      v48 = 42;
      v49 = 1024;
      v50 = v12;
      _os_log_impl(&dword_2990D9000, v14, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:Create pci control for interface %u", buf, 0x2Au);
      goto LABEL_25;
    }

LABEL_42:
    if (SBYTE7(v40) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v25 = operator new(0x20uLL);
  v26 = v25;
  v27 = *a2;
  v28 = a2[1];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v38[0] = v27;
    v38[1] = v28;
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v38[0] = *a2;
    v38[1] = 0;
  }

  mav_router::device::shim::shim(v25, v38, 16);
  if (v38[1])
  {
    std::__shared_weak_count::__release_weak(v38[1]);
  }

  v26->__vftable = &unk_2A1F2EB00;
  *buf = v26;
  v29 = operator new(0x20uLL);
  v29->__vftable = &unk_2A1F2ECC8;
  v29->__shared_owners_ = 0;
  v29->__shared_weak_owners_ = 0;
  v29[1].__vftable = v26;
  v46 = v29;
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  v38[0] = v26;
  v38[1] = v29;
  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = operator new(0x20uLL);
  v30[2] = v26;
  v30[3] = v29;
  v31 = *(a1 + 8);
  *v30 = v31;
  v30[1] = a1 + 8;
  *(v31 + 8) = v30;
  *(a1 + 8) = v30;
  ++*(a1 + 24);
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v32 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2990E39B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<mav_router_t>::~shared_ptr[abi:ne200100](&a28);
  std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::destroy(v32[7]);
  mav_router::device::controller::~controller(v32);
  _Unwind_Resume(a1);
}

void mav_router::device::controller_ios::determine_mappings(uint64_t **this)
{
  v59 = *MEMORY[0x29EDCA608];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = 0x4AAAAAAAAAAAAAALL;
  v38 = 0xC00000000000000;
  v39 = 0xAAAAAA0078756D71;
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = 0;
  strcpy(v37, "qmux_control");
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&v43 = ____mav_log_platform_os_log_handle_block_invoke;
  *(&v43 + 1) = &__block_descriptor_tmp_0;
  LODWORD(v44) = 0;
  if (__mav_log_platform_os_log_handle::once != -1)
  {
    dispatch_once(&__mav_log_platform_os_log_handle::once, buf);
  }

  v2 = __mav_log_platform_os_log_handle::logger[0];
  if (os_log_type_enabled(__mav_log_platform_os_log_handle::logger[0], OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *&buf[4] = 0;
    *&buf[8] = 1024;
    *&buf[10] = 1;
    *&buf[14] = 1024;
    LODWORD(v43) = 0;
    WORD2(v43) = 2080;
    *(&v43 + 6) = "void mav_router::device::controller_ios::determine_mappings()";
    HIWORD(v43) = 1024;
    LODWORD(v44) = 107;
    WORD2(v44) = 1024;
    *(&v44 + 6) = 2;
    _os_log_impl(&dword_2990D9000, v2, OS_LOG_TYPE_INFO, "[%04x.%04u.%04u] %s:%u:Number of local QMI instances %u", buf, 0x2Au);
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v3;
  v57 = v3;
  v54 = v3;
  v55 = v3;
  v52 = v3;
  v53 = v3;
  v50 = v3;
  v51 = v3;
  v48 = v3;
  v49 = v3;
  v46 = v3;
  v47 = v3;
  v44 = v3;
  v45 = v3;
  *buf = v3;
  v43 = v3;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  if (v41 >= 0)
  {
    v4 = &v39;
  }

  else
  {
    v4 = v39;
  }

  if (v41 >= 0)
  {
    v5 = HIBYTE(v41);
  }

  else
  {
    v5 = v40;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v4, v5);
  MEMORY[0x29C297CF0](v6, 1);
  v7 = &v45;
  v35 = this;
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v48) & 0x10) != 0)
  {
    v10 = v48;
    v11 = &v45;
    if (v48 < *(&v45 + 1))
    {
      *&v48 = *(&v45 + 1);
      v10 = *(&v45 + 1);
      v11 = &v45;
    }
  }

  else
  {
    if ((BYTE8(v48) & 8) == 0)
    {
      v8 = 0;
      HIBYTE(__dst[2]) = 0;
      v9 = __dst;
      goto LABEL_26;
    }

    v10 = *(&v44 + 1);
    v11 = &v43 + 1;
  }

  v12 = *v11;
  v8 = v10 - *v11;
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_67;
  }

  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v8 | 7) + 1;
    }

    v9 = operator new(v13);
    __dst[1] = v8;
    __dst[2] = (v13 | 0x8000000000000000);
    __dst[0] = v9;
    this = v35;
    goto LABEL_25;
  }

  HIBYTE(__dst[2]) = v10 - *v11;
  v9 = __dst;
  if (v8)
  {
LABEL_25:
    memmove(v9, v12, v8);
  }

LABEL_26:
  *(v9 + v8) = 0;
  v14 = std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 6, __dst, __dst);
  v15 = *MEMORY[0x29EDC9538];
  v16 = *(MEMORY[0x29EDC9538] + 24);
  *(v14 + 14) = 4;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v17 = v15;
    operator delete(__dst[0]);
    v15 = v17;
  }

  v18 = v15;
  *buf = v15;
  v19 = v15;
  *&buf[*(v15 - 24)] = v16;
  v20 = MEMORY[0x29EDC9570] + 16;
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(*(&v46 + 1));
  }

  v21 = MEMORY[0x29EDC9568] + 16;
  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v43);
  std::ostream::~ostream();
  MEMORY[0x29C297D80](&v49);
  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v22;
  v57 = v22;
  v54 = v22;
  v55 = v22;
  v52 = v22;
  v53 = v22;
  v50 = v22;
  v51 = v22;
  v48 = v22;
  v49 = v22;
  v46 = v22;
  v47 = v22;
  v44 = v22;
  v45 = v22;
  *buf = v22;
  v43 = v22;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  if (v41 >= 0)
  {
    v23 = &v39;
  }

  else
  {
    v23 = v39;
  }

  if (v41 >= 0)
  {
    v24 = HIBYTE(v41);
  }

  else
  {
    v24 = v40;
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v23, v24);
  MEMORY[0x29C297CF0](v25, 2);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v48) & 0x10) != 0)
  {
    v28 = v48;
    if (v48 < *(&v45 + 1))
    {
      *&v48 = *(&v45 + 1);
      v28 = *(&v45 + 1);
    }
  }

  else
  {
    if ((BYTE8(v48) & 8) == 0)
    {
      v26 = 0;
      HIBYTE(__dst[2]) = 0;
      v27 = __dst;
      goto LABEL_51;
    }

    v28 = *(&v44 + 1);
    v7 = &v43 + 1;
  }

  v29 = *v7;
  v26 = v28 - v29;
  if ((v28 - v29) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_67:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    v27 = operator new(v30);
    __dst[1] = v26;
    __dst[2] = (v30 | 0x8000000000000000);
    __dst[0] = v27;
    goto LABEL_50;
  }

  HIBYTE(__dst[2]) = v28 - v29;
  v27 = __dst;
  if (v26)
  {
LABEL_50:
    memmove(v27, v29, v26);
  }

LABEL_51:
  *(v27 + v26) = 0;
  *(std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v35 + 6, __dst, __dst) + 14) = 5;
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *buf = v18;
  *&buf[*(v19 - 24)] = v16;
  *&buf[8] = v20;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(*(&v46 + 1));
  }

  *&buf[8] = v21;
  std::locale::~locale(&v43);
  std::ostream::~ostream();
  MEMORY[0x29C297D80](&v49);
  memset(buf, 0, sizeof(buf));
  v31 = v35[5];
  if (v31)
  {
    v32 = std::__shared_weak_count::lock(v31);
    *&buf[8] = v32;
    if (v32)
    {
      *buf = v35[4];
    }
  }

  else
  {
    v32 = 0;
  }

  pthread_once(&ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::getInstance(void)::sOnce, ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init);
  *(std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v35 + 6, v37, v37) + 14) = 4;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

LABEL_65:
    operator delete(v37[0]);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_65;
  }

LABEL_62:
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_63:
    v33 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_66:
  operator delete(v39);
  v34 = *MEMORY[0x29EDCA608];
}

void sub_2990E422C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::ostringstream::~ostringstream(&a28, MEMORY[0x29EDC9538]);
  MEMORY[0x29C297D80](v28 + 112);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

void mav_router::device::controller_ios::~controller_ios(mav_router::device::controller_ios *this)
{
  *this = &unk_2A1F2EBC0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x4002000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = v24;
    *(v24 + 8) = v3;
    *v3 = v7;
    *(v4 + 8) = &v24;
    v24 = v4;
    v26 = v2;
    *(this + 3) = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1107296256;
  block[2] = ___ZN10mav_router6device14controller_iosD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  block[4] = v23;
  dispatch_async(global_queue, block);
  _Block_object_dispose(v23, 8);
  if (v26)
  {
    v9 = v25;
    v10 = *(v24 + 8);
    v11 = *v25;
    *(v11 + 8) = v10;
    *v10 = v11;
    v26 = 0;
    if (v9 != &v24)
    {
      do
      {
        v12 = v9[1];
        v13 = v9[3];
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v9;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          v9 = v14;
        }

        operator delete(v9);
        v9 = v12;
      }

      while (v12 != &v24);
    }
  }

  std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::destroy(*(this + 7));
  *this = &unk_2A1F2E4A8;
  v15 = *(this + 5);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (*(this + 3))
  {
    v16 = *(this + 2);
    v17 = *(*(this + 1) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 3) = 0;
    if (v16 != (this + 8))
    {
      do
      {
        v19 = *(v16 + 1);
        v20 = *(v16 + 3);
        if (v20)
        {
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v16;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v16 = v21;
          }
        }

        operator delete(v16);
        v16 = v19;
      }

      while (v19 != (this + 8));
    }
  }
}

{
  mav_router::device::controller_ios::~controller_ios(this);

  operator delete(v1);
}

void *__Block_byref_object_copy__0(void *result, uint64_t a2)
{
  v2 = result + 5;
  v3 = (a2 + 40);
  result[5] = result + 5;
  result[6] = result + 5;
  result[7] = 0;
  v4 = *(a2 + 48);
  if (v4 != (a2 + 40))
  {
    v5 = result;
    v6 = 0;
    v7 = result + 5;
    do
    {
      result = operator new(0x20uLL);
      v8 = v4[3];
      result[2] = v4[2];
      result[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        v7 = v5[5];
        v6 = v5[7];
      }

      *result = v7;
      result[1] = v2;
      v7[1] = result;
      v5[5] = result;
      v5[7] = ++v6;
      v4 = v4[1];
      v7 = result;
    }

    while (v4 != v3);
  }

  return result;
}

void *__Block_byref_object_dispose__0(void *result)
{
  if (result[7])
  {
    v1 = result + 5;
    v2 = result;
    result = result[6];
    v3 = *(v2[5] + 8);
    v4 = *result;
    *(v4 + 8) = v3;
    *v3 = v4;
    v2[7] = 0;
    if (result != v1)
    {
      do
      {
        v5 = result[1];
        v6 = result[3];
        if (v6)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v7 = result;
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
            result = v7;
          }
        }

        operator delete(result);
        result = v5;
      }

      while (v5 != v1);
    }
  }

  return result;
}

void mav_router::device::controller_ios::init_routes(mav_router::device::controller_ios *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    v4 = 0;
    v5 = MEMORY[0x10];
    if (!MEMORY[0x10])
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(this + 4);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_7:
  v6 = *v5;
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 1);
    do
    {
      v9 = v8 + 48 * v7;
      v12 = *(v9 + 8);
      v10 = (v9 + 8);
      v11 = v12;
      if (v12)
      {
        v13 = *(v11 + 16);
        *(v11 + 16) = v13 - 1;
        if (v13 == 1)
        {
          *(v11 + 8) = 0;
        }

        else
        {
          v14 = v8;
          v15 = v6;
          if (v13 == 2)
          {
            while (*(v14 + 8) != v11)
            {
              v14 += 48;
              if (!--v15)
              {
                *v10 = 0;
                goto LABEL_19;
              }
            }

            *(v11 + 8) = v14;
          }
        }

        *v10 = 0;
      }

      ++v7;
    }

    while (v7 != v6);
  }

LABEL_19:
  v16 = pthread_once(&ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::getInstance(void)::sOnce, ctu::concurrency::Singleton<mav_router_ios_preferences,ctu::concurrency::__DefaultFactory<mav_router_ios_preferences>>::__init);
  if ((*(v4 + 40) - 3) >= 2)
  {
    if (capabilities::ipc::supportsPCI(v16))
    {
      v17 = *(v4 + 16);
      if (v17)
      {
        if (*v17 >= 5u)
        {
          if (*(v17 + 4) >= 0xEu)
          {
            v20 = v17 + 8;
            v18 = *(v17 + 8);
            v19 = *(v20 + 8);
            *(v18 + 200) = v19 + 520;
            v21 = *(v19 + 536);
            *(v19 + 536) = v21 + 1;
            if (!v21)
            {
              *(v19 + 528) = v18 + 192;
            }
          }

          v22 = *(v4 + 16);
          if (v22)
          {
            if (*v22 >= 6u && *(v22 + 4) >= 0xFu)
            {
              v25 = v22 + 8;
              v23 = *(v22 + 8);
              v24 = *(v25 + 8);
              *(v23 + 248) = v24 + 560;
              v26 = *(v24 + 576);
              *(v24 + 576) = v26 + 1;
              if (!v26)
              {
                *(v24 + 568) = v23 + 240;
              }
            }
          }
        }
      }
    }
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t mav_router::device::controller_ios::get_channel_for_service(uint64_t a1, const void **a2)
{
  v2 = a1 + 56;
  v3 = *(a1 + 56);
  if (!v3)
  {
    return *(v2 + 56);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 56);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return *(v2 + 56);
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return *(v7 + 14);
    }

    return *(v2 + 56);
  }

  else
  {
    if (v6 < v15)
    {
      return *(v2 + 56);
    }

    return *(v7 + 14);
  }
}

void *std::__list_imp<std::shared_ptr<mav_router::device::shim>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        v5 = result[3];
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v6 = result;
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
            result = v6;
          }
        }

        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void std::__shared_ptr_pointer<mav_router::device::pci_shim *,std::shared_ptr<mav_router::device::pci_shim>::__shared_ptr_default_delete<mav_router::device::pci_shim,mav_router::device::pci_shim>,std::allocator<mav_router::device::pci_shim>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<mav_router::device::pci_shim *,std::shared_ptr<mav_router::device::pci_shim>::__shared_ptr_default_delete<mav_router::device::pci_shim,mav_router::device::pci_shim>,std::allocator<mav_router::device::pci_shim>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mav_router::device::pci_shim *,std::shared_ptr<mav_router::device::pci_shim>::__shared_ptr_default_delete<mav_router::device::pci_shim,mav_router::device::pci_shim>,std::allocator<mav_router::device::pci_shim>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002990E5A47)
  {
    if (((v2 & 0x80000002990E5A47 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002990E5A47))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002990E5A47 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<mav_router::device::null_shim *,std::shared_ptr<mav_router::device::null_shim>::__shared_ptr_default_delete<mav_router::device::null_shim,mav_router::device::null_shim>,std::allocator<mav_router::device::null_shim>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<mav_router::device::null_shim *,std::shared_ptr<mav_router::device::null_shim>::__shared_ptr_default_delete<mav_router::device::null_shim,mav_router::device::null_shim>,std::allocator<mav_router::device::null_shim>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mav_router::device::null_shim *,std::shared_ptr<mav_router::device::null_shim>::__shared_ptr_default_delete<mav_router::device::null_shim,mav_router::device::null_shim>,std::allocator<mav_router::device::null_shim>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002990E5B2FLL)
  {
    if (((v2 & 0x80000002990E5B2FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002990E5B2FLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002990E5B2FLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,mav_router_channel_t>,std::__map_value_compare<std::string,std::__value_type<std::string,mav_router_channel_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mav_router_channel_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v6 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    while (1)
    {
      v10 = v5;
      v13 = v5[4];
      v11 = v5 + 4;
      v12 = v13;
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = v11[1];
      }

      if (v16 >= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      v18 = memcmp(v8, v15, v17);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v19 = memcmp(v15, v8, v17);
        if (v19)
        {
          if ((v19 & 0x80000000) == 0)
          {
            return v10;
          }
        }

        else if (v16 >= v9)
        {
          return v10;
        }

        v5 = v10[1];
        if (!v5)
        {
          v6 = v10 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v9 >= v16)
        {
          goto LABEL_22;
        }

LABEL_8:
        v5 = *v10;
        v6 = v10;
        if (!*v10)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_29:
  v20 = operator new(0x40uLL);
  v21 = v20;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v20 + 32), *a3, *(a3 + 8));
  }

  else
  {
    *(v20 + 2) = *a3;
    *(v20 + 6) = *(a3 + 16);
  }

  *(v21 + 14) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = v10;
  *v6 = v21;
  v22 = **a1;
  if (v22)
  {
    *a1 = v22;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v21);
  a1[2] = (a1[2] + 1);
  return v21;
}

void sub_2990E4EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,mav_router_channel_t>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mav_router_channel_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,mav_router_channel_t>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mav_router_channel_t>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}