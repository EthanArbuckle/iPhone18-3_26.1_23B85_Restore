uint64_t *boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory(uint64_t *a1)
{
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_close(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  *a1 = 0;
  return a1;
}

void boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_close(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    boost::intrusive::bstbase<boost::intrusive::bhtraits<boost::interprocess::ipcdetail::intrusive_value_type_impl<boost::intrusive::generic_hook<(boost::intrusive::algo_types)5,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,boost::intrusive::dft_tag,(boost::intrusive::link_mode_type)1,(boost::intrusive::base_hook_type)3>,char,unsigned long>,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)1,boost::intrusive::dft_tag,3u>,void,void,true,unsigned long,(boost::intrusive::algo_types)5,void>::~bstbase(v2 + 88);
    boost::intrusive::bstbase<boost::intrusive::bhtraits<boost::interprocess::ipcdetail::intrusive_value_type_impl<boost::intrusive::generic_hook<(boost::intrusive::algo_types)5,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,boost::intrusive::dft_tag,(boost::intrusive::link_mode_type)1,(boost::intrusive::base_hook_type)3>,char,unsigned long>,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)1,boost::intrusive::dft_tag,3u>,void,void,true,unsigned long,(boost::intrusive::algo_types)5,void>::~bstbase(v2 + 56);
    *a1 = 0;
  }

  v3 = a1[1];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

uint64_t boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string_base(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *(a1 + 24);
    v3 = a1 + 24 - &v5;
    if (v2 == 1)
    {
      v3 = 0;
    }

    v5 = v3 + v2;
    boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate(a1, &v5, *(a1 + 16));
  }

  return a1;
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F2A89F08;
  exception[1] = this;
}

char *boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(char *a1, void *a2, char a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if (*a6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a6 + *a6;
  }

  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 + *a2;
  }

  v18 = v7;
  v9 = *(v8 + 48);
  v10 = v9 < a4 || *a5 > v9;
  if (v10 || (v19 = *a5, result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v8, a3 | 0x10u, a4, &v19, &v18, 1uLL), *a5 = v19, !result))
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v17 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v17 = &unk_1F2A8A288;
  }

  v14 = v18;
  *a1 = result - a1;
  if (v14)
  {
    v15 = v14 - a6;
  }

  else
  {
    v15 = 1;
  }

  *a6 = v15;
  return result;
}

void *boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(uint64_t a1, char a2, unint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v10 = *a4;
  if ((a2 & 8) != 0)
  {
    v12 = *a5;
    if (!*a5)
    {
      return 0;
    }

    v13 = v12 - 16;
    v14 = *(v12 - 8);
    v15 = (a1 + *(a1 + 32) + 55) & 0xFFFFFFFFFFFFFFF8;
    if (v15 + ((*(a1 + 48) + a1 - v15 - 8) & 0xFFFFFFFFFFFFFFF8) + 8 != v12 && ((*(v13 + 8 * v14 + 8) & 0x4000000000000000) != 0) != v14 >> 63)
    {
      __assert_rtn("priv_is_allocated_block", "rbtree_best_fit.hpp", 1200, "allocated == next_block_prev_allocated");
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      __assert_rtn("try_shrink", "mem_algo_common.hpp", 378, "memory_algo->priv_is_allocated_block(block)");
    }

    if ((v12 & 7) != 0)
    {
      __assert_rtn("assert_alignment", "mem_algo_common.hpp", 106, "uint_ptr % Alignment == 0");
    }

    result = 0;
    v16 = (v14 & 0x3FFFFFFFFFFFFFFFLL) - 2;
    *a4 = 8 * v16 + 8;
    v17 = (a3 - 8) >> 3;
    if (v17 >= (v10 - 1) >> 3)
    {
      v18 = (v10 - 1) >> 3;
      if (v16 >= v18)
      {
        if (v16 != v18)
        {
          result = 0;
          if (v18 <= 3)
          {
            v18 = 3;
          }

          if (v17 < v18 || v16 - v18 < 5)
          {
            return result;
          }

          *a4 = 8 * v18 + 8;
          v19 = (v18 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          *(v12 - 8) = v19 | *(v12 - 8) & 0xC000000000000000;
          if (8 * v18 <= 0x17)
          {
            __assert_rtn("shrink", "mem_algo_common.hpp", 442, "block->m_size >= BlockCtrlUnits");
          }

          v20 = v13 + 8 * v19;
          v21 = (v14 - v19) & 0x3FFFFFFFFFFFFFFFLL;
          *(v20 + 8) = *(v20 + 8) & 0xC000000000000000 | v21;
          if (v21 <= 4)
          {
            __assert_rtn("shrink", "mem_algo_common.hpp", 450, "new_block->m_size >= BlockCtrlUnits");
          }

          v22 = *(v12 - 8);
          *(v12 - 8) = v22 | 0x8000000000000000;
          *(v13 + 8 * v22 + 8) |= 0x4000000000000000uLL;
          v23 = *(v20 + 8);
          *(v20 + 8) = v23 | 0x8000000000000000;
          *(v20 + 8 * v23 + 8) |= 0x4000000000000000uLL;
          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(a1, v20 + 16);
        }

        return *a5;
      }
    }
  }

  else
  {
    *a4 = 0;
    if (v10 < a3)
    {
LABEL_3:
      result = 0;
      *a5 = 0;
      return result;
    }

    v26 = 8;
    if (v10 <= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v10;
    }

    v28 = (v27 - 1) >> 3;
    if (v28 <= 3)
    {
      v29 = 3;
    }

    else
    {
      v29 = v28;
    }

    if (a3 > 8)
    {
      v26 = a3;
    }

    v30 = (v26 - 1) >> 3;
    if (v30 <= 3)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    *a4 = v10;
    v32 = a2 & 6;
    if ((a2 & 6) == 0 || (v33 = *a5) == 0 || (result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand_both_sides(a1, a2, a3, a4, v33, 1, a6)) == 0)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_35;
      }

      v35 = v29 + 2;
      v36 = a1 + 8;
      v37 = &v93 - &v94;
      if (a1 - &v92 == 1)
      {
        v37 = 0;
      }

      v38 = v37 + a1 - &v92;
      v93 = a1 - &v92;
      v94 = v38;
      v39 = v38 == 1;
      if (v38 == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = &v94 + v38;
      }

      v41 = *v40 & 0xFFFFFFFFFFFFFFFDLL;
      v42 = &v94 - &v95 + v38;
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v42;
      }

      v44 = v40 - &v96;
      if (v41 == 1)
      {
        v44 = 0;
      }

      v45 = v44 + v41;
      v95 = v43;
      v96 = v44 + v41;
      if (v44 + v41 != 1)
      {
        v46 = &v96 - &v95;
        do
        {
          v97 = &v94 + v45 - &v97;
          if (v97 == 1)
          {
            goto LABEL_122;
          }

          if ((*(&v94 + v45 + 8) & 0x3FFFFFFFFFFFFFFFuLL) >= v35)
          {
            v43 = v46 + v45;
            v95 = v46 + v45;
            if (v45 == 1)
            {
              v51 = 0;
            }

            else
            {
              v51 = &v96 + v45;
            }

            v52 = *(v51 + 1);
            v49 = v51 + 8;
            v48 = v52;
          }

          else
          {
            v47 = &v96 + v45;
            v50 = *(v47 + 2);
            v49 = v47 + 16;
            v48 = v50;
          }

          v53 = v49 - &v97;
          if (v48 == 1)
          {
            v53 = 0;
          }

          v54 = v53 + v48;
          if (v54 == 1)
          {
            v55 = 0;
          }

          else
          {
            v55 = &v97 - &v96;
          }

          v45 = v55 + v54;
          v96 = v45;
        }

        while (v45 != 1);
      }

      v56 = &v95 - &v97;
      if (v43 == 1)
      {
        v56 = 0;
      }

      v57 = v56 + v43;
      v58 = &v97 - &v92;
      if (v57 == 1)
      {
        v58 = 0;
      }

      v59 = v58 + v57;
      v92 = v59;
      v60 = &v95 - &v96;
      if (v36 - &v95 == 1)
      {
        v60 = 0;
      }

      v61 = v60 + v36 - &v95;
      if (v61 == 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = &v96 - &v97 + v61;
      }

      v63 = &v97 - &v94;
      if (v62 == 1)
      {
        v63 = 0;
      }

      v64 = v63 + v62;
      if (v59 == 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = &v92 - &v97;
      }

      v66 = v65 + v59;
      v67 = &v94 - &v96;
      if (v64 == 1)
      {
        v67 = 0;
      }

      v68 = v67 + v64;
      v69 = &v97 + v66;
      if (v66 == 1)
      {
        v69 = 0;
      }

      if (v68 == 1)
      {
        v70 = 0;
      }

      else
      {
        v70 = &v96 + v68;
      }

      if (v69 == v70)
      {
        v71 = v36 - &v95;
        v72 = &v95 - &v96;
        if (v71 == 1)
        {
          v72 = 0;
        }

        v73 = v72 + v71;
        if (v73 == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = &v96 + v73;
        }

        v75 = *(v74 + 1);
        v76 = v74 + 8 - &v97;
        if (v75 == 1)
        {
          v76 = 0;
        }

        v77 = v76 + v75;
        v78 = &v97 - &v94;
        if (v77 == 1)
        {
          v78 = 0;
        }

        v79 = v78 + v77;
        v94 = v79;
        if (v59 == 1)
        {
          v80 = 0;
        }

        else
        {
          v80 = &v92 - &v97;
        }

        v81 = v80 + v59;
        v82 = &v94 - &v96;
        if (v79 == 1)
        {
          v82 = 0;
        }

        v83 = v82 + v79;
        v84 = &v97 + v81;
        if (v81 == 1)
        {
          v84 = 0;
        }

        if (v83 == 1)
        {
          v85 = 0;
        }

        else
        {
          v85 = &v96 + v83;
        }

        if (v84 == v85)
        {
          goto LABEL_35;
        }

        boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v97, &v92);
        v86 = &v97 - &v92;
        if (v97 == 1)
        {
          v86 = 0;
        }

        v92 = v86 + v97;
        v87 = &v92 + v86 + v97 - 16;
        v88 = -16;
        if (v92 != 1)
        {
          v88 = v87;
        }

        v96 = v88 - &v96;
        if (v88 - &v96 == 1)
        {
LABEL_122:
          __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
        }

        if ((*(v88 + 8) & 0x3FFFFFFFFFFFFFFFuLL) < v31 + 2)
        {
LABEL_35:
          if (!v32)
          {
            goto LABEL_3;
          }

          v34 = *a5;
          if (!*a5)
          {
            goto LABEL_3;
          }

          *a4 = v10;
          return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand_both_sides(a1, a2, a3, a4, v34, 0, a6);
        }

        *a5 = 0;
        boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator->(&v97, &v92);
        if (v97 == 1)
        {
          v89 = 0;
        }

        else
        {
          v89 = &v97 + v97;
        }

        v90 = *(v89 + 1);
        v91 = boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator*(&v92);
        v35 = v90 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        *a5 = 0;
        if (v59 == 1)
        {
          v91 = -16;
        }

        else
        {
          v91 = &v92 + v59 - 16;
        }

        v97 = v91 - &v97;
        if (v91 - &v97 == 1)
        {
          goto LABEL_122;
        }
      }

      return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_check_and_allocate(a1, v35, v91, a4);
    }
  }

  return result;
}

boost::interprocess::interprocess_exception *boost::interprocess::interprocess_exception::interprocess_exception(boost::interprocess::interprocess_exception *this, const char *a2)
{
  *this = &unk_1F2A8A2B0;
  *(this + 1) = 0x200000000;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  MEMORY[0x1B8C64350](this + 16, a2);
  return this;
}

void sub_1B35EA824(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B35EA814);
}

void boost::interprocess::bad_alloc::~bad_alloc(std::exception *this)
{
  boost::interprocess::interprocess_exception::~interprocess_exception(this);

  JUMPOUT(0x1B8C64390);
}

uint64_t boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand_both_sides(uint64_t a1, char a2, unint64_t a3, unint64_t *a4, uint64_t a5, int a6, unint64_t a7)
{
  if ((a5 & 7) != 0)
  {
    goto LABEL_99;
  }

  v9 = a5;
  v14 = *a4;
  if ((a2 & 2) != 0)
  {
    if (boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand(a1, a5, a3, a4))
    {
      return v9;
    }
  }

  else
  {
    v15 = 8 * *(a5 - 8) - 8;
    *a4 = v15;
    if (v15 >= v14 || v15 >= a3)
    {
      return v9;
    }
  }

  if (a3 % a7)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 808, "0 == (min_size % backwards_multiple)");
  }

  if (v14 % a7)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 809, "0 == (preferred_size % backwards_multiple)");
  }

  if ((a2 & 4) == 0 || (*(v9 - 1) & 0x40) != 0)
  {
    return 0;
  }

  v17 = v9 - 16;
  v18 = (a1 + *(a1 + 32) + 55) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v9 - 16);
  v20 = v9 - 16 - 8 * v19;
  v21 = *(v20 + 8);
  if (v18 + 8 != v9 - 16)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      __assert_rtn("priv_is_prev_allocated", "rbtree_best_fit.hpp", 1218, "!prev->m_allocated");
    }

    if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != v19)
    {
      __assert_rtn("priv_is_prev_allocated", "rbtree_best_fit.hpp", 1219, "prev->m_size == block->m_prev_size");
    }
  }

  if (v18 + 8 + ((*(a1 + 48) - (v18 - a1 + 8)) & 0xFFFFFFFFFFFFFFF8) - 16 != v20 && ((*(v20 + 8 * v21 + 8) & 0x4000000000000000) != 0) != v21 >> 63)
  {
    __assert_rtn("priv_is_allocated_block", "rbtree_best_fit.hpp", 1200, "allocated == next_block_prev_allocated");
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 827, "!priv_is_allocated_block(prev_block)");
  }

  v22 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != v19)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 830, "prev_block->m_size == reuse->m_prev_size");
  }

  v23 = *a4;
  if (a6)
  {
    v24 = v14;
  }

  else
  {
    v24 = a3;
  }

  v25 = 8;
  if (a7 <= 8)
  {
    v26 = 8;
  }

  else
  {
    v26 = a7;
  }

  if (a7 < 8)
  {
    v25 = a7;
  }

  if ((a7 & (a7 - 1)) != 0)
  {
    if ((a7 & 7) != 0)
    {
      if ((a7 & 3) != 0)
      {
        if (a7)
        {
          v34 = v25;
          v35 = v26;
          do
          {
            v36 = v35;
            v35 = v34;
            v34 = v36 % v34;
          }

          while (v34);
          v37 = v23 % a7 - v23 + v24;
          if (v37 % a7)
          {
            __assert_rtn("calculate_lcm_and_needs_backwards_lcmed", "mem_algo_common.hpp", 220, "(needs_backwards % backwards_multiple) == 0");
          }

          v26 = v26 / v35 * v25;
          v28 = v26 + v26 * ((v37 - 1) / v26);
        }

        else
        {
          v26 = 4 * a7;
          v28 = v23 % a7 - v23 + v24;
          v29 = (v28 >> 1) & 3;
          if (v29)
          {
            v30 = v28 + (4 - v29) * a7;
            v31 = v28 + v29 * a7;
            if ((a7 & 4) != 0)
            {
              v28 = v31;
            }

            else
            {
              v28 = v30;
            }
          }

          if (v28 % v26)
          {
            __assert_rtn("calculate_lcm_and_needs_backwards_lcmed", "mem_algo_common.hpp", 207, "(needs_backwards_lcmed % lcm_val) == 0");
          }
        }
      }

      else
      {
        v26 = 2 * a7;
        v32 = v23 % a7 - v23 + v24;
        if ((v32 & 7) != 0)
        {
          v33 = a7;
        }

        else
        {
          v33 = 0;
        }

        v28 = v33 + v32;
        if ((v33 + v32) % v26)
        {
          __assert_rtn("calculate_lcm_and_needs_backwards_lcmed", "mem_algo_common.hpp", 186, "(needs_backwards_lcmed % lcm_val) == 0");
        }
      }
    }

    else
    {
      v28 = v23 % a7 - v23 + v24;
      v26 = a7;
      if ((v28 & 7) != 0)
      {
        __assert_rtn("calculate_lcm_and_needs_backwards_lcmed", "mem_algo_common.hpp", 173, "(needs_backwards_lcmed & (Alignment - 1u)) == 0");
      }
    }
  }

  else
  {
    if (((a7 - 1) & v24) != 0)
    {
      return 0;
    }

    v27 = v24 - (v23 & -a7);
    if (v27 % a7)
    {
      __assert_rtn("calculate_lcm_and_needs_backwards_lcmed", "mem_algo_common.hpp", 161, "(needs_backwards % backwards_multiple) == 0");
    }

    v28 = ((v27 - 1) & -v26) + v26;
  }

  if (v28 > 8 * v21)
  {
    return 0;
  }

  if ((a2 & 2) != 0)
  {
    v74 = *a4;
    if ((boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand(a1, v9, v23, &v74) & 1) == 0)
    {
      __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 849, "0");
    }

    v23 = *a4;
    if (*a4 != v74)
    {
      __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 851, "prefer_in_recvd_out_size == received_size2");
    }

    v20 = v9 - 16 - 8 * v19;
    v21 = *(v20 + 8);
    v22 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  }

  if (v22 >= (v28 >> 3) + 5)
  {
    v49 = v17 - v28;
    v50 = v28 + v23 - 8;
    v51 = (v50 >> 3) + 2;
    v52 = v51 | *(v17 - v28 + 8) & 0xC000000000000000;
    *(v17 - v28 + 8) = v52;
    if (v50 <= 0x17)
    {
      __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 861, "new_block->m_size >= BlockCtrlUnits");
    }

    *(v49 + 8) = v52 | 0x8000000000000000;
    *(v49 + 8 * v51 + 8) |= 0x4000000000000000uLL;
    v53 = -v28 - -8 * v19;
    v54 = *(v20 + 8) & 0xC000000000000000 | (v53 >> 3);
    *(v20 + 8) = v54;
    if (v53 <= 0x27)
    {
      __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 866, "prev_block->m_size >= BlockCtrlUnits");
    }

    *(v20 + 8) = v54 & 0x5FFFFFFFFFFFFFFFLL;
    v55 = (v20 + (v53 & 0xFFFFFFFFFFFFFFF8));
    v55[1] &= ~0x4000000000000000uLL;
    *v55 = *(v20 + 8) & 0x3FFFFFFFFFFFFFFFLL;
    v56 = v20 - v73 + 16;
    v57 = v73 - &v74;
    if (v20 - v73 == -15)
    {
      v57 = 0;
    }

    v58 = v57 + v56;
    if (v58 == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = &v74 - &v72;
    }

    v72 = v59 + v58;
    *v73 = v20 - v73 + 16;
    v60 = v20;
    boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::begin(&v71, a1 + 8);
    if (!boost::intrusive::operator==(v73, &v71))
    {
      v61 = v73 - &v72;
      if (v56 == 1)
      {
        v61 = 0;
      }

      v72 = v61 + v56;
      boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v74, &v72);
      if (v74 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = &v74 - &v72;
      }

      v72 = v62 + v74;
      boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator->(&v70, &v72);
      if (v70 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = &v70 + v70;
      }

      if ((*(v63 + 1) & 0x3FFFFFFFFFFFFFFFuLL) > (*(v60 + 8) & 0x3FFFFFFFFFFFFFFFuLL))
      {
        v64 = v73 - &v74;
        if (*v73 == 1)
        {
          v64 = 0;
        }

        v65 = &v74 - &v71;
        if (v64 + *v73 == 1)
        {
          v65 = 0;
        }

        v71 = v65 + v64 + *v73;
        boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v74, a1, &v71);
        boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::begin(&v70, a1 + 8);
        v66 = &v70 - &v74;
        if (v70 == 1)
        {
          v66 = 0;
        }

        v67 = v66 + v70;
        v68 = &v74 - &v71;
        if (v67 == 1)
        {
          v68 = 0;
        }

        v71 = v68 + v67;
        boost::intrusive::multiset_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,void>::insert(&v74, a1, &v71, v60);
      }
    }

    *a4 += v28;
    *(a1 + 40) += v28;
    if ((v49 & 7) == 0)
    {
      v69 = v9 - (v49 + 16);
      v9 = v49 + 16;
      if (v69 % a7)
      {
        __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 892, "size_type(static_cast<char*>(reuse_ptr) - static_cast<char*>(user_ptr)) % backwards_multiple == 0");
      }

      return v9;
    }

LABEL_99:
    __assert_rtn("assert_alignment", "mem_algo_common.hpp", 106, "uint_ptr % Alignment == 0");
  }

  if (v22 < v28 >> 3 || 8 * v21 % v26)
  {
    return 0;
  }

  v39 = v20 + 16;
  v40 = v20 + 16 - &v72;
  v72 = v40;
  v41 = &v72 - &v74;
  if (v40 == 1)
  {
    v41 = 0;
  }

  v42 = v41 + v40;
  v43 = &v74 - v73;
  if (v42 == 1)
  {
    v43 = 0;
  }

  *v73 = v43 + v42;
  v44 = v20;
  boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v74, a1, v73);
  *a4 += 8 * *(v44 + 8);
  *(a1 + 40) += 8 * *(v44 + 8);
  v45 = *(v44 + 8);
  v46 = *(v9 - 8) + v45;
  v47 = v45 & 0xC000000000000000 | v46 & 0x3FFFFFFFFFFFFFFFLL;
  *(v44 + 8) = v47;
  if ((v46 & 0x3FFFFFFFFFFFFFFFuLL) <= 4)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 910, "prev_block->m_size >= BlockCtrlUnits");
  }

  *(v44 + 8) = v47 | 0x8000000000000000;
  *(v44 + 8 * v46 + 8) |= 0x4000000000000000uLL;
  v48 = (v9 - v39) % a7;
  v9 = v39;
  if (v48)
  {
    __assert_rtn("priv_expand_both_sides", "rbtree_best_fit.hpp", 916, "size_type(static_cast<char*>(reuse_ptr) - static_cast<char*>(user_ptr)) % backwards_multiple == 0");
  }

  return v9;
}

void *boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_check_and_allocate(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a3 + 16);
  v5 = a3 + 16 - v61;
  v61[0] = v5;
  if ((a3 & 7) != 0)
  {
    __assert_rtn("assert_alignment", "mem_algo_common.hpp", 106, "uint_ptr % Alignment == 0");
  }

  v9 = *(a3 + 8);
  if ((v9 & 0x3FFFFFFFFFFFFFFFuLL) < a2 + 5)
  {
    if ((v9 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
    {
      __assert_rtn("priv_check_and_allocate", "rbtree_best_fit.hpp", 1293, "0");
    }

    v10 = v61 - &v64;
    if (v5 == 1)
    {
      v10 = 0;
    }

    v11 = v10 + v5;
    v12 = &v64 - &v63;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v63 = v12 + v11;
    boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v64, a1, &v63);
    goto LABEL_68;
  }

  *(a3 + 8) = v9 & 0xC000000000000000 | a2 & 0x3FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) <= 4)
  {
    __assert_rtn("priv_check_and_allocate", "rbtree_best_fit.hpp", 1261, "block->m_size >= BlockCtrlUnits");
  }

  v13 = (a3 + 8 * a2);
  v13[1] = vdupq_n_s64(1uLL);
  v13[2].i64[0] = 1;
  v14 = v9 - a2;
  v13->i64[1] = v14 & 0x3FFFFFFFFFFFFFFFLL;
  if ((v14 & 0x3FFFFFFFFFFFFFFFuLL) <= 4)
  {
    __assert_rtn("priv_check_and_allocate", "rbtree_best_fit.hpp", 1268, "rem_block->m_size >= BlockCtrlUnits");
  }

  v15 = &v13->i64[v14];
  v15[1] &= ~0x4000000000000000uLL;
  *v15 = v13->i64[1] & 0x3FFFFFFFFFFFFFFFLL;
  v16 = a1 + 8;
  v17 = a1 + 8 - &v62;
  v18 = &v62 - &v63;
  if (v17 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + v17;
  v20 = &v63 + v19;
  if (v19 == 1)
  {
    v20 = 0;
  }

  v21 = *(v20 + 1);
  v22 = v20 + 8 - &v64;
  if (v21 == 1)
  {
    v22 = 0;
  }

  v23 = v22 + v21;
  v24 = &v64 - &v60;
  if (v23 == 1)
  {
    v24 = 0;
  }

  v25 = v24 + v23;
  v60 = v25;
  v26 = v61 - &v64;
  if (v5 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v61 - &v64;
  }

  v28 = v27 + v5;
  v29 = &v60 - &v63;
  if (v25 == 1)
  {
    v29 = 0;
  }

  v30 = v29 + v25;
  v31 = &v64 + v28;
  if (v28 == 1)
  {
    v31 = 0;
  }

  if (v30 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = &v63 + v30;
  }

  if (v31 == v32)
  {
    goto LABEL_64;
  }

  if (v5 == 1)
  {
    v26 = 0;
  }

  v33 = v26 + v5;
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = &v64 - &v62;
  }

  v62 = v34 + v33;
  boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v64, &v62);
  if (v64 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = &v64 - &v62;
  }

  v62 = v35 + v64;
  v36 = v61 + v35 + v64;
  v37 = -16;
  if (v62 != 1)
  {
    v37 = v36;
  }

  v63 = v37 - &v63;
  if (v37 - &v63 == 1)
  {
    goto LABEL_70;
  }

  if ((*(v37 + 8) & 0x3FFFFFFFFFFFFFFFuLL) <= (v13->i64[1] & 0x3FFFFFFFFFFFFFFFuLL))
  {
LABEL_64:
    v56 = (v4 - 2);
    if (v5 == 1)
    {
      v56 = -16;
    }

    v57 = v56 - &v64;
    v64 = v57;
    if (v57 != 1)
    {
      v64 = v57 + 16;
      boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::replace_node(a1 + 8, &v64, v13);
      goto LABEL_68;
    }

LABEL_70:
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

  v38 = v61 - &v64;
  if (v5 == 1)
  {
    v38 = 0;
  }

  v39 = v38 + v5;
  v40 = &v64 - &v63;
  if (v39 == 1)
  {
    v40 = 0;
  }

  v63 = v40 + v39;
  boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v64, a1, &v63);
  v41 = &v62 - &v63;
  if (v16 - &v62 == 1)
  {
    v41 = 0;
  }

  v42 = v41 + v16 - &v62;
  if (v42 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = &v63 + v42;
  }

  v44 = *(v43 + 1);
  v45 = v43 + 8 - &v64;
  if (v44 == 1)
  {
    v45 = 0;
  }

  v46 = v45 + v44;
  v47 = &v64 - &v60;
  if (v46 == 1)
  {
    v47 = 0;
  }

  v48 = v47 + v46;
  v60 = v48;
  v49 = &v60 - &v64;
  if (v48 == 1)
  {
    v49 = 0;
  }

  v50 = v49 + v48;
  v51 = &v64 - &v62;
  if (v50 == 1)
  {
    v51 = 0;
  }

  v52 = v51 + v50;
  v62 = v52;
  v53 = &v62 - &v64;
  if (v52 == 1)
  {
    v53 = 0;
  }

  v54 = v53 + v52;
  v55 = &v64 - &v63;
  if (v54 == 1)
  {
    v55 = 0;
  }

  v63 = v55 + v54;
  boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::insert_equal(&v64, a1, &v63, v13);
LABEL_68:
  *(a1 + 40) += 8 * *(a3 + 8);
  *a4 = 8 * *(a3 + 8) - 8;
  v58 = *(a3 + 8);
  *(a3 + 8) = v58 | 0x8000000000000000;
  *(a3 + 8 * v58 + 8) |= 0x4000000000000000uLL;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *(a3 + 8 * *(a3 + 8)) = 0;
  return v4;
}

uint64_t *boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator->(uint64_t *result, void *a2)
{
  v2 = -16;
  if (*a2 != 1)
  {
    v2 = a2 + *a2 - 16;
  }

  v3 = v2 - result;
  *result = v3;
  if (v3 == 1)
  {
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

  return result;
}

uint64_t boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator*(void *a1)
{
  if (*a1 == 1)
  {
    result = -16;
  }

  else
  {
    result = a1 + *a1 - 16;
  }

  v2 = result - &v2;
  if (result - &v2 == 1)
  {
    __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
  }

  return result;
}

uint64_t boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_expand(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v7 = *a4;
  v8 = a2 - 16;
  v9 = *(a2 - 8);
  v10 = (*(a1 + 32) + a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + ((*(a1 + 48) + a1 - v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 8 != a2 && ((*(v8 + 8 * v9 + 8) & 0x4000000000000000) != 0) != v9 >> 63)
  {
    goto LABEL_99;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1037, "priv_is_allocated_block(block)");
  }

  v11 = 8 * v9 - 8;
  *a4 = v11;
  if (v11 >= v7 || v11 >= a3)
  {
    return 1;
  }

  v14 = (a3 - 1) >> 3;
  v15 = v7 - 1;
  if (v14 > (v7 - 1) >> 3)
  {
    __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1049, "min_user_units <= preferred_user_units");
  }

  v16 = v8 + 8 * *(a2 - 8);
  v17 = *(v16 + 8);
  v18 = (*(a1 + 32) + a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  if (v18 + ((*(a1 + 48) + a1 - v18 - 8) & 0xFFFFFFFFFFFFFFF8) - 8 != v16 && ((*(v16 + 8 * v17 + 8) & 0x4000000000000000) != 0) != v17 >> 63)
  {
LABEL_99:
    __assert_rtn("priv_is_allocated_block", "rbtree_best_fit.hpp", 1200, "allocated == next_block_prev_allocated");
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if ((v16 & 7) != 0)
    {
      goto LABEL_101;
    }

    v19 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = (v17 & 0x3FFFFFFFFFFFFFFFLL) + (v9 & 0x3FFFFFFFFFFFFFFFLL);
    v13 = v20 - 2 >= v14;
    if (v20 - 2 < v14)
    {
LABEL_96:
      *a4 = 8 * v20 - 8;
      return v13;
    }

    v21 = v15 >> 3;
    if (v20 - 2 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20 - 2;
    }

    v23 = v22 + 2;
    v24 = v20 - (v22 + 2);
    if (v24 < 5)
    {
      v31 = v16 - v80 + 16;
      v80[0] = v31;
      v32 = v80 - &v82;
      if (v31 == 1)
      {
        v32 = 0;
      }

      v33 = v32 + v31;
      v34 = &v82 - &v81;
      if (v33 == 1)
      {
        v34 = 0;
      }

      v81 = v34 + v33;
      boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v82, a1, &v81);
      *(a2 - 8) = *(a2 - 8) & 0xC000000000000000 | v20 & 0x3FFFFFFFFFFFFFFFLL;
      if ((v20 & 0x3FFFFFFFFFFFFFFFuLL) <= 4)
      {
        __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1125, "block->m_size >= BlockCtrlUnits");
      }

      v35 = *(a1 + 40) + 8 * v17;
      goto LABEL_95;
    }

    if (v19 != *(v16 + 8 * v17))
    {
      __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1081, "next_block->m_size == priv_next_block(next_block)->m_prev_size");
    }

    v25 = v16 - v79 + 16;
    v79[0] = v25;
    v26 = v22;
    if (v19 - v24 > 4)
    {
      v36 = v80 - &v81;
      if (a1 - v80 == -7)
      {
        v36 = 0;
      }

      v37 = v36 + a1 - v80 + 8;
      v38 = &v81 + v37;
      if (v37 == 1)
      {
        v38 = 0;
      }

      v39 = *(v38 + 1);
      v40 = v38 + 8 - &v82;
      if (v39 == 1)
      {
        v40 = 0;
      }

      v41 = v40 + v39;
      v42 = &v82 - &v78;
      if (v41 == 1)
      {
        v42 = 0;
      }

      v43 = v42 + v41;
      v78 = v43;
      v44 = v79 - &v82;
      if (v25 == 1)
      {
        v44 = 0;
      }

      v45 = v44 + v25;
      v46 = &v78 - &v81;
      if (v43 == 1)
      {
        v46 = 0;
      }

      v47 = v46 + v43;
      if (v45 == 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = &v82 + v45;
      }

      if (v47 == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = &v81 + v47;
      }

      if (v48 == v49)
      {
        goto LABEL_66;
      }

      v50 = v79 - &v82;
      if (v25 == 1)
      {
        v50 = 0;
      }

      v51 = v50 + v25;
      v52 = v51 == 1 ? 0 : &v82 - &v76;
      v76 = v52 + v51;
      boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v82, &v76);
      v53 = v82 == 1 ? 0 : &v82 - &v76;
      v76 = v53 + v82;
      boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,false>::operator->(&v77, &v76);
      v54 = v77 == 1 ? 0 : &v77 + v77;
      if ((*(v54 + 1) & 0x3FFFFFFFFFFFFFFFuLL) <= v24)
      {
LABEL_66:
        v30 = 0;
        goto LABEL_67;
      }

      v25 = v79[0];
    }

    v27 = v79 - &v82;
    if (v25 == 1)
    {
      v27 = 0;
    }

    v28 = v27 + v25;
    v29 = &v82 - &v81;
    if (v28 == 1)
    {
      v29 = 0;
    }

    v81 = v29 + v28;
    boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(&v82, a1, &v81);
    v30 = 1;
LABEL_67:
    v55 = (v8 + 8 * v23);
    v55[1] = vdupq_n_s64(1uLL);
    v55[2].i64[0] = 1;
    v55->i64[1] = v24 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v55 & 7) == 0)
    {
      if ((v24 & 0x3FFFFFFFFFFFFFFFLL) <= 4)
      {
        __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1104, "rem_block->m_size >= BlockCtrlUnits");
      }

      v56 = &v55->i64[v24];
      v56[1] &= ~0x4000000000000000uLL;
      *v56 = v55->i64[1] & 0x3FFFFFFFFFFFFFFFLL;
      if (v30)
      {
        v57 = v80 - &v81;
        if (a1 - v80 == -7)
        {
          v57 = 0;
        }

        v58 = v57 + a1 - v80 + 8;
        if (v58 == 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = &v81 + v58;
        }

        v60 = *(v59 + 1);
        v61 = v59 + 8 - &v82;
        if (v60 == 1)
        {
          v61 = 0;
        }

        v62 = v61 + v60;
        v63 = &v82 - &v78;
        if (v62 == 1)
        {
          v63 = 0;
        }

        v64 = v63 + v62;
        v78 = v64;
        v65 = &v78 - &v82;
        if (v64 == 1)
        {
          v65 = 0;
        }

        v66 = v65 + v64;
        v67 = &v82 - v80;
        if (v66 == 1)
        {
          v67 = 0;
        }

        v68 = v67 + v66;
        v80[0] = v68;
        v69 = v80 - &v82;
        if (v68 == 1)
        {
          v69 = 0;
        }

        v70 = v69 + v68;
        v71 = &v82 - &v81;
        if (v70 == 1)
        {
          v71 = 0;
        }

        v81 = v71 + v70;
        boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::insert_equal(&v82, a1, &v81, v55);
      }

      else
      {
        v72 = v79 - &v82;
        if (v79[0] == 1)
        {
          v72 = 0;
        }

        v73 = &v82 - &v81;
        if (v72 + v79[0] == 1)
        {
          v73 = 0;
        }

        v81 = v73 + v72 + v79[0];
        boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::replace_node(a1 + 8, &v81, v8 + 8 * v23);
      }

      *(a2 - 8) = *(a2 - 8) & 0xC000000000000000 | v23;
      if (v26 <= 2)
      {
        __assert_rtn("priv_expand", "rbtree_best_fit.hpp", 1115, "block->m_size >= BlockCtrlUnits");
      }

      v35 = *(a1 + 40) + 8 * (v23 - v9);
LABEL_95:
      *(a1 + 40) = v35;
      v74 = *(a2 - 8);
      *(a2 - 8) = v74 | 0x8000000000000000;
      *(v8 + 8 * v74 + 8) |= 0x4000000000000000uLL;
      v20 = *(a2 - 8);
      goto LABEL_96;
    }

LABEL_101:
    __assert_rtn("assert_alignment", "mem_algo_common.hpp", 106, "uint_ptr % Alignment == 0");
  }

  return 0;
}

char *boost::intrusive::bstbase3<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,(boost::intrusive::algo_types)5,void>::begin(char *result, uint64_t a2)
{
  v2 = &v9 - v10;
  if (a2 - &v9 == 1)
  {
    v2 = 0;
  }

  v3 = v2 + a2 - &v9;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &v10[v3];
  }

  v5 = *(v4 + 1);
  v6 = v4 + 8 - &v11;
  if (v5 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + v5;
  v8 = (&v11 - result);
  if (v7 == 1)
  {
    v8 = 0;
  }

  *result = &v8[v7];
  return result;
}

BOOL boost::intrusive::operator==(char *a1, char *a2)
{
  v2 = a1 - v10;
  if (*a1 == 1)
  {
    v2 = 0;
  }

  v3 = v2 + *a1;
  v4 = a2 - v9;
  if (*a2 == 1)
  {
    v4 = 0;
  }

  v5 = v4 + *a2;
  if (v3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = &v10[v3];
  }

  v7 = &v9[v5];
  if (v5 == 1)
  {
    v7 = 0;
  }

  return v6 == v7;
}

char *boost::intrusive::multiset_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,void>::insert(char *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = a3 - &v9;
  if (*a3 == 1)
  {
    v4 = 0;
  }

  v5 = v4 + *a3;
  v6 = &v9 - &v8;
  if (v5 == 1)
  {
    v6 = 0;
  }

  v8 = v6 + v5;
  return boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::insert_equal(a1, a2, &v8, a4);
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C64390);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7B64400, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

id _PFStoryRecipeDisplayAssetNormalizationDataFromMediaAnalysisDictionaryRev0(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:12];
  v3 = [v2 mutableBytes];
  *v3 = -32766;
  v4 = [v1 objectForKeyedSubscript:@"ColorCastCI"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = llround((_objectToDouble(v6) + 0.1) / 0.4 * 255.0);
    if (v7 >= 255)
    {
      v7 = 255;
    }

    *(v3 + 10) = v7 & ~(v7 >> 31);
  }

  v8 = [v1 objectForKeyedSubscript:@"ContrastCI"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = llround((_objectToDouble(v10) + 0.15) / 0.55 * 255.0);
    if (v11 >= 255)
    {
      v11 = 255;
    }

    *(v3 + 4) = v11 & ~(v11 >> 31);
  }

  v12 = [v1 objectForKeyedSubscript:@"ExposureAndBlackPointCI"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = llround((_objectToDouble(v14) + 0.01) / 0.02 * 255.0);
    if (v15 >= 255)
    {
      v15 = 255;
    }

    *(v3 + 6) = v15 & ~(v15 >> 31);

    v16 = [v13 objectAtIndexedSubscript:1];
    v17 = llround((_objectToDouble(v16) + 0.01) / 0.02 * 255.0);
    if (v17 >= 255)
    {
      v17 = 255;
    }

    *(v3 + 5) = v17 & ~(v17 >> 31);
  }

  v18 = [v1 objectForKeyedSubscript:@"HighKeyCI"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectAtIndexedSubscript:0];
    v21 = llround((_objectToDouble(v20) + 0.2) / 1.5 * 255.0);
    if (v21 >= 255)
    {
      v21 = 255;
    }

    *(v3 + 8) = v21 & ~(v21 >> 31);
  }

  v22 = [v1 objectForKeyedSubscript:@"HighlightsCI"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 objectAtIndexedSubscript:0];
    v25 = llround((_objectToDouble(v24) + 0.4) / 0.42 * 255.0);
    if (v25 >= 255)
    {
      v25 = 255;
    }

    *(v3 + 7) = v25 & ~(v25 >> 31);
  }

  v26 = [v1 objectForKeyedSubscript:@"VibrancyCI"];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 objectAtIndexedSubscript:0];
    v29 = llround((_objectToDouble(v28) + 0.075) / 0.225 * 255.0);
    if (v29 >= 255)
    {
      v29 = 255;
    }

    *(v3 + 9) = v29 & ~(v29 >> 31);
  }

  v30 = [v1 objectForKeyedSubscript:@"WhiteBalanceTempTintCI"];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 objectAtIndexedSubscript:0];
    v33 = llround((_objectToDouble(v32) + -4200.0) / 2000.0 * 255.0);
    if (v33 >= 255)
    {
      v33 = 255;
    }

    *(v3 + 2) = v33 & ~(v33 >> 31);

    v34 = [v31 objectAtIndexedSubscript:1];
    v35 = llround((_objectToDouble(v34) + 20.0) / 40.0 * 255.0);
    if (v35 >= 255)
    {
      v35 = 255;
    }

    *(v3 + 3) = v35 & ~(v35 >> 31);
  }

  return v2;
}

double _objectToDouble(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v1 doubleValue];
    v2 = v3;
  }

  return v2;
}

id PFStoryRecipeDisplayAssetNormalizationDataFromMediaAnalysisDictionaryAndRevision(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    v6 = 0;
    if (!a2 && v5)
    {
      v6 = _PFStoryRecipeDisplayAssetNormalizationDataFromMediaAnalysisDictionaryRev0(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PFPosterCurrentAllowedLayoutStrategies()
{
  if (PFPosterIsAdaptiveLayoutEnabled())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

id PFMap(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PFMapDictionary(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = a1;
    v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PFMapDictionary_block_invoke;
    v10[3] = &unk_1E7B64898;
    v7 = v6;
    v11 = v7;
    v12 = v3;
    [v5 enumerateKeysAndObjectsUsingBlock:v10];

    v8 = v12;
    a1 = v7;
  }

  return a1;
}

void __PFMapDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

uint64_t PFCount(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v7 += v4[2](v4, *(*(&v11 + 1) + 8 * i));
      }

      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *PFMetadataStringForMetadataLoadOptions(__int16 a1)
{
  if ((a1 & 2) != 0)
  {
    v2 = [&stru_1F2A8EB68 stringByAppendingString:@"lookforxmpsidecar|"];
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = &stru_1F2A8EB68;
  if (a1)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@"usejpegfastpath|"];

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 0x10) != 0)
  {
    v6 = [(__CFString *)v2 stringByAppendingString:@"createproxy|"];

    v2 = v6;
    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = [(__CFString *)v2 stringByAppendingString:@"allowexportforproxy|"];

  v2 = v7;
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = [(__CFString *)v2 stringByAppendingString:@"nofileaccess|"];

  v2 = v8;
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  v9 = [(__CFString *)v2 stringByAppendingString:@"nooutofprocess"];

  v2 = v9;
  if ((a1 & 0x40) != 0)
  {
LABEL_11:
    v4 = [(__CFString *)v2 stringByAppendingString:@"loadvalues"];

    v2 = v4;
  }

LABEL_12:
  if (![(__CFString *)v2 length])
  {

    v2 = @"none";
  }

  return v2;
}

void cleanJSON(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v2 = [v1 allKeys];
      v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (!v3)
      {
        goto LABEL_27;
      }

      v5 = v3;
      v6 = *v21;
      *&v4 = 138412290;
      v19 = v4;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v20 + 1) + 8 * v7);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v9 = metadataLog;
            if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v25 = v8;
              _os_log_error_impl(&dword_1B35C1000, v9, OS_LOG_TYPE_ERROR, "Invalid key: %@", buf, 0xCu);
            }

            [v1 removeObjectForKey:{v8, v19}];
          }

          v10 = [v1 objectForKeyedSubscript:{v8, v19}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [(__CFString *)v11 objCType];
            if (*v12 == 100 && !v12[1])
            {
              [(__CFString *)v11 doubleValue];
              if ((__fpclassifyd(v13) - 1) <= 1)
              {
                v14 = v1;
                v15 = @"null";
                goto LABEL_23;
              }
            }

            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            cleanJSON(v10);
            goto LABEL_25;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = [v10 description];
              v14 = v1;
              v15 = v11;
LABEL_23:
              [v14 setObject:v15 forKeyedSubscript:v8];
LABEL_24:
            }
          }

LABEL_25:

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (!v5)
        {
LABEL_27:

          goto LABEL_42;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 count])
    {
      v16 = 0;
      do
      {
        v17 = [v1 objectAtIndexedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          cleanJSON(v17);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v18 = [v17 description];
                    [v1 setObject:v18 atIndexedSubscript:v16];
                  }
                }
              }
            }
          }
        }

        ++v16;
      }

      while ([v1 count] > v16);
    }
  }

LABEL_42:
}

void PFGetDimensionsFromImageProperties(void *a1, void *a2, void *a3, void *a4)
{
  v20 = a1;
  v7 = [v20 objectForKey:*MEMORY[0x1E696DE78]];
  v8 = v20;
  if (!v7)
  {
    v9 = [v20 objectForKey:*MEMORY[0x1E696DF28]];
    if (!v9 || (v10 = v9, [v9 objectForKey:*MEMORY[0x1E696DF58]], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
    {
      v7 = &unk_1F2AAB398;
    }

    v8 = v20;
  }

  if (a2)
  {
    v11 = v7;
    v8 = v20;
    *a2 = v7;
  }

  v12 = [v8 objectForKey:@"RawPixelWidth"];
  if (!v12)
  {
    v12 = [v20 objectForKey:*MEMORY[0x1E696DED8]];
    if (!v12)
    {
      v18 = [v20 objectForKey:*MEMORY[0x1E696D9B0]];
      v13 = [v18 objectForKey:*MEMORY[0x1E696DAA8]];

      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v13 = v12;
  if (a3)
  {
LABEL_11:
    v14 = v13;
    *a3 = v13;
  }

LABEL_12:
  v15 = [v20 objectForKey:@"RawPixelHeight"];
  if (v15 || ([v20 objectForKey:*MEMORY[0x1E696DEC8]], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v19 = [v20 objectForKey:*MEMORY[0x1E696D9B0]];
  v16 = [v19 objectForKey:*MEMORY[0x1E696DAB0]];

  if (a4)
  {
LABEL_15:
    v17 = v16;
    *a4 = v16;
  }

LABEL_16:
}

__CFString *PFDisplayAssetPlaybackStyleDescription(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unsupported";
  }

  else
  {
    return off_1E7B64A58[a1 - 1];
  }
}

__CFString *PFStoryRecipeClipMotionStyleDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E7B64A88[a1 - 1];
  }
}

__CFString *PFStoryRecipeClipTransitionKindDescription(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"none";
  }

  else
  {
    return off_1E7B64AA8[a1 - 1];
  }
}

id PFPosterSettlingEffectGatingStatisticsAnalyticsPayload(unsigned int *a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = @"Default";
  if (a2 == 1)
  {
    v5 = @"Interactive";
  }

  if (a2 == 2)
  {
    v5 = @"Overnight";
  }

  v6 = v5;
  [v4 setObject:v6 forKeyedSubscript:@"GatingLevel"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:*a1];
  [v4 setObject:v7 forKeyedSubscript:@"FailedFeatureDisabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:a1[1]];
  [v4 setObject:v8 forKeyedSubscript:@"FailedHardwareUnsupported"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:a1[2]];
  [v4 setObject:v9 forKeyedSubscript:@"FailedResourceAvailability"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:a1[3]];
  [v4 setObject:v10 forKeyedSubscript:@"FailedUnsupportedAdjustments"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:a1[4]];
  [v4 setObject:v11 forKeyedSubscript:@"FailedGenericError"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:a1[5]];
  [v4 setObject:v12 forKeyedSubscript:@"FailedMetadataCheck"];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:a1[6]];
  [v4 setObject:v13 forKeyedSubscript:@"FailedStabilization"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:a1[7]];
  [v4 setObject:v14 forKeyedSubscript:@"FailedVideoQuality"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:a1[8]];
  [v4 setObject:v15 forKeyedSubscript:@"FailedMetadataIntegrity"];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:a1[9]];
  [v4 setObject:v16 forKeyedSubscript:@"FailedFRC"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:a1[10]];
  [v4 setObject:v17 forKeyedSubscript:@"FailedVideoDecision"];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:a1[11]];
  [v4 setObject:v18 forKeyedSubscript:@"FailedLayoutDecision"];

  v19 = [MEMORY[0x1E696AD98] numberWithInt:a1[12]];
  [v4 setObject:v19 forKeyedSubscript:@"FailedStillTransition"];

  return v4;
}

void sub_1B35FC0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B35FC400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B35FC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *convertTypeToKey(int a1, int a2)
{
  if (convertTypeToKey_onceToken != -1)
  {
    dispatch_once(&convertTypeToKey_onceToken, &__block_literal_global_3300);
  }

  switch(a1)
  {
    case 0:
      __assert_rtn("convertTypeToKey", "PFMediaMetadata.m", 68, "false");
    case 1:
      v4 = MEMORY[0x1E69867A8];
      v5 = MEMORY[0x1E6987890];
      goto LABEL_29;
    case 2:
      v8 = *MEMORY[0x1E6986808];
      v9 = @"com.apple.photos.originating.signature";
      goto LABEL_20;
    case 3:
      v8 = *MEMORY[0x1E6986818];
      v9 = @"com.apple.photos.render.originating.signature";
      goto LABEL_20;
    case 4:
      v8 = *MEMORY[0x1E6986810];
      v9 = @"com.apple.photos.variation-identifier";
LABEL_20:
      if (a2)
      {
        v8 = v9;
      }

      goto LABEL_43;
    case 5:
      v8 = @"com.apple.photos.live-photo.minimum-client-version";
      goto LABEL_35;
    case 6:
      v6 = MEMORY[0x1E69867C8];
      goto LABEL_39;
    case 7:
      v6 = MEMORY[0x1E69867F8];
      goto LABEL_39;
    case 8:
      v8 = convertTypeToKey_quicktimeAutoLivePhotoKey;
      goto LABEL_35;
    case 9:
      v8 = convertTypeToKey_quicktimeVitalityScoreKey;
      goto LABEL_35;
    case 10:
      v6 = MEMORY[0x1E6990AB0];
      goto LABEL_39;
    case 11:
      v6 = MEMORY[0x1E6986800];
      goto LABEL_39;
    case 12:
      v4 = MEMORY[0x1E6986888];
      v5 = MEMORY[0x1E69878F8];
LABEL_29:
      if (a2)
      {
        v4 = v5;
      }

      goto LABEL_31;
    case 13:
      v6 = MEMORY[0x1E6990A88];
      goto LABEL_39;
    case 14:
      v6 = MEMORY[0x1E6990AE8];
      goto LABEL_39;
    case 15:
      v8 = @"20";
      goto LABEL_40;
    case 16:
      v8 = *MEMORY[0x1E6987888];
      if (!a2)
      {
        v8 = 0;
      }

      goto LABEL_43;
    case 17:
      v8 = *MEMORY[0x1E69878D0];
      goto LABEL_35;
    case 18:
      v6 = MEMORY[0x1E696D270];
      goto LABEL_39;
    case 19:
      v6 = MEMORY[0x1E6990AB8];
      goto LABEL_39;
    case 20:
      v6 = MEMORY[0x1E69867B0];
      goto LABEL_39;
    case 21:
      v6 = MEMORY[0x1E69867B8];
LABEL_39:
      v8 = *v6;
LABEL_40:
      v10 = a2 == 0;
      goto LABEL_41;
    case 22:
      v8 = @"com.apple.quicktime.limit-still-image-transform";
LABEL_35:
      v10 = a2 == 1;
LABEL_41:
      if (!v10)
      {
        v8 = 0;
      }

      goto LABEL_43;
    case 23:
      v7 = @"58";
      break;
    case 24:
      v7 = @"com.apple.quicktime.live-photo.transition-vitality-score.v1";
      break;
    case 25:
      v4 = MEMORY[0x1E69878E0];
      goto LABEL_31;
    case 26:
      v4 = MEMORY[0x1E69878E8];
LABEL_31:
      v8 = *v4;
LABEL_43:
      v7 = v8;
      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

uint64_t __convertTypeToKey_block_invoke()
{
  v0 = [MEMORY[0x1E6987FE0] keyForIdentifier:*MEMORY[0x1E6987788]];
  v1 = convertTypeToKey_quicktimeAutoLivePhotoKey;
  convertTypeToKey_quicktimeAutoLivePhotoKey = v0;

  convertTypeToKey_quicktimeVitalityScoreKey = [MEMORY[0x1E6987FE0] keyForIdentifier:*MEMORY[0x1E69877E0]];

  return MEMORY[0x1EEE66BB8]();
}

void _AuxiliaryImageCVPixelBufferReleaseBytesCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B35FE314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float64x2_t lhc_to_srgb(float64x2_t *a1, float64x2_t a2, double a3)
{
  v4 = __sincos_stret(a2.f64[1]);
  v5.f64[0] = v4.__cosval * a3;
  v6.f64[0] = v4.__sinval * a3;
  if (matrix_ipt_to_lms_once != -1)
  {
    v37 = v6;
    v33 = v5;
    dispatch_once(&matrix_ipt_to_lms_once, &__block_literal_global_3454);
    v5 = v33;
    v6 = v37;
  }

  v7 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(matrix_ipt_to_lms_IPTToLMS, a2.f64[0]), xmmword_1EB848660, v5.f64[0]), xmmword_1EB848680, v6.f64[0]);
  v29 = vextq_s8(v7, v7, 8uLL).u64[0];
  v35 = vmlaq_f64(vmlaq_f64(vmulq_f64(a2, *algn_1EB848650), v5, unk_1EB848670), v6, unk_1EB848690);
  v39 = *&v7.f64[0];
  v31 = _simd_pow_d2(vabsq_f64(v7), vdupq_n_s64(0x40029ACA6B29ACA7uLL));
  v8 = _simd_pow_d2(*&vabsq_f64(v35), xmmword_1B36A1DC0);
  v9 = v8;
  if (matrix_lms_to_rgb_once != -1)
  {
    x = v8;
    dispatch_once(&matrix_lms_to_rgb_once, &__block_literal_global_101);
    v9 = x;
  }

  v10.i64[0] = v39;
  v10.i64[1] = v29;
  v11 = vnegq_f64(0);
  __asm { FMOV            V6.2D, #1.0 }

  v17 = vmulq_f64(v31, vandq_s8(vorrq_s8(vandq_s8(v10, v11), _Q6), vorrq_s8(vcltzq_f64(v10), vcgtzq_f64(v10))));
  v18 = vmulq_f64(v9, vbslq_s8(vorrq_s8(vcltzq_f64(v35), vcgtzq_f64(v35)), vorrq_s8(vandq_s8(v35, v11), _Q6), 0));
  v19 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v17, *algn_1EB8485D0), unk_1EB8485F0, v17, 1), v18, unk_1EB848610);
  v20 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(matrix_lms_to_rgb_LMSToRGB, v17.f64[0]), xmmword_1EB8485E0, v17, 1), xmmword_1EB848600, v18.f64[0]);
  v36 = vbslq_s8(vorrq_s8(vcltzq_f64(v19), vcgtzq_f64(v19)), vorrq_s8(vandq_s8(v19, v11), _Q6), 0);
  v40 = vandq_s8(vorrq_s8(vandq_s8(v20, v11), _Q6), vorrq_s8(vcltzq_f64(v20), vcgtzq_f64(v20)));
  v30 = vabsq_f64(v20);
  v32 = vabsq_f64(v19);
  xa = _simd_pow_d2(v30, vdupq_n_s64(0x3FDAAAAACE754379uLL));
  v21 = _simd_pow_d2(*&v32.f64[0], xmmword_1B36A1DD0);
  v22.f64[0] = 1.055;
  v23.f64[0] = -0.055;
  v24 = vmlaq_f64(v23, v22, v21);
  v21.f64[1] = xa.f64[1];
  v21.f64[0] = 12.92;
  v25 = vdupq_n_s64(0x3F69A5C37387B719uLL);
  result = vmulq_f64(v36, vbslq_s8(vcltzq_s64(vcgtq_f64(v32, v25).u64[0]), v24, vmulq_f64(v32, v21)));
  *a1 = vmulq_f64(v40, vbslq_s8(vcltzq_s64(vcgtq_f64(v30, v25)), vmlaq_f64(vdupq_n_s64(0xBFAC28F5C28F5C29), vdupq_n_s64(0x3FF0E147AE147AE1uLL), xa), vmulq_f64(v30, vdupq_n_s64(0x4029D70A3D70A3D7uLL))));
  a1[1] = result;
  return result;
}

double __matrix_lms_to_rgb_block_invoke()
{
  __invert_d3();
  xmmword_1EB8485E0 = v3;
  unk_1EB8485F0 = v4;
  xmmword_1EB848600 = v5;
  unk_1EB848610 = v6;
  result = *&v1;
  matrix_lms_to_rgb_LMSToRGB = v1;
  *algn_1EB8485D0 = v2;
  return result;
}

double __matrix_ipt_to_lms_block_invoke()
{
  __invert_d3();
  xmmword_1EB848660 = v3;
  unk_1EB848670 = v4;
  xmmword_1EB848680 = v5;
  unk_1EB848690 = v6;
  result = *&v1;
  matrix_ipt_to_lms_IPTToLMS = v1;
  *algn_1EB848650 = v2;
  return result;
}

void _AuxiliaryImageCVPixelBufferReleaseBytesCallback_3598(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t ImageIOLibraryCore()
{
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ImageIOLibraryCore_frameworkLibrary;
}

uint64_t getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr;
  v6 = getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr;
  if (!getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke;
    v2[3] = &unk_1E7B65660;
    v2[4] = &v3;
    __getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B3603CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "kCGImageAuxiliaryDataInfoPixelBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3604CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround(CGImageRef *a1)
{
  ColorSpace = CGImageGetColorSpace(*a1);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
  {
    v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (v3)
    {
      v4 = v3;
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(*a1, v3);
      CFRelease(*a1);
      *a1 = CopyWithColorSpace;

      CFRelease(v4);
    }
  }
}

id PFStoryColorGradeKindToString(uint64_t a1)
{
  v1 = &ColorGradeKindInfos;
  v2 = 13;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[1];
LABEL_6:

  return v3;
}

uint64_t PFStoryColorGradeKindNamed(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = &ColorGradeKindInfos;
  v3 = 13;
  do
  {
    v4 = v2[1];
    v5 = v4;
    if (v4 == v1)
    {

LABEL_9:
      v7 = *v2;
      goto LABEL_10;
    }

    v6 = [v4 isEqualToString:v1];

    if (v6)
    {
      goto LABEL_9;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v1;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "unsupported color grade kind '%@'", &v9, 0xCu);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t PFStoryColorGradeKindGetTier(uint64_t a1)
{
  if ((a1 - 2) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1B36A2000[a1 - 2];
  }
}

uint64_t PFStoryColorGradeKindGetEnergy(uint64_t a1)
{
  if ((a1 - 2) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1B36A2058[a1 - 2];
  }
}

uint64_t PFStoryColorGradeKindDefaultForColorGradeCategory(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"silly"])
    {
      goto LABEL_3;
    }

    if ([v2 isEqualToString:@"extreme"])
    {
      v3 = 9;
      goto LABEL_10;
    }

    if ([v2 isEqualToString:@"energetic"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"motivational"))
    {
      v3 = 8;
      goto LABEL_10;
    }

    if ([v2 isEqualToString:@"inspirational"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"playful"))
    {
LABEL_3:
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"epic"])
    {
      v3 = 6;
    }

    else
    {
      if ([v2 isEqualToString:@"hopeful"])
      {
        goto LABEL_16;
      }

      if ([v2 isEqualToString:@"sentimental"])
      {
        v3 = 5;
        goto LABEL_10;
      }

      if ([v2 isEqualToString:@"romantic"])
      {
LABEL_16:
        v3 = 4;
      }

      else if ([v2 isEqualToString:@"peaceful"])
      {
        v3 = 10;
      }

      else if ([v2 isEqualToString:@"nostalgic"])
      {
        v3 = 11;
      }

      else if ([v2 isEqualToString:@"reflective"])
      {
        v3 = 12;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

void sub_1B360631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 216), 8);
  _Block_object_dispose((v33 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B36078D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1B3607C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1B8C64C40](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B360A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4152(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B360A7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B360AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B36113F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x1B3611344);
  }

  _Unwind_Resume(a1);
}

void sub_1B361188C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x1B36117DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t PFPosterWantsLowLuminanceContent()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"PI_PARALLAX_FORCE_ENABLE_LOW_LUMINANCE"];

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    if (PFPosterDeviceSupportsLowLuminance_onceToken[0] != -1)
    {
      dispatch_once(PFPosterDeviceSupportsLowLuminance_onceToken, &__block_literal_global_42_4313);
    }

    v2 = PFPosterDeviceSupportsLowLuminance_supportsLowLuminance;
  }

  return v2 & 1;
}

uint64_t __PFPosterDeviceSupportsLowLuminance_block_invoke()
{
  result = MGGetBoolAnswer();
  PFPosterDeviceSupportsLowLuminance_supportsLowLuminance = result;
  return result;
}

uint64_t PFPosterDeviceSupportsSegmentation()
{
  if (MGGetBoolAnswer())
  {
    if (PFPosterIsRunningInVirtualMachine_onceToken != -1)
    {
      dispatch_once(&PFPosterIsRunningInVirtualMachine_onceToken, &__block_literal_global_47_4321);
    }

    v0 = PFPosterIsRunningInVirtualMachine_isVirtualDevice ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t __PFPosterIsRunningInVirtualMachine_block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  PFPosterIsRunningInVirtualMachine_isVirtualDevice = result;
  return result;
}

BOOL PFPosterDeviceSupportsSpatialPhoto()
{
  if (PFPosterDeviceSpatialPhotoSupportLevel_onceToken[0] != -1)
  {
    dispatch_once(PFPosterDeviceSpatialPhotoSupportLevel_onceToken, &__block_literal_global_4330);
  }

  return PFPosterDeviceSpatialPhotoSupportLevel_supportLevel != 0;
}

void __PFPosterDeviceSpatialPhotoSupportLevel_block_invoke()
{
  v0 = MGGetSInt64Answer();
  v6 = MGCopyAnswer();
  v1 = [v6 isEqualToString:@"iPad"];
  v2 = [v6 isEqualToString:@"iPhone"];
  PFPosterDeviceSpatialPhotoSupportLevel_supportLevel = 0;
  if (v1)
  {
    if (v0 >= 0x8103)
    {
      PFPosterDeviceSpatialPhotoSupportLevel_supportLevel = 2;
    }

    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"POSTER_ENABLE_SPATIALPHOTO_EXTENDED"];

    if (v4 && v0 > 0x8100)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    if (v0 >> 4 > 0x810)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (v0 >= 0x8101)
    {
LABEL_6:
      v5 = 1;
LABEL_10:
      PFPosterDeviceSpatialPhotoSupportLevel_supportLevel = v5;
    }
  }

LABEL_11:
}

uint64_t PFPosterDeviceSpatialPhotoSupportLevel()
{
  if (PFPosterDeviceSpatialPhotoSupportLevel_onceToken[0] != -1)
  {
    dispatch_once(PFPosterDeviceSpatialPhotoSupportLevel_onceToken, &__block_literal_global_4330);
  }

  return PFPosterDeviceSpatialPhotoSupportLevel_supportLevel;
}

uint64_t PFPosterIsSpatialPhotoEnabled()
{
  if (PFPosterIsSpatialPhotoEnabled_onceToken[0] != -1)
  {
    dispatch_once(PFPosterIsSpatialPhotoEnabled_onceToken, &__block_literal_global_23);
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (PFPosterDeviceSpatialPhotoSupportLevel_onceToken[0] != -1)
    {
      dispatch_once(PFPosterDeviceSpatialPhotoSupportLevel_onceToken, &__block_literal_global_4330);
    }

    v0 = PFPosterDeviceSpatialPhotoSupportLevel_supportLevel;
    if (PFPosterDeviceSpatialPhotoSupportLevel_supportLevel)
    {
      v0 = PFPosterIsSpatialPhotoEnabled_forceDisable ^ 1;
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void __PFPosterIsSpatialPhotoEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PFPosterIsSpatialPhotoEnabled_forceDisable = [v0 BOOLForKey:@"POSTER_DISABLE_SPATIALPHOTO"];
}

uint64_t PFPosterIsSpatialPhotoOcclusionEnabled()
{
  if (PFPosterIsSpatialPhotoOcclusionEnabled_onceToken != -1)
  {
    dispatch_once(&PFPosterIsSpatialPhotoOcclusionEnabled_onceToken, &__block_literal_global_31);
  }

  if (PFPosterIsSpatialPhotoEnabled() && _os_feature_enabled_impl())
  {
    v0 = PFPosterIsSpatialPhotoOcclusionEnabled_forceDisable ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void __PFPosterIsSpatialPhotoOcclusionEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PFPosterIsSpatialPhotoOcclusionEnabled_forceDisable = [v0 BOOLForKey:@"POSTER_DISABLE_SPATIALPHOTO_OCCLUSION"];
}

uint64_t PFPosterIsAdaptiveLayoutEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"PI_DISABLE_ADAPTIVE_LAYOUT"];

  if (v1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

void sub_1B36125D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4621(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3614B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B36151C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3615810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3616078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3616B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3616E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B361B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double PFDeviceScreenSize()
{
  v0 = [MEMORY[0x1E6979328] mainDisplay];
  v1 = v0;
  if (v0)
  {
    [v0 bounds];
    v3 = v2;
  }

  else
  {
    v3 = -1.0;
  }

  return v3;
}

double PFDeviceNativeScreenSize()
{
  v0 = [MEMORY[0x1E6979328] mainDisplay];
  v1 = v0;
  if (v0)
  {
    [v0 nativeSize];
    v3 = v2;
  }

  else
  {
    v3 = -1.0;
  }

  return v3;
}

double PFDeviceScreenScale()
{
  v0 = [MEMORY[0x1E6979328] mainDisplay];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 currentMode];
    v3 = [v2 preferredScale];
  }

  else
  {
    v3 = 1.0;
  }

  return v3;
}

double PFDeviceLockScreenFocusAreaRectNormalized()
{
  if (PFDeviceLockScreenFocusAreaRectNormalized_onceToken[0] != -1)
  {
    dispatch_once(PFDeviceLockScreenFocusAreaRectNormalized_onceToken, &__block_literal_global_4966);
  }

  return *&PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_0;
}

void __PFDeviceLockScreenFocusAreaRectNormalized_block_invoke()
{
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_0 = 0;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_1 = 0;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_2 = 0x3FF0000000000000;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_3 = 0x3FF0000000000000;
  v0 = dispatch_group_create();
  v1 = objc_alloc_init(getSBSWallpaperServiceClass());
  dispatch_group_enter(v0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PFDeviceLockScreenFocusAreaRectNormalized_block_invoke_2;
  v7[3] = &unk_1E7B66D98;
  v8 = v1;
  v2 = v0;
  v9 = v2;
  v3 = v1;
  _dispatchWithBoostedQoS(v7);
  if (_isPhotosPosterProvider_onceToken[0] != -1)
  {
    dispatch_once(_isPhotosPosterProvider_onceToken, &__block_literal_global_14);
  }

  if (_isPhotosPosterProvider_isPhotosPosterProvider)
  {
    v4 = 5000000000;
  }

  else
  {
    v4 = 30000000000;
  }

  v5 = dispatch_time(0, v4);
  if (dispatch_group_wait(v2, v5) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFDeviceLockScreenFocusAreaRectNormalized] timeout while requesting lockscreen focus area", v6, 2u);
  }

  [v3 invalidate];
}

id getSBSWallpaperServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSBSWallpaperServiceClass_softClass;
  v7 = getSBSWallpaperServiceClass_softClass;
  if (!getSBSWallpaperServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSBSWallpaperServiceClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getSBSWallpaperServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B361C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PFDeviceLockScreenFocusAreaRectNormalized_block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __PFDeviceLockScreenFocusAreaRectNormalized_block_invoke_3;
  v2[3] = &unk_1E7B65278;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 fetchContentCutoutBoundsForVariant:0 orientation:1 completionHandler:v2];
}

void _dispatchWithBoostedQoS(void *a1)
{
  v1 = _isPhotosPosterProvider_onceToken[0];
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(_isPhotosPosterProvider_onceToken, &__block_literal_global_14);
  }

  if (_isPhotosPosterProvider_isPhotosPosterProvider)
  {
    v3 = 33;
  }

  else
  {
    v3 = 25;
  }

  v4 = dispatch_get_global_queue(v3, 0);
  dispatch_async(v4, v2);
}

void ___isPhotosPosterProvider_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  _isPhotosPosterProvider_isPhotosPosterProvider = [v1 isEqualToString:@"PhotosPosterProvider"];
}

void __PFDeviceLockScreenFocusAreaRectNormalized_block_invoke_3(uint64_t a1, double a2, double a3, double a4, double a5)
{
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_0 = *&a2;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_1 = *&a3;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_2 = *&a4;
  PFDeviceLockScreenFocusAreaRectNormalized_sDeviceLockScreenFocusAreaRect_3 = *&a5;
  dispatch_group_leave(*(a1 + 32));
}

Class __getSBSWallpaperServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B65310;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SBSWallpaperService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSBSWallpaperServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

double PFDeviceLockScreenApproximateTimeRectNormalized_SBS(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x1E69E9840];
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v1 = 4;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "interface orientation is unknown", v28, 2u);
      }

      v1 = 0;
    }
  }

  *v28 = 0;
  v29 = v28;
  v30 = 0x4010000000;
  v31 = &unk_1B36BE437;
  v2 = *(MEMORY[0x1E695F058] + 16);
  v32 = *MEMORY[0x1E695F058];
  v33 = v2;
  v3 = dispatch_group_create();
  v4 = objc_alloc_init(getSBSWallpaperServiceClass());
  dispatch_group_enter(v3);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __PFDeviceLockScreenApproximateTimeRectNormalized_SBS_block_invoke;
  v23[3] = &unk_1E7B652C8;
  v5 = v4;
  v24 = v5;
  v26 = v28;
  v27 = v1;
  v6 = v3;
  v25 = v6;
  _dispatchWithBoostedQoS(v23);
  if (_isPhotosPosterProvider_onceToken[0] != -1)
  {
    dispatch_once(_isPhotosPosterProvider_onceToken, &__block_literal_global_14);
  }

  if (_isPhotosPosterProvider_isPhotosPosterProvider)
  {
    v7 = 5000000000;
  }

  else
  {
    v7 = 30000000000;
  }

  v8 = dispatch_time(0, v7);
  dispatch_group_wait(v6, v8);
  v10 = v29[6];
  v9 = v29[7];
  v11 = v29[4] + v10 * 0.0;
  v12 = v29[5] + v9 * 0.0;
  v13 = v9 * 1.33333333;
  v14 = MEMORY[0x1E69E9C10];
  v15 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v22 = v11;
    *&v22[1] = v12;
    *&v22[2] = v10;
    *&v22[3] = v13;
    v16 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412290;
    v35 = v16;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFDeviceLockScreenApproximateTimeRectNormalized_SBS] Time rect from limited occlusion bounds: %@", buf, 0xCu);
  }

  [v5 invalidate];
  v17 = MEMORY[0x1E69E9C10];
  v18 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v21 = v11;
    *&v21[1] = v12;
    *&v21[2] = v10;
    *&v21[3] = v13;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412290;
    v35 = v19;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFDeviceLockScreenApproximateTimeRectNormalized_SBS] Returning: %@", buf, 0xCu);
  }

  _Block_object_dispose(v28, 8);
  return v11;
}

void sub_1B361CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double PFDeviceLockScreenApproximateTimeRectNormalized(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v2 = getPRUISPosterLayoutUtilitiesClass_softClass;
  v27 = getPRUISPosterLayoutUtilitiesClass_softClass;
  if (!getPRUISPosterLayoutUtilitiesClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v29 = __getPRUISPosterLayoutUtilitiesClass_block_invoke;
    v30 = &unk_1E7B65660;
    v31 = &v24;
    __getPRUISPosterLayoutUtilitiesClass_block_invoke(&buf);
    v2 = v25[3];
  }

  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = v2;
  _Block_object_dispose(&v24, 8);
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (a1 == 2)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v9 = getPRPosterRoleLockScreenSymbolLoc_ptr;
    v27 = getPRPosterRoleLockScreenSymbolLoc_ptr;
    if (!getPRPosterRoleLockScreenSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v29 = __getPRPosterRoleLockScreenSymbolLoc_block_invoke;
      v30 = &unk_1E7B65660;
      v31 = &v24;
      __getPRPosterRoleLockScreenSymbolLoc_block_invoke(&buf);
      v9 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v9)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v10 = *v9;
    v23 = 0;
    v11 = [v2 titleBoundsForLayout:0 orientation:v8 role:v10 error:&v23];
    v12 = v23;
    if (v11)
    {
      [v11 rectValue];
      v3 = v13;
      v4 = v14;
      v5 = v15;
      v6 = v16;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFDeviceLockScreenApproximateTimeRect: PRUISPosterLayoutUtilities.getTitleBounds returned an error: %{public}@", &buf, 0xCu);
    }
  }

  v33.origin.x = v3;
  v33.origin.y = v4;
  v33.size.width = v5;
  v33.size.height = v6;
  if (CGRectIsEmpty(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFDeviceLockScreenApproximateTimeRect: Falling back to SBS", &buf, 2u);
    }

    v3 = PFDeviceLockScreenApproximateTimeRectNormalized_SBS(a1);
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v22 = v3;
    *&v22[1] = v4;
    *&v22[2] = v5;
    *&v22[3] = v6;
    v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFDeviceLockScreenApproximateTimeRectNormalized] Returning: %@", &buf, 0xCu);
  }

  return v3;
}

void sub_1B361D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRUISPosterLayoutUtilitiesClass_block_invoke(uint64_t a1)
{
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PRUISPosterLayoutUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRUISPosterLayoutUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRPosterRoleLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PosterKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B65340;
    v7 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = PosterKitLibraryCore_frameworkLibrary;
    if (PosterKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = PosterKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PRPosterRoleLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterRoleLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

PFDeviceTimeRectCollection *PFDeviceLockScreenTimeRectCollectionNormalized(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x1E69E9840];
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v1 = 4;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "interface orientation is unknown", v40, 2u);
      }

      v1 = 0;
    }
  }

  v2 = [MEMORY[0x1E695DF00] now];
  *v40 = 0;
  v41 = v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4988;
  v44 = __Block_byref_object_dispose__4989;
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v45 = [v3 initWithArray:MEMORY[0x1E695E0F0]];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v4 = getCSProminentLayoutAdaptiveTimeContextClass_softClass;
  v49 = getCSProminentLayoutAdaptiveTimeContextClass_softClass;
  if (!getCSProminentLayoutAdaptiveTimeContextClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v51 = __getCSProminentLayoutAdaptiveTimeContextClass_block_invoke;
    v52 = &unk_1E7B65660;
    v53 = &v46;
    __getCSProminentLayoutAdaptiveTimeContextClass_block_invoke(&buf);
    v4 = v47[3];
  }

  v5 = v4;
  _Block_object_dispose(&v46, 8);
  v6 = objc_alloc_init(v4);
  [v6 setOrientation:v1];
  [v6 setHasSidebarContents:0];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  CSProminentLayoutControllerClass = getCSProminentLayoutControllerClass();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __PFDeviceLockScreenTimeRectCollectionNormalized_block_invoke;
  v36[3] = &unk_1E7B652F0;
  v9 = v6;
  v37 = v9;
  v39 = v40;
  v10 = v7;
  v38 = v10;
  [CSProminentLayoutControllerClass minimumAndMaximumAdaptiveTimeHeightForContext:v9 result:v36];
  if (_isPhotosPosterProvider_onceToken[0] != -1)
  {
    dispatch_once(_isPhotosPosterProvider_onceToken, &__block_literal_global_14);
  }

  if (_isPhotosPosterProvider_isPhotosPosterProvider)
  {
    v11 = 5000000000;
  }

  else
  {
    v11 = 30000000000;
  }

  v12 = dispatch_time(0, v11);
  v13 = dispatch_group_wait(v10, v12);
  v14 = *(v41 + 5);
  if (v14)
  {
    v15 = [v14 count] > 2;
    v14 = *(v41 + 5);
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 == 0 && v15;
  if ([v14 count] < 3)
  {
    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = [*(v41 + 5) firstObject];
    [v17 rectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v56.origin.x = v19;
    v56.origin.y = v21;
    v56.size.width = v23;
    v56.size.height = v25;
    if (CGRectIsNull(v56) || (v57.origin.x = v19, v57.origin.y = v21, v57.size.width = v23, v57.size.height = v25, CGRectIsEmpty(v57)) || (v58.origin.x = v19, v58.origin.y = v21, v58.size.width = v23, v58.size.height = v25, CGRectIsInfinite(v58)) || (v23 == 0.0 || v25 == 0.0 || (v25 == *(MEMORY[0x1E69BDDB0] + 8) ? (v26 = v23 == *MEMORY[0x1E69BDDB0]) : (v26 = 0), v26) ? (v34 = 0.0) : (v34 = v23 * v25), ((fabs(v34) > 0.00000999999975) & v16) == 0))
    {
LABEL_34:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFDeviceLockScreenTimeRectCollectionNormalized] failed while requesting time rect collection", &buf, 2u);
      }

      v33 = [[PFDeviceTimeRectCollection alloc] initWithInvalidCollection];
      goto LABEL_37;
    }
  }

  v27 = [MEMORY[0x1E695DF00] now];
  v28 = MEMORY[0x1E69E9C10];
  v29 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    [v27 timeIntervalSinceDate:v2];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v30;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adaptive time rect fetching finished in %0.3fs", &buf, 0xCu);
  }

  v31 = PFDeviceScreenScale();
  v32 = [PFDeviceTimeRectCollection alloc];
  v33 = [(PFDeviceTimeRectCollection *)v32 initWithPointSpaceSortedTimeRects:*(v41 + 5) screenScale:v31];

LABEL_37:
  _Block_object_dispose(v40, 8);

  return v33;
}

void sub_1B361DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCSProminentLayoutAdaptiveTimeContextClass_block_invoke(uint64_t a1)
{
  CoverSheetKitLibrary();
  result = objc_getClass("CSProminentLayoutAdaptiveTimeContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSProminentLayoutAdaptiveTimeContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getCSProminentLayoutControllerClass(v3);
  }

  return result;
}

id getCSProminentLayoutControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSProminentLayoutControllerClass_softClass;
  v7 = getCSProminentLayoutControllerClass_softClass;
  if (!getCSProminentLayoutControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSProminentLayoutControllerClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getCSProminentLayoutControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B361DD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PFDeviceLockScreenTimeRectCollectionNormalized_block_invoke(uint64_t a1, double a2, double a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = (a3 - a2) / 20.0;
  v7 = 20;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
  v9 = 0.0;
  do
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a2 + v6 * v9];
    [v8 addObject:v10];

    v9 = v9 + 1.0;
    --v7;
  }

  while (v7);
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v8 addObject:v11];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        CSProminentLayoutControllerClass = getCSProminentLayoutControllerClass();
        v19 = *(a1 + 32);
        [v17 floatValue];
        [CSProminentLayoutControllerClass adaptiveTimeFrameForContext:v19 timeHeight:v20];
        v21 = [MEMORY[0x1E696B098] valueWithRect:?];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v21];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __getCSProminentLayoutControllerClass_block_invoke(uint64_t a1)
{
  CoverSheetKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSProminentLayoutController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSProminentLayoutControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoverSheetKitLibrary();
  }
}

void CoverSheetKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoverSheetKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoverSheetKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B65358;
    v3 = 0;
    CoverSheetKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (CoverSheetKitLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __CoverSheetKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoverSheetKitLibraryCore_frameworkLibrary = result;
  return result;
}

void PFFrameApplyingContentsRectInBounds(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  if (a9 > 0.0 && a7 != 0.0 && a8 != 0.0 && (a7 != *MEMORY[0x1E69BDDB0] || a8 != *(MEMORY[0x1E69BDDB0] + 8)))
  {
    v34 = *MEMORY[0x1E69BDDB0];
    v31 = *(MEMORY[0x1E69BDDB0] + 8);
    if (!CGRectIsEmpty(*&a1))
    {
      v25 = a3 * a9;
      if (a3 * a9 != 0.0 && a4 != 0.0 && (v25 != v34 || a4 != v31))
      {
        v32 = a2 + 0.0 + a4 * 0.5;
        v35 = a1 * a9 + 0.0 + v25 * 0.5;
        PFSizeWithAspectRatioFittingSize();
        v28 = v27;
        v30 = v29;
        v33 = v32 + v29 * -0.5;
        v36 = v35 + v27 * -0.5;
        v38.origin.x = a5;
        v38.origin.y = a6;
        v38.size.width = a7;
        v38.size.height = a8;
        CGRectGetWidth(v38);
        v39.origin.x = v36;
        v39.origin.y = v33;
        v39.size.width = v28;
        v39.size.height = v30;
        CGRectGetWidth(v39);
      }
    }
  }
}

void PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock(void *a1)
{
  v1 = a1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock_block_invoke;
  v4[3] = &unk_1E7B65378;
  v6 = v7;
  v2 = v1;
  v5 = v2;
  v3 = MEMORY[0x1B8C64C40](v4);
  v3[2](v3, 1);

  _Block_object_dispose(v7, 8);
}

void sub_1B361E62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PFStoryRecipeLibraryKindEnumerateSupportedValuesUsingBlock_block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __Block_byref_object_copy__5140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3620BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v71 - 256), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1B3621460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5249(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

size_t pf_estimateFullAnimatedImageMemoryCost(CGImageSource *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  Count = CGImageSourceGetCount(a1);
  v9 = *MEMORY[0x1E696E0A8];
  v10[0] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, v3);
  if (ImageAtIndex)
  {
    v5 = ImageAtIndex;
    Height = CGImageGetHeight(ImageAtIndex);
    v7 = Height * Count * CGImageGetBytesPerRow(v5);
    CGImageRelease(v5);
  }

  else
  {
    v7 = 20971521;
  }

  return v7;
}

void sub_1B3622FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B36233B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B36238EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PIImageMedataSetValueMatchingImageProperty(CGImageMetadata *a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!CGImageMetadataSetValueMatchingImageProperty(a1, a2, a3, v7))
  {
    v8 = PFMetadataBuilderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543875;
      v10 = a2;
      v11 = 2114;
      v12 = a3;
      v13 = 2113;
      v14 = v7;
      _os_log_error_impl(&dword_1B35C1000, v8, OS_LOG_TYPE_ERROR, "[XMP metadata builder] Failed to set value for dictionary name %{public}@ key %{public}@ value %{private}@", &v9, 0x20u);
    }
  }
}

id PFMetadataBuilderLog()
{
  if (PFMetadataBuilderLog_onceToken[0] != -1)
  {
    dispatch_once(PFMetadataBuilderLog_onceToken, &__block_literal_global_5657);
  }

  v1 = PFMetadataBuilderLog_log;

  return v1;
}

uint64_t __PFMetadataBuilderLog_block_invoke()
{
  PFMetadataBuilderLog_log = os_log_create("com.apple.photos.PFMetadataBuilder", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id PFStoryDurationInfoDescription(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = *(a1 + 24);
  v3 = __PFStoryDurationInfoDescription_block_invoke(&v8);
  v8 = *a1;
  v4 = __PFStoryDurationInfoDescription_block_invoke(&v8);
  v8 = *(a1 + 48);
  v5 = __PFStoryDurationInfoDescription_block_invoke(&v8);
  v6 = [v2 initWithFormat:@"{ pref: %@, min: %@, max: %@ }", v3, v4, v5];

  return v6;
}

id __PFStoryDurationInfoDescription_block_invoke(CMTime *a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  time = *a1;
  v3 = [v2 initWithFormat:@"%0.1f", CMTimeGetSeconds(&time)];

  return v3;
}

__CFString *PFStringFromPFAdjustmentStyleCast(int a1)
{
  if (a1 < 17)
  {
    if (a1 > 0x10)
    {
      return @"PFAdjustmentStyleCastLAST";
    }

    else
    {
      return off_1E7B655A0[a1];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString *PFStringFromPFAdjustmentStyleCast(PFAdjustmentStyleCast)", v1, v2}];
    return @"PFAdjustmentStyleCastLAST";
  }
}

id PFStringFromPFAdjustmentStyleCastShort(int a1)
{
  if (a1 < 17)
  {
    if (a1 <= 0x10)
    {
      v1 = off_1E7B655A0[a1];
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid type %d: %s", a1, "NSString *PFStringFromPFAdjustmentStyleCast(PFAdjustmentStyleCast)"}];
  }

  v1 = @"PFAdjustmentStyleCastLAST";
LABEL_6:
  v2 = v1;
  v3 = -[__CFString substringFromIndex:](v2, "substringFromIndex:", [@"PFAdjustmentStyleCast" length]);
  v4 = [v3 lowercaseString];

  return v4;
}

uint64_t PFAdjustmentStyleCastFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = 0;
  while (1)
  {
    v3 = PFStringFromPFAdjustmentStyleCastShort(v2);
    v4 = [v1 isEqualToString:v3];

    if (v4)
    {
      break;
    }

    v5 = v2++;
    if (v5 >= 0x10)
    {
      v2 = 0;
      break;
    }
  }

  return v2;
}

id PFGMTTimeZone()
{
  if (PFGMTTimeZone_onceToken[0] != -1)
  {
    dispatch_once(PFGMTTimeZone_onceToken, &__block_literal_global_5884);
  }

  v1 = PFGMTTimeZone_gmtTimeZone;

  return v1;
}

uint64_t __PFGMTTimeZone_block_invoke()
{
  PFGMTTimeZone_gmtTimeZone = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];

  return MEMORY[0x1EEE66BB8]();
}

id PFDateFormatterForTimeZoneAndFormat(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (PFDateFormatterForTimeZoneAndFormat_onceToken[0] != -1)
  {
    dispatch_once(PFDateFormatterForTimeZoneAndFormat_onceToken, &__block_literal_global_3);
  }

  v5 = [PFDateFormatterForTimeZoneAndFormat_dateFormattersByTimeZone objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = objc_opt_new();
    [PFDateFormatterForTimeZoneAndFormat_dateFormattersByTimeZone setObject:v5 forKeyedSubscript:v3];
  }

  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"yyyy:MM:dd HH:mm:ss";
  }

  v9 = [v5 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setCalendar:PFDateFormatterForTimeZoneAndFormat_calendar];
    [v9 setDateFormat:v8];
    [v9 setTimeZone:v3];
    [v5 setObject:v9 forKeyedSubscript:v8];
  }

  return v9;
}

uint64_t __PFDateFormatterForTimeZoneAndFormat_block_invoke()
{
  v0 = objc_opt_new();
  v1 = PFDateFormatterForTimeZoneAndFormat_dateFormattersByTimeZone;
  PFDateFormatterForTimeZoneAndFormat_dateFormattersByTimeZone = v0;

  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  PFDateFormatterForTimeZoneAndFormat_calendar = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];

  return MEMORY[0x1EEE66BB8]();
}

id PFLocalDateFromGMTDate(void *a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = a1;
  v3 = [v1 localTimeZone];
  v4 = PFDateFromGMTDateTimeZone(v2, v3);

  return v4;
}

id PFDateFromGMTDateTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 dateByAddingTimeInterval:{objc_msgSend(a2, "secondsFromGMTForDate:", v3)}];

  return v4;
}

id PFGMTDateFromLocalDate(void *a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = a1;
  v3 = [v1 localTimeZone];
  v4 = PFGMTDateFromDateTimeZone(v2, v3);

  return v4;
}

id PFGMTDateFromDateTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 dateByAddingTimeInterval:{-objc_msgSend(a2, "secondsFromGMTForDate:", v3)}];

  return v4;
}

id PFTimeZoneDateFromGMTDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 dateByAddingTimeInterval:{objc_msgSend(a2, "secondsFromGMTForDate:", v3)}];

  return v4;
}

id PFDateFromStringTimeZoneFormat(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, &__block_literal_global_8);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5892;
  v23 = __Block_byref_object_dispose__5893;
  v24 = 0;
  v8 = dateQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PFDateFromStringTimeZoneFormat_block_invoke_10;
  v14[3] = &unk_1E7B66880;
  v15 = v6;
  v16 = v7;
  v17 = v5;
  v18 = &v19;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v8, v14);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __Block_byref_object_copy__5892(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PFDateFromStringTimeZoneFormat_block_invoke_10(uint64_t a1)
{
  v5 = PFDateFormatterForTimeZoneAndFormat(*(a1 + 32), *(a1 + 40));
  v2 = [v5 dateFromString:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __PFDateFromStringTimeZoneFormat_block_invoke()
{
  dateQueue = dispatch_queue_create("DateFormattersPropertyQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

id PFDateFromString(void *a1)
{
  v1 = a1;
  v2 = PFGMTTimeZone();
  v3 = PFDateFromStringTimeZoneFormat(v1, v2, 0);

  return v3;
}

id PFStringFromDate(void *a1)
{
  v1 = a1;
  v2 = PFGMTTimeZone();
  v3 = PFStringFromDateTimeZoneFormat(v1, v2, 0);

  return v3;
}

id PFStringFromDateTimeZoneFormat(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, &__block_literal_global_12_5902);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5892;
  v23 = __Block_byref_object_dispose__5893;
  v24 = 0;
  v8 = dateQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PFStringFromDateTimeZoneFormat_block_invoke_2;
  v14[3] = &unk_1E7B66880;
  v15 = v6;
  v16 = v7;
  v17 = v5;
  v18 = &v19;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v8, v14);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __PFStringFromDateTimeZoneFormat_block_invoke_2(uint64_t a1)
{
  v5 = PFDateFormatterForTimeZoneAndFormat(*(a1 + 32), *(a1 + 40));
  v2 = [v5 stringFromDate:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __PFStringFromDateTimeZoneFormat_block_invoke()
{
  dateQueue = dispatch_queue_create("DateFormattersPropertyQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

id getVNObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNObservationClass_softClass;
  v7 = getVNObservationClass_softClass;
  if (!getVNObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B36285FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNEspressoModelImageprintClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNEspressoModelImageprintClass_softClass;
  v7 = getVNEspressoModelImageprintClass_softClass;
  if (!getVNEspressoModelImageprintClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNEspressoModelImageprintClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNEspressoModelImageprintClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B36286DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNEspressoModelImageprintClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNEspressoModelImageprint");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNEspressoModelImageprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    VisionLibrary();
  }
}

void VisionLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B65680;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (VisionLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

void __getVNObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(PFCameraMetadataJSONDebugSerialization *)v2 addObject:v3 forKey:v4, v5];
  }
}

Class __getVNFeaturePrintObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNFeaturePrintObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNFeaturePrintObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getVNSceneObservationClass(v3);
  }

  return result;
}

id getVNSceneObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNSceneObservationClass_softClass;
  v7 = getVNSceneObservationClass_softClass;
  if (!getVNSceneObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNSceneObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNSceneObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B362979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNClassificationObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNClassificationObservationClass_softClass;
  v7 = getVNClassificationObservationClass_softClass;
  if (!getVNClassificationObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNClassificationObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNClassificationObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B362987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNPixelBufferObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNPixelBufferObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNPixelBufferObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getVNSaliencyImageObservationClass(v3);
  }

  return result;
}

id getVNSaliencyImageObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNSaliencyImageObservationClass_softClass;
  v7 = getVNSaliencyImageObservationClass_softClass;
  if (!getVNSaliencyImageObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNSaliencyImageObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNSaliencyImageObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B36299CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectedObjectObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectedObjectObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectedObjectObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getVNRectangleObservationClass_block_invoke(v3);
  }

  return result;
}

Class __getVNRectangleObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRectangleObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRectangleObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getVNRecognizedObjectObservationClass(v3);
  }

  return result;
}

id getVNRecognizedObjectObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNRecognizedObjectObservationClass_softClass;
  v7 = getVNRecognizedObjectObservationClass_softClass;
  if (!getVNRecognizedObjectObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNRecognizedObjectObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNRecognizedObjectObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3629B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNRecognizedObjectObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNRecognizedObjectObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRecognizedObjectObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    __getVNSaliencyImageObservationClass_block_invoke(v2);
  }
}

void __getVNSaliencyImageObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNSaliencyImageObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNSaliencyImageObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    __getVNClassificationObservationClass_block_invoke(v2);
  }
}

void __getVNClassificationObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNClassificationObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNClassificationObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    __getVNSceneObservationClass_block_invoke(v2);
  }
}

void __getVNSceneObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNSceneObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNSceneObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(_PFCameraMetadataAVMetadataObject *)v2 .cxx_destruct];
  }
}

id getVNFaceObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNFaceObservationClass_softClass;
  v7 = getVNFaceObservationClass_softClass;
  if (!getVNFaceObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNFaceObservationClass_block_invoke;
    v3[3] = &unk_1E7B65660;
    v3[4] = &v4;
    __getVNFaceObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B362A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNFaceObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNFaceObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNFaceObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(PFCameraMetadata *)v2 encodeWithCoder:v3, v4];
  }
}

Class __getVNImageAestheticsObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNImageAestheticsObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageAestheticsObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __84__PFCameraMetadataSerialization_deserializedMetadataFromCameraClientMetadata_error___block_invoke(v3);
  }

  return result;
}

void sub_1B362BFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceprintClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNFaceprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNFaceprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getVNFaceTorsoprintClass_block_invoke(v3);
  }

  return result;
}

Class __getVNFaceTorsoprintClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNFaceTorsoprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNFaceTorsoprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(PFCameraMetadataSerialization *)v3 deserializedMetadataFromPrivateClientMetadata:v4 error:v5, v6];
  }

  return result;
}

void sub_1B3632D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6586(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *operator||(uint64_t a1, int a2)
{
  v4 = @"-";
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"none";
      v6 = @"n";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_15;
      }

      v5 = @"target";
      v6 = @"t";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"closeup";
        v6 = @"u";
        break;
      case 4:
        v5 = @"headroom";
        v6 = @"h";
        break;
      case 5:
        v5 = @"center";
        v6 = @"c";
        break;
      default:
        goto LABEL_15;
    }
  }

  if (a2)
  {
    v5 = v6;
  }

  v4 = v5;
LABEL_15:

  return v4;
}

__CFString *OverlapStrategyDescription(uint64_t a1, int a2)
{
  v4 = @"-";
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"none";
      v6 = @"n";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_15;
      }

      v5 = @"target";
      v6 = @"t";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"avoid";
        v6 = @"a";
        break;
      case 4:
        v5 = @"fmdavoid";
        v6 = @"m";
        break;
      case 5:
        v5 = @"stretch";
        v6 = @"s";
        break;
      default:
        goto LABEL_15;
    }
  }

  if (a2)
  {
    v5 = v6;
  }

  v4 = v5;
LABEL_15:

  return v4;
}

__CFString *ParallaxStrategyDescription(uint64_t a1, int a2)
{
  if (a1 == 1)
  {
    v3 = @"off";
    v4 = @"n";
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = @"on";
    v4 = @"p";
LABEL_5:
    if (a2)
    {
      v3 = v4;
    }

    v5 = v3;

    return v5;
  }

  v5 = @"-";

  return v5;
}

__CFString *InactiveStrategyDescription(uint64_t a1, int a2)
{
  if (a1 == 2)
  {
    v3 = @"avoid";
    v4 = @"i";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v3 = @"none";
    v4 = @"n";
LABEL_5:
    if (a2)
    {
      v3 = v4;
    }

    v5 = v3;

    return v5;
  }

  v5 = @"-";

  return v5;
}

__CFString *HeadroomStrategyDescription(uint64_t a1, int a2)
{
  if (a1 == 1)
  {
    v3 = @"off";
    v4 = @"X";
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = @"on";
    v4 = @"V";
LABEL_5:
    if (a2)
    {
      v3 = v4;
    }

    v5 = v3;

    return v5;
  }

  v5 = @"-";

  return v5;
}

__CFString *PFPosterClassificationName(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"person";
  }

  else
  {
    return off_1E7B658B0[a1];
  }
}

uint64_t PFPosterClassificationNamed(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"person"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"pet"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"nature"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"cityscape"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"other"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PFParallaxLayoutClockLayerOrderNamed(void *a1)
{
  v1 = a1;
  v2 = @"ClockAboveForeground";
  if (([v1 isEqualToString:@"ClockAboveForeground"] & 1) == 0 && objc_msgSend(v1, "isEqualToString:", @"ClockAboveBackground"))
  {
    v2 = @"ClockAboveBackground";
  }

  return v2;
}

void sub_1B363D9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B363F160(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  std::unique_ptr<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::~unique_ptr[abi:ne200100](&buf);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = (*(*v15 + 16))(v15);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading SceneTaxonomy index: %s.", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B363F07CLL);
  }

  _Unwind_Resume(a1);
}

char *boost::interprocess::ipcdetail::placement_destroy<boost::unordered::unordered_map<unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>,boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>::destroy_n(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    do
    {
      if (*(a2 + 56) != 1)
      {
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v29, a2, *(a2 + 24));
        if (v29 == 1)
        {
          v7 = 0;
        }

        else
        {
          v7 = &v29 + v29;
        }

        v8 = *v7;
        v9 = v7 - &v28;
        if (v8 == 1)
        {
          v9 = 0;
        }

        v10 = v9 + v8;
        v28 = v10;
        v11 = &v28 - &v27;
        if (v10 == 1)
        {
          v11 = 0;
        }

        v12 = v11 + v10;
        v13 = &v27 + v12;
        if (v12 == 1)
        {
          v13 = 0;
        }

        v14 = *(v13 + 2);
        v15 = v13 + 16 - &v29;
        if (v14 == 1)
        {
          v15 = 0;
        }

        v29 = v15 + v14;
        v27 = v12;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a2 + 16), &v27);
        v16 = v29;
        v17 = &v29 - &v28;
        if (v29 == 1)
        {
          v17 = 0;
        }

        while (1)
        {
          v18 = v17 + v16;
          v28 = v18;
          if (v18 == 1)
          {
            break;
          }

          if (v18 + &v28 - &v29 == 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = &v28 + v18;
          }

          v20 = *(v19 + 2);
          v21 = v19 + 16 - &v27;
          if (v20 == 1)
          {
            v21 = 0;
          }

          v22 = v18 + &v28 - &v26;
          v26 = v22;
          v27 = v21 + v20;
          if (v22 == 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = &v26 - &v29;
          }

          v29 = v23 + v22;
          std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a2 + 16), &v29);
          v16 = v27;
          if (v27 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = &v27 - &v28;
          }
        }

        result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::destroy_buckets(a2);
        *(a2 + 48) = xmmword_1B36A1D80;
        *(a2 + 32) = 0;
      }

      if ((*a2 & 2) != 0)
      {
        __assert_rtn("~functions", "implementation.hpp", 2781, "!(current_ & 2)");
      }

      a2 += 64;
      v25 = *a4 + 1;
      *a4 = v25;
    }

    while (v25 < a3);
  }

  return result;
}

char *std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](char *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2 + *a2;
  if (v2 != 1 && v3 != 0)
  {
    if (*result == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = &result[*result];
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v5, v3);
  }

  return result;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::destroy_buckets(void *a1)
{
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v10, a1, a1[3] + 1);
  v3 = a1[7];
  v4 = (a1 + 7) - &v9;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v9 = v4 + v3;
  v5 = &v9 + v4 + v3;
  if (v4 + v3 != 1 && v5 != 0)
  {
    v7 = a1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 + v7 + 8;
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v8, v5);
  }

  return result;
}

_BYTE *boost::interprocess::ipcdetail::placement_destroy<boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>::destroy_n(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v7 = &v28 - &v26;
    do
    {
      if (*(a2 + 56) != 1)
      {
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v27, a2, *(a2 + 24));
        if (v27 == 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = &v27 + v27;
        }

        v9 = *v8;
        v10 = v8 - &v28;
        if (v9 == 1)
        {
          v10 = 0;
        }

        v11 = v10 + v9;
        v28 = v11;
        if (v11 == 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = &v28 - &v26;
        }

        v13 = v12 + v11;
        v14 = &v26 + v13;
        if (v13 == 1)
        {
          v14 = 0;
        }

        v15 = v14 + 304;
        v16 = *(v14 + 38);
        v17 = v15 - &v27;
        if (v16 == 1)
        {
          v17 = 0;
        }

        v26 = v13;
        v27 = v17 + v16;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a2 + 16), &v26);
        while (1)
        {
          v18 = v27 == 1 ? 0 : &v27 - &v28;
          v19 = v18 + v27;
          v28 = v18 + v27;
          if (v18 + v27 == 1)
          {
            break;
          }

          if (v19 + v7 == 1)
          {
            v20 = 0;
          }

          else
          {
            v20 = &v28 + v19;
          }

          v21 = v20 + 304;
          v22 = *(v20 + 38);
          v23 = v21 - &v27;
          if (v22 == 1)
          {
            v23 = 0;
          }

          v26 = v7 + v19;
          v27 = v23 + v22;
          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(a2, &v26);
        }

        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(a2);
        *(a2 + 48) = xmmword_1B36A1D80;
        *(a2 + 32) = 0;
      }

      result = boost::unordered::detail::functions<boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>::~functions(a2);
      v25 = *a4 + 1;
      *a4 = v25;
      a2 += 64;
    }

    while (v25 < a3);
  }

  return result;
}

char *std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](char *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2 + *a2;
  if (v2 != 1 && v3 != 0)
  {
    if (*result == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = &result[*result];
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v5, v3);
  }

  return result;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(uint64_t a1, char *a2)
{
  if (*a2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &a2[*a2];
  }

  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v4 + 240);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v4 + 176);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v4 + 112);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v4);
  v5 = a2 - &v7;
  if (*a2 == 1)
  {
    v5 = 0;
  }

  v7 = v5 + *a2;
  return std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a1 + 16), &v7);
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(void *a1)
{
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v10, a1, a1[3] + 1);
  v3 = a1[7];
  v4 = (a1 + 7) - &v9;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v9 = v4 + v3;
  v5 = &v9 + v4 + v3;
  if (v4 + v3 != 1 && v5 != 0)
  {
    v7 = a1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 + v7 + 8;
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v8, v5);
  }

  return result;
}

_BYTE *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v23, a1, *(a1 + 24));
    if (v23 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = &v23 + v23;
    }

    v3 = *v2;
    v4 = v2 - &v22;
    if (v3 == 1)
    {
      v4 = 0;
    }

    v5 = v4 + v3;
    v22 = v5;
    v6 = &v22 - &v21;
    if (v5 == 1)
    {
      v6 = 0;
    }

    v7 = v6 + v5;
    v8 = &v21 + v7;
    if (v7 == 1)
    {
      v8 = 0;
    }

    v9 = *(v8 + 1);
    v10 = v8 + 8 - &v23;
    if (v9 == 1)
    {
      v10 = 0;
    }

    v23 = v10 + v9;
    v21 = v7;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a1 + 16), &v21);
    v11 = &v23 - &v22;
    if (v23 == 1)
    {
      v11 = 0;
    }

    v12 = v11 + v23;
    v22 = v11 + v23;
    if (v11 + v23 != 1)
    {
      do
      {
        if (v12 + &v22 - &v23 == 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = &v22 + v12;
        }

        v14 = *(v13 + 1);
        v15 = v13 + 8 - &v21;
        if (v14 == 1)
        {
          v15 = 0;
        }

        v16 = v12 + &v22 - &v20;
        v20 = v16;
        v21 = v15 + v14;
        if (v16 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = -24;
        }

        v23 = v17 + v16;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100]((a1 + 16), &v23);
        if (v21 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = &v21 - &v22;
        }

        v12 = v18 + v21;
        v22 = v18 + v21;
      }

      while (v18 + v21 != 1);
    }

    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::destroy_buckets(a1);
    *(a1 + 48) = xmmword_1B36A1D80;
    *(a1 + 32) = 0;
  }

  return boost::unordered::detail::functions<pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>::~functions(a1);
}

_BYTE *boost::unordered::detail::functions<pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>::~functions(_BYTE *result)
{
  if ((*result & 2) != 0)
  {
    __assert_rtn("~functions", "implementation.hpp", 2781, "!(current_ & 2)");
  }

  return result;
}

char *std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](char *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2 + *a2;
  if (v2 != 1 && v3 != 0)
  {
    if (*result == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = &result[*result];
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v5, v3);
  }

  return result;
}

char *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::destroy_buckets(void *a1)
{
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v10, a1, a1[3] + 1);
  v3 = a1[7];
  v4 = (a1 + 7) - &v9;
  if (v3 == 1)
  {
    v4 = 0;
  }

  v9 = v4 + v3;
  v5 = &v9 + v4 + v3;
  if (v4 + v3 != 1 && v5 != 0)
  {
    v7 = a1[1];
    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 + v7 + 8;
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v8, v5);
  }

  return result;
}

void boost::interprocess::ipcdetail::placement_destroy<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>::destroy_n(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    do
    {
      v7 = a2 + 32;
      boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(a2);
      v8 = *a4 + 1;
      *a4 = v8;
      a2 = v7;
    }

    while (v8 < a3);
  }
}

void sub_1B36402BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(va1);
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory(va);

  _Unwind_Resume(a1);
}

uint64_t *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::find_node_impl<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (!*(a2 + 32))
  {
    goto LABEL_61;
  }

  v6 = (*(a2 + 24) - 1) & a3;
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v53, a2, v6);
  v7 = &v53 + v53;
  if (v53 == 1)
  {
    v7 = 0;
  }

  v8 = *v7;
  v9 = v7 - v52;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  if (v10 == 1)
  {
    goto LABEL_61;
  }

  v11 = &v52[v10];
  if (v10 + v52 - &v53 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + 304;
  v13 = *(v11 + 38);
  v14 = v12 - &v50;
  if (v13 == 1)
  {
    v14 = 0;
  }

  v15 = v14 + v13;
  v50 = v14 + v13;
  if (v14 + v13 == 1)
  {
LABEL_61:
    v46 = 1;
  }

  else
  {
    v16 = &v50 - &v53;
    v17 = *(a4 + 24);
    v18 = a4 - v51 + 9;
    v19 = a4 + 24 - v51;
    v20 = &v50 - &v48;
    v21 = *(a4 + 8);
    if (v17 == 1)
    {
      v19 = 0;
    }

    if (v21)
    {
      v22 = v21 >> 1;
    }

    else
    {
      v22 = *(a4 + 8) >> 1;
    }

    v23 = v19 + v17;
    if ((v21 & 1) == 0)
    {
      v18 = v23;
    }

    v24 = &v51[v18];
    if (v18 == 1)
    {
      v24 = 0;
    }

    __s1 = v24;
    v25 = &v48 - v49;
    while (1)
    {
      v26 = v15 + v16;
      if (v15 + v16 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = &v51[v15 - 8];
      }

      v28 = v27[8];
      v29 = v28 >> 1;
      if ((v28 & 1) == 0)
      {
        v29 = *(v27 + 1) >> 1;
      }

      if (v22 == v29)
      {
        if (v28)
        {
          v32 = v27 - &v53 + 9;
        }

        else
        {
          v30 = *(v27 + 3);
          v31 = v27 + 24 - &v53;
          if (v30 == 1)
          {
            v31 = 0;
          }

          v32 = v31 + v30;
        }

        v33 = v32 == 1 ? 0 : &v53 + v32;
        result = memcmp(__s1, v33, v22);
        v20 = &v50 - &v48;
        v16 = &v50 - &v53;
        v25 = &v48 - v49;
        if (!result)
        {
          break;
        }
      }

      if (v26 == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = &v51[v15 - 8];
      }

      if ((*(v34 + 39) & 0x7FFFFFFFFFFFFFFFLL) == v6)
      {
        v35 = v20 + v15 == 1 ? 0 : v25;
        v36 = v35 + v20 + v15;
        while (1)
        {
          if (v36 == 1)
          {
            v37 = 0;
          }

          else
          {
            v37 = v49 - v52;
          }

          v38 = v37 + v36;
          if (v38 == 1)
          {
            v39 = 0;
          }

          else
          {
            v39 = &v52[v38];
          }

          v40 = v39 + 304;
          v41 = *(v39 + 38);
          v42 = v40 - &v53;
          if (v41 == 1)
          {
            v42 = 0;
          }

          v43 = v42 + v41;
          v44 = v43 == 1 ? 0 : &v53 - v49;
          v36 = v44 + v43;
          if (v36 == 1)
          {
            break;
          }

          if ((*&v49[v36 + 312] & 0x8000000000000000) == 0)
          {
            v45 = v49 - &v50;
            goto LABEL_60;
          }
        }

        v45 = 0;
LABEL_60:
        v15 = v45 + v36;
        v50 = v45 + v36;
        if (v45 + v36 != 1)
        {
          continue;
        }
      }

      goto LABEL_61;
    }

    v46 = &v50 - v4 + v15;
  }

  *v4 = v46;
  return result;
}

BOOL PFSceneTaxonomyNodeEqual(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && a1 == a2;
}

BOOL PFSceneTaxonomyNodeSceneIdEqual(void *a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *a1 == *a2;
    }
  }

  return result;
}

uint64_t PFSceneTaxonomyNodeHash(void *a1)
{
  v1 = a1[9];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 + v1 + 72;
  }

  v3 = v2[8];
  if (v3)
  {
    v9 = v2 + 9;
    if (v2 + 9 - v14 == 1)
    {
      v9 = 0;
    }

    v10 = v3 >> 1;
  }

  else
  {
    v6 = *(v2 + 3);
    v5 = v2 + 24;
    v4 = v6;
    v7 = v5 - v14;
    if (v6 == 1)
    {
      v7 = 0;
    }

    v8 = v7 + v4;
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = &v14[v8];
    }

    v10 = *(v5 - 2) >> 1;
  }

  for (i = 0; v10; --v10)
  {
    v12 = *v9++;
    i ^= (i << 6) + (i >> 2) + 2654435769u + v12;
  }

  return i ^ *a1;
}

id PFSceneTaxonomyNodeDescription(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1[9];
    v5 = a1 + v4 + 72;
    if (v4 == 1)
    {
      v5 = 0;
    }

    if (*(v5 + 8))
    {
      v8 = v5 - buf + 9;
    }

    else
    {
      v6 = *(v5 + 24);
      v7 = v5 + 24 - buf;
      if (v6 == 1)
      {
        v7 = 0;
      }

      v8 = v7 + v6;
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = *a1;
    v12 = *(a1 + 12);
    v13 = a1[2];
    v14 = PFSceneTaxonomyNodeLocalizedLabel(a1, a2);
    v15 = PFSceneTaxonomyNodeLocalizedSynonyms(a1, a2);
    v16 = v15;
    v17 = &buf[v8];
    if (v8 == 1)
    {
      v17 = 0;
    }

    v9 = [v10 stringWithFormat:@"<PFSceneTaxonomyNodeRef: %p> sceneClassId:%lu name:%s indexed:%d searchThreshold:%f label:%@ synonyms:%@, parents:%lu, children:%lu", a1, v11, v17, v12, v13, v14, v15, a1[14], a1[22]];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v20 = "NSString * _Nullable PFSceneTaxonomyNodeDescription(PFSceneTaxonomyNodeRef _Nonnull, PFSceneTaxonomy *const __strong _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

id PFSceneTaxonomyNodeLocalizedLabel(pf::SceneTaxonomyNode *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v17 = 136446210;
      v18 = "NSString * _Nullable PFSceneTaxonomyNodeLocalizedLabel(PFSceneTaxonomyNodeRef _Nonnull, PFSceneTaxonomy *const __strong _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v17, 0xCu);
    }

    goto LABEL_15;
  }

  if (pf::SceneTaxonomyNode::isRoot(a1))
  {
LABEL_15:
    v14 = 0;
    goto LABEL_20;
  }

  v4 = *(a1 + 9);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 + v4 + 72;
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = v5[8];
  if (v7)
  {
    if (v5 + 9 - &v17 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v5 + 9;
    }
  }

  else
  {
    v10 = *(v5 + 3);
    v9 = v5 + 24;
    v8 = v10;
    v11 = v9 - &v17;
    if (v10 == 1)
    {
      v11 = 0;
    }

    v12 = v11 + v8;
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = &v17 + v12;
    }

    v7 = *(v9 - 2);
  }

  v15 = [v6 initWithBytesNoCopy:v13 length:v7 >> 1 encoding:4 freeWhenDone:0];
  v14 = [a2 localizedStringForKey:v15];

LABEL_20:

  return v14;
}

id PFSceneTaxonomyNodeLocalizedSynonyms(pf::SceneTaxonomyNode *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!pf::SceneTaxonomyNode::isRoot(a1))
    {
      v4 = PFSceneTaxonomyNodeNameInternal(a1);
      v5 = [v4 stringByAppendingString:@"-synonyms"];
      v6 = [a2 localizedStringForKey:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 componentsSeparatedByString:@"|"];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = 136446210;
    v11 = "NSArray<NSString *> * _Nullable PFSceneTaxonomyNodeLocalizedSynonyms(PFSceneTaxonomyNodeRef _Nonnull, PFSceneTaxonomy *const __strong _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v10, 0xCu);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

BOOL pf::SceneTaxonomyNode::isRoot(pf::SceneTaxonomyNode *this)
{
  if (*this)
  {
    return 0;
  }

  v2 = *(this + 9);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = this + v2 + 72;
  }

  if ((v3[8] & 1) == 0)
  {
    if ((*(v3 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x10)
    {
      v4 = *(v3 + 3);
      v5 = v3 + 24 - v8;
      if (v4 == 1)
      {
        v5 = 0;
      }

      v6 = v5 + v4;
      goto LABEL_13;
    }

    return 0;
  }

  if ((v3[8] & 0xFE) != 0x10)
  {
    return 0;
  }

  v6 = v3 - v8 + 9;
LABEL_13:
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = &v8[v6];
  }

  return *v7 == 0x7C5F544F4F525F7CLL;
}

id PFSceneTaxonomyNodeNameInternal(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 72);
    if (v1 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v1 + a1 + 72;
    }

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = *(v2 + 8);
    if (v4)
    {
      if (v2 + 9 - &v13 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v2 + 9);
      }
    }

    else
    {
      v7 = *(v2 + 24);
      v6 = v2 + 24;
      v5 = v7;
      v8 = v6 - &v13;
      if (v7 == 1)
      {
        v8 = 0;
      }

      v9 = v8 + v5;
      if (v9 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = &v13 + v9;
      }

      v4 = *(v6 - 16);
    }

    v11 = [v3 initWithBytesNoCopy:v10 length:v4 >> 1 encoding:4 freeWhenDone:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v13 = 136446210;
      v14 = "NSString * _Nullable PFSceneTaxonomyNodeNameInternal(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v13, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

void PFSceneTaxonomyFillNodeData(pf::SceneTaxonomyNode *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v4 = *this;
    v5 = *(this + 9);
    if (v5 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = this + v5 + 72;
    }

    if (v6[8])
    {
      v9 = v6 - &v22 + 9;
    }

    else
    {
      v7 = *(v6 + 3);
      v8 = v6 + 24 - &v22;
      if (v7 == 1)
      {
        v8 = 0;
      }

      v9 = v8 + v7;
    }

    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v22 + v9;
    }

    if (v4 >= 0x100000000)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = *this;
    }

    v12 = *(this + 2);
    v13 = *(this + 12);
    isRoot = pf::SceneTaxonomyNode::isRoot(this);
    v15 = *(this + 2);
    v16 = *(this + 3);
    v17 = *(this + 8);
    if (v16 >= v15)
    {
      v18 = *(this + 2);
    }

    else
    {
      v18 = *(this + 3);
    }

    v19 = *(this + 2);
    v20 = *(this + 3);
    if (*&v19 >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = *(this + 4);
    }

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 12) = 0;
    *(a2 + 16) = v4;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 33) = isRoot;
    *(a2 + 38) = 0;
    *(a2 + 34) = 0;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
    *(a2 + 56) = v19;
    *(a2 + 72) = v20;
    *(a2 + 88) = v17;
    *(a2 + 96) = v18;
    *(a2 + 104) = v21;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v22 = 136446210;
    v23 = "void PFSceneTaxonomyFillNodeData(PFSceneTaxonomyNodeRef _Nonnull, PFSceneTaxonomyNodeData * _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v22, 0xCu);
  }
}

uint64_t PFSceneTaxonomyNodeExtendedSceneClassId(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "PFExtendedSceneClassId PFSceneTaxonomyNodeExtendedSceneClassId(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
  }

  return -1;
}

char *PFSceneTaxonomyNodeString(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 72);
    v2 = v1 + a1 + 72;
    if (v1 == 1)
    {
      v2 = 0;
    }

    if (*(v2 + 8))
    {
      v5 = v2 - &v7 + 9;
    }

    else
    {
      v3 = *(v2 + 24);
      v4 = v2 + 24 - &v7;
      if (v3 == 1)
      {
        v4 = 0;
      }

      v5 = v4 + v3;
    }

    if (v5 == 1)
    {
      return 0;
    }

    else
    {
      return &v7 + v5;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7 = 136446210;
      v8 = "const char *PFSceneTaxonomyNodeString(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v7, 0xCu);
    }

    return 0;
  }
}

uint64_t PFSceneTaxonomyNodeIsIndexed(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 12);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v3 = 136446210;
      v4 = "BOOL PFSceneTaxonomyNodeIsIndexed(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
    }

    v1 = 0;
  }

  return v1 & 1;
}

BOOL PFSceneTaxonomyNodeIsRoot(pf::SceneTaxonomyNode *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return pf::SceneTaxonomyNode::isRoot(a1);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v2 = 136446210;
      v3 = "BOOL PFSceneTaxonomyNodeIsRoot(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
    }

    return 0;
  }
}

double PFSceneTaxonomyNodeHighRecallThreshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 32);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeHighRecallThreshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodeHighPrecisionThreshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeHighPrecisionThreshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodePrecision0Point6Threshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 40);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodePrecision0Point6Threshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodeF0Point5Threshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeF0Point5Threshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodeF1Threshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 56);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeF1Threshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodeF2Threshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 64);
  }

  v1 = 0.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = "double PFSceneTaxonomyNodeF2Threshold(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
  }

  return v1;
}

double PFSceneTaxonomyNodeGraphHighPrecisionThreshold(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 24) >= *(a1 + 16))
    {
      return *(a1 + 16);
    }

    else
    {
      return *(a1 + 24);
    }
  }

  else
  {
    v1 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v3 = 136446210;
      v4 = "double PFSceneTaxonomyNodeGraphHighPrecisionThreshold(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v3, 0xCu);
    }
  }

  return v1;
}

double PFSceneTaxonomyNodeGraphHighRecallThreshold(double *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1[3];
    if (v1 >= a1[2])
    {
      v1 = a1[2];
    }

    if (a1[4] >= v1)
    {
      return v1;
    }

    else
    {
      return a1[4];
    }
  }

  else
  {
    v2 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = 136446210;
      v5 = "double PFSceneTaxonomyNodeGraphHighRecallThreshold(PFSceneTaxonomyNodeRef _Nonnull)";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v4, 0xCu);
    }
  }

  return v2;
}

uint64_t PFSceneTaxonomyNodeParentsCount(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 112);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "size_t PFSceneTaxonomyNodeParentsCount(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
  }

  return 0;
}

uint64_t PFSceneTaxonomyNodeChildrenCount(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 176);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "size_t PFSceneTaxonomyNodeChildrenCount(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
  }

  return 0;
}

uint64_t PFSceneTaxonomyNodeDetectorsCount(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 240);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "size_t PFSceneTaxonomyNodeDetectorsCount(PFSceneTaxonomyNodeRef _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v2, 0xCu);
  }

  return 0;
}

void PFSceneTaxonomyNodeTraverseParents(char *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v21 = v3;
    v5 = v3;
    buf = 0uLL;
    v26 = 0;
    v24 = a1;
    std::vector<pf::SceneTaxonomyNode const*>::push_back[abi:ne200100](&buf, &v24);
    v6 = 0;
    while (1)
    {
      v7 = buf;
      if (buf == *(&buf + 1) || (v6 & 1) != 0)
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = *(*(&v7 + 1) - 8);
      *(&buf + 1) = *(&v7 + 1) - 8;
      v10 = *(v9 + 112);
      if (v10)
      {
        std::vector<pf::SceneTaxonomyNode const*>::reserve(&buf, v10 + ((*(&v7 + 1) - v7) >> 3));
        boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(&v23, v9 + 80);
        v22 = 1;
        if (v23 != 1)
        {
          v11 = &v23 + v23;
          if ((&v23 + v23))
          {
            do
            {
              v12 = *v11;
              v13 = &v11[*v11];
              if (v12 == 1)
              {
                v13 = 0;
              }

              v24 = v13;
              std::vector<pf::SceneTaxonomyNode const*>::push_back[abi:ne200100](&buf, &v24);
              if (v23 == 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = &v23 + v23;
              }

              v15 = *(v14 + 1);
              v16 = v14 + 8 - &v24;
              if (v15 == 1)
              {
                v16 = 0;
              }

              v17 = v16 + v15;
              if (v17 == 1)
              {
                v18 = 0;
              }

              else
              {
                v18 = &v24 - &v23;
              }

              v19 = v18 + v17;
              v23 = v19;
              if (v19 == 1)
              {
                v11 = 0;
              }

              else
              {
                v11 = &v23 + v19;
              }

              if (v22 == 1)
              {
                v20 = 0;
              }

              else
              {
                v20 = &v22 + v22;
              }
            }

            while (v11 != v20);
          }
        }
      }

      v6 = PFSceneTaxonomyVisitNode(v5, v9);
      objc_autoreleasePoolPop(v8);
    }

    if (buf)
    {
      operator delete(buf);
    }

    v4 = v21;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "void PFSceneTaxonomyNodeTraverseParents(PFSceneTaxonomyNodeRef _Nonnull, __strong PFSceneTaxonomyNodeRefVisitor _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &buf, 0xCu);
  }
}

void sub_1B36423D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<pf::SceneTaxonomyNode const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pf::SceneTaxonomyNode const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *std::vector<pf::SceneTaxonomyNode const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pf::SceneTaxonomyNode const*>>(a2);
    }

    std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(char *a1, uint64_t a2)
{
  result = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::begin(&v5, a2);
  v4 = (&v5 - a1);
  if (v5 == 1)
  {
    v4 = 0;
  }

  *a1 = &v4[v5];
  return result;
}

uint64_t PFSceneTaxonomyVisitNode(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 72);
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + a2 + 72;
  }

  if (*(v6 + 8))
  {
    v9 = v6 - v29 + 9;
  }

  else
  {
    v7 = *(v6 + 24);
    v8 = v6 + 24 - v29;
    if (v7 == 1)
    {
      v8 = 0;
    }

    v9 = v8 + v7;
  }

  v21 = 0u;
  v20 = 0u;
  v10 = &v29[v9];
  if (v9 == 1)
  {
    v10 = 0;
  }

  v19 = v10;
  v11 = 0;
  if (v4 < 0x100000000)
  {
    v11 = v4;
  }

  LODWORD(v20) = v11;
  v12 = *(a2 + 8);
  *(&v20 + 1) = v4;
  *&v21 = v12;
  BYTE8(v21) = *(a2 + 12);
  BYTE9(v21) = pf::SceneTaxonomyNode::isRoot(a2);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v22 = v13;
  v23 = v14;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v24 = v15;
  v25 = v16;
  if (v14 < v13)
  {
    v13 = v14;
  }

  v26 = *(a2 + 64);
  v27 = v13;
  if (*&v15 < v13)
  {
    v13 = *&v15;
  }

  v28 = v13;
  v17 = v3[2](v3, a2, &v19);

  return v17;
}

uint64_t *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::begin(uint64_t *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 32))
  {
    result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v12, a2, *(a2 + 24));
    if (v12 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = &v12 + v12;
    }

    v4 = *v3;
    v5 = v3 - v11;
    if (v4 == 1)
    {
      v5 = 0;
    }

    v6 = v5 + v4;
    if (v6 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = &v11[v6];
    }

    v8 = *(v7 + 1);
    v9 = v7 + 8 - v2;
    if (v8 == 1)
    {
      v9 = 0;
    }

    v10 = v9 + v8;
  }

  else
  {
    v10 = 1;
  }

  *v2 = v10;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pf::SceneTaxonomyNode const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void PFSceneTaxonomyNodeTraverseChildren(char *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v21 = v3;
    v5 = v3;
    buf = 0uLL;
    v26 = 0;
    v24 = a1;
    std::vector<pf::SceneTaxonomyNode const*>::push_back[abi:ne200100](&buf, &v24);
    v6 = 0;
    while (1)
    {
      v7 = buf;
      if (buf == *(&buf + 1) || (v6 & 1) != 0)
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = *(*(&v7 + 1) - 8);
      *(&buf + 1) = *(&v7 + 1) - 8;
      v10 = *(v9 + 176);
      if (v10)
      {
        std::vector<pf::SceneTaxonomyNode const*>::reserve(&buf, v10 + ((*(&v7 + 1) - v7) >> 3));
        boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(&v23, v9 + 144);
        v22 = 1;
        if (v23 != 1)
        {
          v11 = &v23 + v23;
          if ((&v23 + v23))
          {
            do
            {
              v12 = *v11;
              v13 = &v11[*v11];
              if (v12 == 1)
              {
                v13 = 0;
              }

              v24 = v13;
              std::vector<pf::SceneTaxonomyNode const*>::push_back[abi:ne200100](&buf, &v24);
              if (v23 == 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = &v23 + v23;
              }

              v15 = *(v14 + 1);
              v16 = v14 + 8 - &v24;
              if (v15 == 1)
              {
                v16 = 0;
              }

              v17 = v16 + v15;
              if (v17 == 1)
              {
                v18 = 0;
              }

              else
              {
                v18 = &v24 - &v23;
              }

              v19 = v18 + v17;
              v23 = v19;
              if (v19 == 1)
              {
                v11 = 0;
              }

              else
              {
                v11 = &v23 + v19;
              }

              if (v22 == 1)
              {
                v20 = 0;
              }

              else
              {
                v20 = &v22 + v22;
              }
            }

            while (v11 != v20);
          }
        }
      }

      v6 = PFSceneTaxonomyVisitNode(v5, v9);
      objc_autoreleasePoolPop(v8);
    }

    if (buf)
    {
      operator delete(buf);
    }

    v4 = v21;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "void PFSceneTaxonomyNodeTraverseChildren(PFSceneTaxonomyNodeRef _Nonnull, __strong PFSceneTaxonomyNodeRefVisitor _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &buf, 0xCu);
  }
}

void sub_1B3642A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PFSceneTaxonomyNodeVisitParents(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(&v19, a1 + 80);
    v18 = 1;
    v6 = &buf[v19 - 8];
    if (v19 != 1 && v6 != 0)
    {
      do
      {
        v8 = *v6;
        v9 = &v6[*v6];
        if (v8 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        if (PFSceneTaxonomyVisitNode(v5, v10))
        {
          break;
        }

        if (v19 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = &buf[v19 - 8];
        }

        v12 = *(v11 + 1);
        v13 = v11 + 8 - buf;
        if (v12 == 1)
        {
          v13 = 0;
        }

        v14 = v13 + v12;
        v15 = v14 == 1 ? 0 : buf - &v19;
        v16 = v15 + v14;
        v19 = v16;
        v6 = v16 == 1 ? 0 : &buf[v16 - 8];
        v17 = v18 == 1 ? 0 : &v18 + v18;
      }

      while (v6 != v17);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "void PFSceneTaxonomyNodeVisitParents(PFSceneTaxonomyNodeRef _Nonnull, __strong PFSceneTaxonomyNodeRefVisitor _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", buf, 0xCu);
  }
}

void PFSceneTaxonomyNodeVisitChildren(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(&v19, a1 + 144);
    v18 = 1;
    v6 = &buf[v19 - 8];
    if (v19 != 1 && v6 != 0)
    {
      do
      {
        v8 = *v6;
        v9 = &v6[*v6];
        if (v8 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        if (PFSceneTaxonomyVisitNode(v5, v10))
        {
          break;
        }

        if (v19 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = &buf[v19 - 8];
        }

        v12 = *(v11 + 1);
        v13 = v11 + 8 - buf;
        if (v12 == 1)
        {
          v13 = 0;
        }

        v14 = v13 + v12;
        v15 = v14 == 1 ? 0 : buf - &v19;
        v16 = v15 + v14;
        v19 = v16;
        v6 = v16 == 1 ? 0 : &buf[v16 - 8];
        v17 = v18 == 1 ? 0 : &v18 + v18;
      }

      while (v6 != v17);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "void PFSceneTaxonomyNodeVisitChildren(PFSceneTaxonomyNodeRef _Nonnull, __strong PFSceneTaxonomyNodeRefVisitor _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", buf, 0xCu);
  }
}

void PFSceneTaxonomyNodeVisitDetectors(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::begin(&v19, a1 + 208);
    v18 = 1;
    v6 = &buf[v19 - 8];
    if (v19 != 1 && v6 != 0)
    {
      do
      {
        v8 = *v6;
        v9 = &v6[*v6];
        if (v8 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        if (PFSceneTaxonomyVisitNode(v5, v10))
        {
          break;
        }

        if (v19 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = &buf[v19 - 8];
        }

        v12 = *(v11 + 1);
        v13 = v11 + 8 - buf;
        if (v12 == 1)
        {
          v13 = 0;
        }

        v14 = v13 + v12;
        v15 = v14 == 1 ? 0 : buf - &v19;
        v16 = v15 + v14;
        v19 = v16;
        v6 = v16 == 1 ? 0 : &buf[v16 - 8];
        v17 = v18 == 1 ? 0 : &v18 + v18;
      }

      while (v6 != v17);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v21 = "void PFSceneTaxonomyNodeVisitDetectors(PFSceneTaxonomyNodeRef _Nonnull, __strong PFSceneTaxonomyNodeRefVisitor _Nonnull)";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", buf, 0xCu);
  }
}

void PFSceneTaxonomyEnumerateTopologicallyOrderedNodes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x6012000000;
  v26 = __Block_byref_object_copy__7657;
  v27 = __Block_byref_object_dispose__7658;
  v28 = &unk_1B36BE437;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v3;
  v5 = [v3 rootNodeRef];
  v6 = *(&v29 + 1);
  if (v30 == *(&v29 + 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v30 - *(&v29 + 1)) << 6) - 1;
  }

  v8 = *(&v31 + 1);
  v9 = *(&v31 + 1) + v31;
  if (v7 == *(&v31 + 1) + v31)
  {
    std::deque<void const*>::__add_back_capacity(&v29);
    v8 = *(&v31 + 1);
    v6 = *(&v29 + 1);
    v9 = v31 + *(&v31 + 1);
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = v5;
  *(&v31 + 1) = v8 + 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x5812000000;
  v20[3] = __Block_byref_object_copy__167;
  v20[4] = __Block_byref_object_dispose__168;
  v20[5] = &unk_1B36BE437;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  while (1)
  {
    v10 = v24;
    v11 = v24[11];
    if (!v11)
    {
      break;
    }

    v13 = v24[7];
    v12 = v24[8];
    v14 = ((v12 - v13) << 6) - 1;
    if (v12 == v13)
    {
      v14 = 0;
    }

    v15 = v11 - 1;
    v16 = v24[10] + v15;
    v17 = *(*(v13 + ((v16 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v16 & 0x1FF));
    v24[11] = v15;
    if (v14 - v16 >= 0x400)
    {
      operator delete(*(v12 - 8));
      v10[8] -= 8;
    }

    if (v4[2](v4, v17))
    {
      break;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __PFSceneTaxonomyEnumerateTopologicallyOrderedNodes_block_invoke;
    v19[3] = &unk_1E7B65990;
    v19[4] = &v23;
    v19[5] = v20;
    PFSceneTaxonomyNodeVisitChildren(v17, v19);
  }

  _Block_object_dispose(v20, 8);
  std::__hash_table<std::__hash_value_type<void const*,unsigned long>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned long>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned long>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned long>>>::~__hash_table(v21);
  _Block_object_dispose(&v23, 8);
  std::deque<void const*>::~deque[abi:ne200100](&v29);
}

void sub_1B36431C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  std::deque<void const*>::~deque[abi:ne200100](v29 + 48);

  _Unwind_Resume(a1);
}

double __Block_byref_object_copy__7657(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__167(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,unsigned long>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned long>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned long>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t __PFSceneTaxonomyEnumerateTopologicallyOrderedNodes_block_invoke(uint64_t a1, unint64_t a2)
{
  v21 = a2;
  v4 = PFSceneTaxonomyNodeParentsCount(a2);
  if (v4 != 1)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = v5[7];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        if (v8 >= *&v9)
        {
          v11 = v8 % *&v9;
        }
      }

      else
      {
        v11 = v8 & (*&v9 - 1);
      }

      v12 = *(*&v5[6] + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            if (i[2] == a2)
            {
              v20 = i[3] + 1;
              i[3] = v20;
              if (v20 != v4)
              {
                return 0;
              }

              goto LABEL_2;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v9)
              {
                v14 %= *&v9;
              }
            }

            else
            {
              v14 &= *&v9 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }

      if (v10.u32[0] > 1uLL)
      {
        v15 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        if (v8 >= *&v9)
        {
          v15 = v8 % *&v9;
        }
      }

      else
      {
        v15 = v8 & (*&v9 - 1);
      }

      v16 = *(*&v5[6] + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          do
          {
            v18 = v17[1];
            if (v18 == v8)
            {
              if (v17[2] == a2)
              {
                v17[3] = 1;
                return 0;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v18 >= *&v9)
                {
                  v18 %= *&v9;
                }
              }

              else
              {
                v18 &= *&v9 - 1;
              }

              if (v18 != v15)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    operator new();
  }

LABEL_2:
  std::deque<void const*>::push_back((*(*(a1 + 32) + 8) + 48), &v21);
  return 0;
}

uint64_t std::deque<void const*>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::deque<void const*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<void const*>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<void const*>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<void const**>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void const**>::emplace_back<void const**&>(a1, &v10);
}

void sub_1B3643E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<void const**>::emplace_back<void const**&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void const**>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__CFString *PFPosterSettlingEffectGatingLevelDescription(uint64_t a1)
{
  v1 = @"Default";
  if (a1 == 1)
  {
    v1 = @"Interactive";
  }

  if (a1 == 2)
  {
    return @"Overnight";
  }

  else
  {
    return v1;
  }
}

__CFString *PFPosterSpatialPhotoGatingLevelDescription(uint64_t a1)
{
  v1 = @"Default";
  if (a1 == 1)
  {
    v1 = @"Interactive";
  }

  if (a1 == 2)
  {
    return @"Overnight";
  }

  else
  {
    return v1;
  }
}

void sub_1B3646E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_sb8_s16(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_sb8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t PFAppleArchiveEntryMessageProc(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*a3)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

    v7 = [*(a1 + 16) URLByAppendingPathComponent:v6];
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v11 = 0;
  v8 = (*(*(a1 + 8) + 16))() ^ 1;
  if (v11)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

_BYTE *pf::SceneTaxonomyLineParser::finalize(pf::SceneTaxonomyLineParser *this)
{
  v40 = *MEMORY[0x1E69E9840];
  pf::SceneTaxonomyNode::SceneTaxonomyNode(v32, 0, 0, 0, this + 15, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  v2 = *(this + 20);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(buf, "|_ROOT_|", this + 12);
  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::emplace_unique<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode&>(v31, v2, buf, buf, v32);
  v3 = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(buf);
  if (v31[0] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v31 + v31[0];
  }

  *(v4 + 13) = -104;
  v5 = *(this + 20);
  if (!*(v5 + 32))
  {
    v14 = 1;
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(v3, v5, *(v5 + 24));
  if (*buf == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = &buf[*buf];
  }

  v7 = *v6;
  v8 = v6 - &v36;
  if (v7 == 1)
  {
    v8 = 0;
  }

  v9 = v8 + v7;
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = &buf[v9 - 8];
  }

  v11 = v10 + 304;
  v12 = *(v10 + 38);
  v13 = v11 - buf;
  if (v12 == 1)
  {
    v13 = 0;
  }

  v14 = v13 + v12;
  if (v14 == 1)
  {
    goto LABEL_18;
  }

  v15 = buf - &v30;
LABEL_19:
  v16 = v15 + v14;
  v30 = v16;
  v36 = 1;
  if (v16 != 1)
  {
    v17 = &v31[-1] + v16;
    if ((&v31[-1] + v16))
    {
      v18 = 1;
      do
      {
        if (v17 != v4 && !*(v17 + 18))
        {
          pf::SceneTaxonomyNode::addChild((v4 + 32), (v17 + 32));
          v16 = v30;
          v18 = v36;
        }

        if (v16 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = &v31[-1] + v16;
        }

        v20 = v19 + 304;
        v21 = *(v19 + 38);
        v22 = v20 - buf;
        if (v21 == 1)
        {
          v22 = 0;
        }

        v23 = v22 + v21;
        if (v23 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = buf - &v30;
        }

        v16 = v24 + v23;
        v30 = v16;
        v17 = &v31[-1] + v16;
        if (v16 == 1)
        {
          v17 = 0;
        }

        v25 = &buf[v18 - 8];
        if (v18 == 1)
        {
          v25 = 0;
        }
      }

      while (v17 != v25);
    }
  }

  v26 = *(this + 7);
  v27 = *(MEMORY[0x1E69E5478] + 8) & 0x7FFFFFFFFFFFFFFFLL;
  *&buf[8] = vdupq_n_s64(4uLL);
  *buf = &unk_1F2A89F88;
  v38 = v27;
  v39 = &PF_SCENE_TAXONOMY_VERSION;
  boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v26, "version", buf);
  boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>::shrink_to_fit<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>,char>(*(this + 1));
  v28 = PFChecksumArchiveData((*(this + 7) - 8), *(*(this + 7) + 48) + 8, *(this + 3), *(this + 4));
  **(this + 5) = v28;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v28;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomy checksum %016llx", buf, 0xCu);
  }

  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v35);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v34);
  return boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v33);
}

void sub_1B3649C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pf::SceneTaxonomyNode::SceneTaxonomyNode(uint64_t a1, uint64_t a2, int a3, char a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = a11;
  *(a1 + 64) = a12;
  *(a1 + 72) = 1;
  if (*a5 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 + *a5;
  }

  if (v14)
  {
    v15 = v14 - &v21;
  }

  else
  {
    v15 = 1;
  }

  v21 = v15;
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::table(a1 + 80, &v21);
  if (*a5 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5 + *a5;
  }

  if (v16)
  {
    v17 = v16 - &v21;
  }

  else
  {
    v17 = 1;
  }

  v21 = v17;
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::table(a1 + 144, &v21);
  if (*a5 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = a5 + *a5;
  }

  if (v18)
  {
    v19 = v18 - &v21;
  }

  else
  {
    v19 = 1;
  }

  v21 = v19;
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::table(a1 + 208, &v21);
  return a1;
}

uint64_t boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::emplace_unique<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(a3);
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::find_node_impl<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(&v122, a2, v10, a3);
  if (v122 == 1)
  {
    v124 = (a2 + 16);
    v125 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v124);
    if (v125 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = &v126[v125 - 8];
    }

    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v12, a4);
    *(v12 + 2) = *a5;
    v13 = *(a5 + 16);
    v14 = *(a5 + 32);
    v15 = *(a5 + 48);
    *(v12 + 12) = *(a5 + 64);
    *(v12 + 4) = v14;
    *(v12 + 5) = v15;
    *(v12 + 3) = v13;
    v16 = *(a5 + 72);
    v17 = a5 + 72 - (v12 + 104);
    if (v16 == 1)
    {
      v17 = 0;
    }

    *(v12 + 13) = v17 + v16;
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::unordered_set((v12 + 112), a5 + 80);
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::unordered_set((v12 + 176), a5 + 144);
    boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::unordered_set((v12 + 240), a5 + 208);
    if (v125 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v18 = &v125 - &v121 + v125;
    v121 = v18;
    v19 = &v121 - &v130;
    if (v18 == 1)
    {
      v19 = 0;
    }

    v20 = v19 + v18;
    v21 = &v130 - &v125;
    if (v20 == 1)
    {
      v21 = 0;
    }

    v124 = (a2 + 16);
    v125 = v21 + v20;
    v22 = *(a2 + 32);
    v23 = v22 + 1;
    if (*(a2 + 56) == 1)
    {
      v24 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v23, *(a2 + 40));
      if (*(a2 + 24) <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = *(a2 + 24);
      }

      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(a2, v25);
    }

    else if (*(a2 + 48) < v23)
    {
      v30 = v22 + (v22 >> 1);
      if (v30 > v23)
      {
        v23 = v30;
      }

      v31 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v23, *(a2 + 40));
      if (v31 != *(a2 + 24))
      {
        if (*(a2 + 56) == 1)
        {
          __assert_rtn("rehash_impl", "implementation.hpp", 4578, "this->buckets_");
        }

        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(a2, v31);
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v130, a2, *(a2 + 24));
        v120 = v10;
        if (v130 == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = &v130 + v130;
        }

        v33 = *v32;
        v34 = v32 - &v129;
        if (v33 == 1)
        {
          v34 = 0;
        }

        v35 = v34 + v33;
        v129 = v35;
        v36 = v35 == 1;
        v37 = &v129 + v35;
        if (v35 == 1)
        {
          v37 = 0;
        }

        if (*(v37 + 38) != 1)
        {
          do
          {
            v45 = !v36;
            v38 = &v129 - &v128;
            if (!v45)
            {
              v38 = 0;
            }

            v39 = v38 + v35;
            if (v39 == 1)
            {
              v40 = 0;
            }

            else
            {
              v40 = &v128 + v39;
            }

            v41 = v40 + 304;
            v42 = *(v40 + 38);
            v43 = v41 - &v130;
            if (v42 == 1)
            {
              v43 = 0;
            }

            v44 = v43 + v42;
            v130 = v43 + v42;
            v45 = v43 + v42 == 1;
            v46 = &v130 - v126;
            if (v45)
            {
              v46 = 0;
            }

            v47 = v46 + v44;
            if (v45)
            {
              v48 = 0;
            }

            else
            {
              v48 = &v130 + v44;
            }

            if (v45)
            {
              v49 = 0;
            }

            else
            {
              v49 = &v130 - &v127;
            }

            if (v47 == 1)
            {
              v50 = 0;
            }

            else
            {
              v50 = &v126[v47];
            }

            v51 = (*(a2 + 24) - 1) & boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(v50);
            *(v48 + 39) = v51 & 0x7FFFFFFFFFFFFFFFLL;
            if (v49 + v44 == 1)
            {
              v52 = 0;
            }

            else
            {
              v52 = &v127 + v49 + v44;
            }

            v53 = v52 + 304;
            v54 = *(v52 + 38);
            v55 = v53 - &v128;
            if (v54 == 1)
            {
              v55 = 0;
            }

            for (i = v55 + v54; i != 1; i = v64 + v63)
            {
              v57 = &v128 + i;
              if ((*(&v128 + i + 312) & 0x8000000000000000) == 0)
              {
                break;
              }

              v58 = i + &v128 - &v130;
              v130 = v58;
              if (v58 == 1)
              {
                v57 = 0;
              }

              *(v57 + 39) = v51 | 0x8000000000000000;
              if (v58 == 1)
              {
                v59 = 0;
              }

              else
              {
                v59 = &v130 - &v127;
              }

              v60 = v59 + v58;
              if (v60 == 1)
              {
                v61 = 0;
              }

              else
              {
                v61 = &v127 + v60;
              }

              v62 = v61 + 304;
              v63 = *(v61 + 38);
              v64 = v62 - &v128;
              if (v63 == 1)
              {
                v64 = 0;
              }
            }

            boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v128, a2, v51);
            v65 = &v128 + v128;
            if (v128 == 1)
            {
              v65 = 0;
            }

            if (*v65 == 1)
            {
              v66 = (&v129 - v65);
              if (v129 == 1)
              {
                v66 = 0;
              }

              *v65 = &v66[v129];
              v67 = 8;
              if (v130 == 1)
              {
                v67 = 0;
              }

              v35 = v67 + v130;
              v129 = v67 + v130;
              v68 = &v129 + v67 + v130;
            }

            else
            {
              if (v130 == 1)
              {
                v69 = 0;
              }

              else
              {
                v69 = &v130 + v130;
              }

              v70 = *(v69 + 38);
              v71 = v69 + 304 - &v127;
              if (v70 == 1)
              {
                v71 = 0;
              }

              v72 = v71 + v70;
              v127 = v72;
              if (*v65 == 1)
              {
                v73 = 0;
              }

              else
              {
                v73 = &v65[*v65];
              }

              v74 = v73 + 304;
              v75 = *(v73 + 38);
              v76 = v74 - (v69 + 304);
              if (v75 == 1)
              {
                v76 = 0;
              }

              *(v69 + 38) = v76 + v75;
              v35 = v129;
              v68 = &v129 + v129;
              if (v129 == 1)
              {
                v77 = 0;
              }

              else
              {
                v77 = &v129 + v129;
              }

              v78 = *v65;
              v79 = &v65[*v65];
              if (v78 == 1)
              {
                v79 = 0;
              }

              v80 = *(v77 + 38);
              v81 = (v77 - v79);
              if (v80 == 1)
              {
                v81 = 0;
              }

              *(v79 + 38) = &v81[v80];
              v82 = (&v127 - (v77 + 304));
              if (v72 == 1)
              {
                v82 = 0;
              }

              *(v77 + 38) = &v82[v72];
            }

            v36 = v35 == 1;
            if (v35 == 1)
            {
              v68 = 0;
            }
          }

          while (*(v68 + 38) != 1);
        }

        v10 = v120;
      }
    }

    v83 = &v125 - &v123;
    if (v125 == 1)
    {
      v83 = 0;
    }

    v123 = v83 + v125;
    v125 = 1;
    v84 = (*(a2 + 24) - 1) & v10;
    boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v129, a2, v84);
    v85 = v123;
    v86 = &v123 + v123;
    if (v123 == 1)
    {
      v86 = 0;
    }

    *(v86 + 39) = v84 & 0x7FFFFFFFFFFFFFFFLL;
    if (v129 == 1)
    {
      v87 = 0;
    }

    else
    {
      v87 = (&v129 + v129);
    }

    if (*v87 == 1)
    {
      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v130, a2, *(a2 + 24));
      if (v130 == 1)
      {
        v88 = 0;
      }

      else
      {
        v88 = &v130 + v130;
      }

      v89 = *v88;
      v90 = v88 - &v128;
      if (v89 == 1)
      {
        v90 = 0;
      }

      v91 = v90 + v89;
      v128 = v91;
      v92 = &v128 + v91;
      if (v91 == 1)
      {
        v92 = 0;
      }

      if (*(v92 + 38) != 1)
      {
        v93 = &v128 - &v127;
        if (v91 == 1)
        {
          v93 = 0;
        }

        v94 = v93 + v91;
        if (v94 == 1)
        {
          v95 = 0;
        }

        else
        {
          v95 = &v127 + v94;
        }

        v96 = v95 + 304;
        v97 = *(v95 + 38);
        v98 = v96 - &v130;
        if (v97 == 1)
        {
          v98 = 0;
        }

        v99 = v98 + v97;
        if (v99 == 1)
        {
          v100 = 0;
        }

        else
        {
          v100 = &v130 + v99;
        }

        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v130, a2, *(v100 + 39) & 0x7FFFFFFFFFFFFFFFLL);
        if (v130 == 1)
        {
          v101 = 0;
        }

        else
        {
          v101 = &v130 + v130;
        }

        v102 = (&v123 - v101);
        if (v123 == 1)
        {
          v102 = 0;
        }

        *v101 = &v102[v123];
        v91 = v128;
      }

      if (v129 == 1)
      {
        v103 = 0;
      }

      else
      {
        v103 = &v129 + v129;
      }

      v104 = (&v128 - v103);
      if (v91 == 1)
      {
        v104 = 0;
      }

      *v103 = &v104[v91];
      v105 = &v128 + v128;
      if (v128 == 1)
      {
        v105 = 0;
      }

      v85 = v123;
      v106 = &v123 + v123;
      v107 = (&v123 - (v105 + 304));
      if (v123 == 1)
      {
        v106 = 0;
      }

      v108 = *(v105 + 38);
      if (v123 == 1)
      {
        v107 = 0;
      }

      v109 = v105 - v106;
      if (v108 == 1)
      {
        v109 = 0;
      }

      *(v106 + 38) = v109 + v108;
      v110 = &v107[v85];
    }

    else
    {
      v111 = *(v87 + *v87 + 304);
      v112 = v87 + *v87 - v86;
      if (v111 == 1)
      {
        v112 = 0;
      }

      *(v86 + 38) = v112 + v111;
      v113 = *v87;
      v114 = v87 + *v87;
      if (v113 == 1)
      {
        v105 = 0;
      }

      else
      {
        v105 = v114;
      }

      v115 = (&v123 - (v105 + 304));
      if (v85 == 1)
      {
        v115 = 0;
      }

      v110 = &v115[v85];
    }

    *(v105 + 38) = v110;
    ++*(a2 + 32);
    v116 = &v123 - &v130;
    if (v85 == 1)
    {
      v116 = 0;
    }

    v130 = v116 + v85;
    result = boost::unordered::detail::node_tmp<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_tmp(&v124);
    v117 = &v130 - &v124;
    if (v130 == 1)
    {
      v117 = 0;
    }

    v118 = v117 + v130;
    v119 = &v124 - a1;
    if (v118 == 1)
    {
      v119 = 0;
    }

    *a1 = &v119[v118];
    *(a1 + 8) = 1;
  }

  else
  {
    v26 = v122 + &v122 - &v130;
    v27 = &v130 - &v124;
    if (v26 == 1)
    {
      v27 = 0;
    }

    v28 = v27 + v26;
    v29 = &v124 - a1;
    if (v28 == 1)
    {
      v29 = 0;
    }

    *a1 = &v29[v28];
    *(a1 + 8) = 0;
  }

  return result;
}

void sub_1B364A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v10 + 176);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v10 + 112);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v10);
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(va);
  _Unwind_Resume(a1);
}

void sub_1B364A54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22)
{
  __cxa_begin_catch(a1);
  v24 = *(v23 - 96);
  v25 = v23 - 96 - &a22;
  v26 = v24 == 1;
  if (v24 == 1)
  {
    v25 = 0;
  }

  v27 = v25 + v24;
  v28 = v24 + v23 - 96;
  if (v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (v27 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = &a22 + v27;
  }

  v31 = v30 + 304;
  v32 = *(v30 + 38);
  v33 = v23 - 88;
  v34 = &v31[-v23 + 88];
  if (v32 == 1)
  {
    v34 = 0;
  }

  v35 = &v34[v32];
  *(v23 - 88) = v35;
  *(v29 + 304) = 1;
  if (v35 != 1)
  {
    v36 = v33 - &a21;
    do
    {
      if (&v35[v36] == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = &v35[v33];
      }

      v38 = v37 + 304;
      v39 = *(v37 + 38);
      v40 = v38 - &a22;
      if (v39 == 1)
      {
        v40 = 0;
      }

      a21 = &v35[v36];
      a22 = v40 + v39;
      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(v22, &a21);
      --*(v22 + 32);
      if (a22 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = &a22 - v33;
      }

      v35 = &v41[a22];
      *(v23 - 88) = &v41[a22];
    }

    while (v35 != 1);
  }

  __cxa_rethrow();
}

void sub_1B364A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_end_catch();
  boost::unordered::detail::node_tmp<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_tmp(va);
  JUMPOUT(0x1B364A654);
}

char *pf::SceneTaxonomyNode::addChild(pf::SceneTaxonomyNode *this, pf::SceneTaxonomyNode *a2)
{
  v6 = a2;
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::emplace_unique<pf::SceneTaxonomyNode*>(v5, this + 144, &v6);
  v6 = this;
  return boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::emplace_unique<pf::SceneTaxonomyNode*>(v5, a2 + 80, &v6);
}

char *boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(uint64_t a1, char *__s, uint64_t a3)
{
  if (__s == -1)
  {
    v5 = *(a3 + 24);
    v13 = (a1 + 88);
    v14 = 2;
  }

  else
  {
    v5 = __s;
    if (!__s)
    {
      v6 = *(a3 + 16);
      v7 = *(a3 + 8);
      v8 = 0xF / v7 + 1;
      v17[0] = v6 + *(a3 + 8) * v8;
      v18 = 0;
      v9 = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(a1, 1, v17[0], v17, &v18, 1uLL);
      if (!v9)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v16 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
        *v16 = &unk_1F2A8A288;
      }

      v10 = v9;
      v11 = v7 * v8;
      v17[0] = v9;
      v17[1] = a1;
      *v9 = v6;
      *(v9 + 4) = 0;
      *(v9 + 10) = v7;
      *(v9 + 11) = 1;
      v18 = 0;
      (**a3)(a3, v9 + v11, 1, &v18);
      v17[0] = 0;
      boost::interprocess::ipcdetail::mem_algo_deallocator<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::~mem_algo_deallocator(v17);
      return v10 + v11;
    }

    v13 = (a1 + 56);
    v14 = 1;
  }

  return boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_named_construct<char>(a1, v14, v5, a3, v13);
}

void sub_1B364A85C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  a11 = 0;
  (*(*v12 + 8))(v12, v13 + v14, a12, &a11);
  __cxa_rethrow();
}

void sub_1B364A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  boost::interprocess::ipcdetail::mem_algo_deallocator<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::~mem_algo_deallocator(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>::shrink_to_fit<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>,char>(char *a1)
{
  v36[0] = a1;
  v31 = 0;
  *v33 = &v31;
  v34 = 1;
  boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::managed_open_or_create_impl<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>(&v32, v36, 2, v33);
  v2 = v31;
  v3 = v31 + 55;
  v4 = (*(v31 + 32) + v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 8 + ((*(v31 + 48) - (v4 - v31 + 8)) & 0xFFFFFFFFFFFFFFF8) - 16;
  if ((v5 & 7) != 0)
  {
    goto LABEL_33;
  }

  v6 = (v4 + 8);
  v7 = *(v4 + ((*(v31 + 48) - (v4 - v31 + 8)) & 0xFFFFFFFFFFFFFFF8));
  if (v4 + 8 + 8 * *(v4 + 16) != v5)
  {
    if ((v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v6 == v5)
    {
      v8 = v6[-*v5 + 1];
    }

    else
    {
      v8 = *(v5 - 8 * *v5 + 8);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v9 = "!prev->m_allocated";
        v10 = 1218;
        goto LABEL_40;
      }

      if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != *v5)
      {
        v9 = "prev->m_size == block->m_prev_size";
        v10 = 1219;
LABEL_40:
        v24 = "rbtree_best_fit.hpp";
        v25 = "priv_is_prev_allocated";
LABEL_41:
        __assert_rtn(v25, v24, v10, v9);
      }
    }

    v12 = 0;
    v15 = v5 - 8 * *v5;
    goto LABEL_19;
  }

  *v33 = 0;
  v36[0] = 0;
  v11 = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v31, 1, 0, v33, v36, 1uLL);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  if ((v11 & 7) != 0)
  {
LABEL_33:
    v9 = "uint_ptr % Alignment == 0";
    v10 = 106;
    v24 = "mem_algo_common.hpp";
    v25 = "assert_alignment";
    goto LABEL_41;
  }

  v13 = *(v11 - 1);
  v14 = ((*(v2 + 32) + v3) & 0xFFFFFFFFFFFFFFF8) + ((*(v2 + 48) + v2 - ((*(v2 + 32) + v3) & 0xFFFFFFFFFFFFFFF8) - 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = &v11[v13 - 2];
  if ((v14 + 8) != v11 && ((*(v15 + 8) & 0x4000000000000000) != 0) != v13 >> 63)
  {
    goto LABEL_36;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v9 = "priv_is_allocated_block(unique_block)";
    v10 = 545;
    goto LABEL_38;
  }

  v8 = *(v15 + 8);
  if (v14 - 8 != v15 && ((*(v15 + 8 * v8 + 8) & 0x4000000000000000) != 0) != v8 >> 63)
  {
LABEL_36:
    v9 = "allocated == next_block_prev_allocated";
    v10 = 1200;
    v24 = "rbtree_best_fit.hpp";
    v25 = "priv_is_allocated_block";
    goto LABEL_41;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = "!priv_is_allocated_block(last_block)";
    v10 = 548;
LABEL_38:
    v24 = "rbtree_best_fit.hpp";
    v25 = "shrink_to_fit";
    goto LABEL_41;
  }

LABEL_19:
  v35 = v15 - &v35 + 16;
  v16 = &v35 - v33;
  if (v15 - &v35 == -15)
  {
    v16 = 0;
  }

  v17 = v16 + v15 - &v35 + 16;
  v18 = v33 - v36;
  if (v17 == 1)
  {
    v18 = 0;
  }

  v36[0] = (v18 + v17);
  boost::intrusive::bstree_impl<boost::intrusive::bhtraits<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::block_ctrl,boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>,(boost::intrusive::link_mode_type)0,boost::intrusive::dft_tag,3u>,void,void,unsigned long,true,(boost::intrusive::algo_types)5,void>::erase(v33, v2, v36);
  if ((v15 & 7) != 0)
  {
    goto LABEL_33;
  }

  *(v15 + 8) = *(v15 + 8) & 0xC000000000000000 | ((v15 - v6) >> 3);
  *v6 = (v15 - v6) >> 3;
  v19 = *(v15 + 8);
  *(v15 + 8) = v19 | 0x8000000000000000;
  if ((v19 & 0x3FFFFFFFFFFFFFFFLL) != (v7 & 0x3FFFFFFFFFFFFFFFLL) - (v8 & 0x3FFFFFFFFFFFFFFFLL))
  {
    v9 = "new_end_block->m_size == (old_end_block_size - last_block_size)";
    v10 = 584;
    goto LABEL_38;
  }

  v20 = (v15 - v2 + 16) & 0x3FFFFFFFFFFFFFFFLL;
  *(v2 + 48) = v20;
  if (((*(v2 + 32) + v3) & 0xFFFFFFFFFFFFFFF8) + ((v20 + v2 - ((*(v2 + 32) + v3) & 0xFFFFFFFFFFFFFFF8) - 8) & 0xFFFFFFFFFFFFFFF8) - 8 != v15)
  {
    v9 = "priv_end_block() == new_end_block";
    v10 = 588;
    goto LABEL_38;
  }

  if (v12)
  {
    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v2, v12);
  }

LABEL_28:
  v21 = *(v31 + 48) + 8;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(&v31);
  LOWORD(v31) = 420;
  boost::interprocess::ipcdetail::file_wrapper::priv_open_or_create<char>(v33, 2, a1, 2, &v31);
  if (v21 < 0)
  {
    *__error() = 22;
    goto LABEL_43;
  }

  v22 = v33[0];
  result = ftruncate(v33[0], v21);
  if (result)
  {
LABEL_43:
    v26 = *__error();
    LODWORD(v31) = v26;
    v27 = &boost::interprocess::ec_table;
    v28 = 128;
    while (*v27 != v26)
    {
      v27 += 2;
      v28 -= 8;
      if (!v28)
      {
        v29 = 1;
        goto LABEL_48;
      }
    }

    v29 = v27[1];
LABEL_48:
    HIDWORD(v31) = v29;
    exception = __cxa_allocate_exception(0x28uLL);
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v31);
  }

  if (v22 != -1)
  {
    return close(v22);
  }

  return result;
}