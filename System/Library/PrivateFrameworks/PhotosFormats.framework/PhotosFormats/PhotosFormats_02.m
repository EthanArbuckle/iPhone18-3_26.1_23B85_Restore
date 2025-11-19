void sub_1B364ACF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_free_exception(v14);
  boost::interprocess::ipcdetail::file_wrapper::~file_wrapper(&a14);
  _Unwind_Resume(a1);
}

void pf::SceneTaxonomyNode::~SceneTaxonomyNode(pf::SceneTaxonomyNode *this)
{
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(this + 208);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(this + 144);
  boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(this + 80);
}

uint64_t boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a1 + 36) == 1)
    {
      if (shmdt(v2))
      {
        __assert_rtn("priv_close", "mapped_region.hpp", 836, "ret == 0");
      }
    }

    else
    {
      munmap(&v2[-*(a1 + 24)], *(a1 + 16) + *(a1 + 24));
      *(a1 + 8) = 0;
    }
  }

  *a1 = 0;
  return a1;
}

char *boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_named_construct<char>(uint64_t a1, int a2, char *__s, uint64_t a4, void *a5)
{
  v111 = a2;
  v113 = a1;
  __src = __s;
  v7 = strlen(__s);
  v8 = *(a4 + 16);
  v110 = a4;
  v9 = *(a4 + 8);
  v121 = 1;
  v122 = 1;
  v123 = 0;
  v120[0] = 0;
  v112 = &v121;
  v10 = (a5 + 1);
  v124 = (a5 + 1) - &v124;
  v125 = (a5 + 1) - &v125;
  v129[0] = (a5 + 1) - v129;
  v11 = (a5 + 1) - &v128;
  v128 = v11;
  if (v11 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = (a5 + 1);
  }

  v13 = *v12 & 0xFFFFFFFFFFFFFFFDLL;
  v14 = v12 - v127;
  if (v13 == 1)
  {
    v14 = 0;
  }

  v15 = v14 + v13;
  v126 = 1;
  v127[0] = v14 + v13;
  if (v14 + v13 == 1)
  {
    v16 = 1;
    v17 = 1;
  }

  else
  {
    v107 = v9;
    v108 = v8;
    v109 = a5;
    v18 = v127 - &v128;
    v16 = 1;
    do
    {
      v11 = v18 + v15;
      v128 = v18 + v15;
      v115 = v127 + v15 - &v115;
      if (v115 == 1)
      {
        goto LABEL_132;
      }

      v19 = v7;
      v17 = boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(__src, v7, v127 + v15);
      if (v17)
      {
        v20 = 8;
      }

      else
      {
        if (v11 == 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 40;
        }

        v16 = v21 + v11;
        v126 = v21 + v11;
        v20 = 16;
      }

      if (v15 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = v127 + v15;
      }

      v23 = &v22[v20];
      v24 = *v23;
      v25 = v23 - &v115;
      if (v24 == 1)
      {
        v25 = 0;
      }

      v26 = v25 + v24;
      if (v26 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = &v115 - v127;
      }

      v15 = v27 + v26;
      v127[0] = v27 + v26;
      v7 = v19;
    }

    while (v27 + v26 != 1);
    if (v16 == 1)
    {
      v10 = (a5 + 1);
      a5 = v109;
      v8 = v108;
    }

    else
    {
      v115 = &v127[-1] + v16 - &v115;
      if (v115 == 1)
      {
LABEL_132:
        __assert_rtn("to_value_ptr", "hook_traits.hpp", 62, "!!p");
      }

      v10 = (a5 + 1);
      a5 = v109;
      if (!boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::intrusive_key_value_less::operator()(&v127[-1] + v16, __src, v19))
      {
        v29 = 0;
        v7 = v19;
        v9 = v107;
        v8 = v108;
        goto LABEL_34;
      }

      v8 = v108;
      v7 = v19;
    }

    v9 = v107;
  }

  v120[0] = v17;
  v28 = (&v128 - v112);
  if (v11 == 1)
  {
    v28 = 0;
  }

  v121 = &v28[v11];
  v29 = 1;
LABEL_34:
  v30 = &v126 - &v115;
  if (v16 == 1)
  {
    v30 = 0;
  }

  v31 = v30 + v16;
  v32 = &v115 - &v128;
  if (v31 == 1)
  {
    v32 = 0;
  }

  v33 = v32 + v31;
  v34 = &v128 - v129;
  if (v33 == 1)
  {
    v34 = 0;
  }

  v35 = v34 + v33;
  v36 = v129 - v119;
  if (v35 == 1)
  {
    v36 = 0;
  }

  v37 = v36 + v35;
  v38 = v119 - &v122;
  if (v37 == 1)
  {
    v38 = 0;
  }

  v39 = v38 + v37;
  v122 = v39;
  v123 = v29;
  v40 = &v122 - &v115;
  if (v39 == 1)
  {
    v40 = 0;
  }

  v41 = v40 + v39;
  v42 = &v115 - &v118;
  if (v41 == 1)
  {
    v42 = 0;
  }

  v118 = v42 + v41;
  if ((v29 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v115 = 0x900000000;
    boost::interprocess::interprocess_exception::interprocess_exception(exception, &v115);
  }

  v43 = 0xF / v9 + 1;
  v44 = v7;
  v45 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v113, v8 + v7 + v9 * v43 + 25);
  v46 = v45;
  *v45 = vdupq_n_s64(1uLL);
  v45[1].i64[0] = 1;
  v47 = v45 - v119;
  v119[0] = v45 - v119;
  v48 = v119 - &v115;
  if (v45 - v119 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = v119 - &v115;
  }

  v50 = v49 + v47;
  v115 = v50;
  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = (&v115 + v50);
  }

  *v51 = *v51 & 2 | 1;
  if (v119[0] == 1)
  {
    v48 = 0;
  }

  v52 = v48 + v119[0];
  if (v52 == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = &v115 + v52;
  }

  *(v53 + 1) = 1;
  *(v53 + 2) = 1;
  v45[1].i64[1] = v8;
  v54 = &v45[1].i8[8];
  v55 = (32 * v111) | 1;
  v45[2].i16[0] = v44;
  v56 = v9 * v43;
  v45[2].i8[2] = v9;
  v45[2].i8[3] = v55;
  if (v44 != -1)
  {
    memmove(&v54[v8 + v56], __src, v44 + 1);
  }

  v57 = v46 - v127;
  v127[0] = v46 - v127;
  v119[0] = v47;
  v58 = v46->i64[0] & 0xFFFFFFFFFFFFFFFDLL;
  v59 = v46 - &v115;
  if (v58 == 1)
  {
    v59 = 0;
  }

  if (v59 + v58 != 1)
  {
    v102 = "!safemode_or_autounlink || node_algorithms::unique(to_insert)";
    v103 = 1318;
LABEL_137:
    v104 = "bstree.hpp";
    v105 = "insert_unique_commit";
LABEL_138:
    __assert_rtn(v105, v104, v103, v102);
  }

  v60 = v112 - &v126;
  if (v121 == 1)
  {
    v60 = 0;
  }

  v61 = v60 + v121;
  v126 = v60 + v121;
  if ((v120[0] & 1) == 0)
  {
    boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::next_node(&v115, &v126);
    v62 = &v115 - &v126;
    if (v115 == 1)
    {
      v62 = 0;
    }

    v61 = v62 + v115;
    v126 = v62 + v115;
  }

  v63 = v10 - v129;
  v129[0] = v10 - v129;
  v64 = &v126 - &v115;
  if (v61 == 1)
  {
    v64 = 0;
  }

  v65 = v64 + v61;
  v66 = v129 - v119;
  if (v63 == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = v129 - v119;
  }

  v68 = v67 + v63;
  if (v65 == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = &v115 + v65;
  }

  if (v68 == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = v119 + v68;
  }

  if (v69 != v70)
  {
    v71 = &v127[-1] + v61;
    if (v61 == 1)
    {
      v71 = 0;
    }

    v115 = v71 - &v115;
    if (v71 - &v115 == 1)
    {
      goto LABEL_134;
    }

    if (*(v71 + 16) < v46[2].u16[0])
    {
      v102 = "( p == this->end() || !this->comp()(*p, value))";
      v103 = 1328;
      goto LABEL_137;
    }
  }

  v72 = a5[2];
  v73 = (a5 + 2) - &v115;
  if (v72 == 1)
  {
    v73 = 0;
  }

  v74 = v73 + v72;
  v75 = &v115 - v129;
  if (v74 == 1)
  {
    v75 = 0;
  }

  v76 = v75 + v74;
  v129[0] = v76;
  v77 = &v126 - &v115;
  if (v61 == 1)
  {
    v77 = 0;
  }

  v78 = v77 + v61;
  if (v76 == 1)
  {
    v66 = 0;
  }

  v79 = v66 + v76;
  if (v78 == 1)
  {
    v80 = 0;
  }

  else
  {
    v80 = &v115 + v78;
  }

  v81 = v119 + v79;
  if (v79 == 1)
  {
    v81 = 0;
  }

  if (v80 != v81)
  {
    boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::prev_node(&v115, &v126);
    v82 = &v115 - &v126;
    if (v115 == 1)
    {
      v82 = 0;
    }

    v126 = v82 + v115;
    if (v82 + v115 == 1)
    {
      v83 = 0;
    }

    else
    {
      v83 = &v127[-1] + v82 + v115;
    }

    v115 = v83 - &v115;
    if (v83 - &v115 != 1)
    {
      if (v46[2].u16[0] >= *(v83 + 16))
      {
        goto LABEL_108;
      }

      v102 = "( p == this->begin() || !this->comp()(value, *--p))";
      v103 = 1329;
      goto LABEL_137;
    }

LABEL_134:
    v102 = "!!p";
    v103 = 62;
    v104 = "hook_traits.hpp";
    v105 = "to_value_ptr";
    goto LABEL_138;
  }

LABEL_108:
  v125 = v10 - &v125;
  v84 = v127 - &v124;
  if (v57 == 1)
  {
    v84 = 0;
  }

  v85 = v84 + v57;
  v124 = v85;
  v129[0] = v10 - v129;
  v86 = &v124 - &v128;
  if (v85 == 1)
  {
    v86 = 0;
  }

  v87 = v86 + v85;
  v128 = v87;
  v115 = v10 - &v115;
  v88 = &v128 - v119;
  if (v87 == 1)
  {
    v88 = 0;
  }

  v119[0] = v88 + v87;
  boost::intrusive::bstree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::insert_commit(&v115, v119, v120);
  v89 = &v125 - &v115;
  if (v125 == 1)
  {
    v89 = 0;
  }

  v115 = v89 + v125;
  v90 = &v124 - v119;
  if (v124 == 1)
  {
    v90 = 0;
  }

  v119[0] = v90 + v124;
  boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::rebalance_after_insertion(&v115, v119);
  ++*a5;
  v91 = v127 - &v115;
  if (v127[0] == 1)
  {
    v91 = 0;
  }

  v92 = &v115 - &v118;
  if (v91 + v127[0] == 1)
  {
    v92 = 0;
  }

  v93 = v92 + v91 + v127[0];
  v118 = v93;
  v119[0] = v46;
  v119[1] = v113;
  v94 = &v118 - v129;
  if (v93 == 1)
  {
    v94 = 0;
  }

  v95 = v94 + v93;
  v96 = v129 - &v128;
  if (v95 == 1)
  {
    v96 = 0;
  }

  v97 = v96 + v95;
  v98 = &v128 - v129;
  if (v97 == 1)
  {
    v98 = 0;
  }

  v99 = v98 + v97;
  v100 = v129 - &v116;
  if (v99 == 1)
  {
    v100 = 0;
  }

  v115 = a5;
  v116 = v100 + v99;
  v117 = 1;
  v129[0] = 0;
  (**v110)(v110, &v54[v56], 1, v129);
  v117 = 0;
  v119[0] = 0;
  boost::interprocess::value_eraser<boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>>::~value_eraser(&v115);
  boost::interprocess::ipcdetail::mem_algo_deallocator<boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::~mem_algo_deallocator(v119);
  return &v54[v56];
}

void *boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(uint64_t a1, unint64_t a2)
{
  v5 = 0;
  v6 = a2;
  result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(a1, 1, a2, &v6, &v5, 1uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v4 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v4 = &unk_1F2A8A288;
  }

  return result;
}

uint64_t boost::interprocess::value_eraser<boost::interprocess::iset_index<boost::interprocess::ipcdetail::index_config<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>>::~value_eraser(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    v4 = a1 + 8 - &v33;
    if (v3 == 1)
    {
      v4 = 0;
    }

    v5 = v4 + v3;
    v6 = &v33 - &v28;
    if (v5 == 1)
    {
      v6 = 0;
    }

    v7 = v6 + v5;
    v28 = v7;
    v8 = &v28 - &v33;
    if (v7 == 1)
    {
      v8 = 0;
    }

    v9 = v8 + v7;
    if (v7 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v28 - &v31;
    }

    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v33 - &v32;
    }

    v32 = v11 + v9;
    boost::intrusive::bstree_algorithms_base<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::next_node(&v33, &v32);
    if (v33 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = &v33 - &v32;
    }

    v32 = v12 + v33;
    v13 = v10 + v7;
    if (v10 + v7 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v31 - &v30;
    }

    v15 = v14 + v13;
    v30 = v15;
    v31 = v10 + v7;
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = &v30 + v15;
    }

    v17 = *v16 & 0xFFFFFFFFFFFFFFFDLL;
    v18 = v16 - &v33;
    if (v17 == 1)
    {
      v18 = 0;
    }

    if (v18 + v17 == 1)
    {
      __assert_rtn("erase", "bstree.hpp", 1418, "!safemode_or_autounlink || !node_algorithms::unique(to_erase)");
    }

    v33 = v2 - &v33 + 8;
    if (v13 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v31 - &v30;
    }

    v30 = v19 + v13;
    boost::intrusive::rbtree_algorithms<boost::intrusive::rbtree_node_traits<boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,true>>::erase(v29, &v33, &v30);
    --*v2;
    if (v31 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = &v31 - &v30;
    }

    v21 = v20 + v31;
    v30 = v21;
    v22 = &v30 - &v33;
    if (v21 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = &v30 - &v33;
    }

    v24 = v23 + v21;
    v33 = v24;
    if (v24 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = (&v33 + v24);
    }

    *v25 = *v25 & 2 | 1;
    if (v30 == 1)
    {
      v22 = 0;
    }

    if (v22 + v30 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = &v33 + v22 + v30;
    }

    *(v26 + 1) = 1;
    *(v26 + 2) = 1;
  }

  return a1;
}

uint64_t boost::interprocess::ipcdetail::mem_algo_deallocator<boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>>::~mem_algo_deallocator(uint64_t a1)
{
  if (*a1)
  {
    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(*(a1 + 8), *a1);
  }

  return a1;
}

uint64_t boost::interprocess::ipcdetail::mem_algo_deallocator<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::~mem_algo_deallocator(uint64_t a1)
{
  if (*a1)
  {
    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(*(a1 + 8), *a1);
  }

  return a1;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<int,false,int const&>::construct_n(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = **(result + 32);
    v5 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a3 - 1);
    v7 = (a2 + 8);
    v8 = 1;
    do
    {
      v9 = vdupq_n_s64(v8 - 1);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1B36A1D80)));
      if (vuzp1_s16(v10, *v6.i8).u8[0])
      {
        *(v7 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v6).i8[2])
      {
        *(v7 - 1) = v4;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_1B36A1EE0)))).i32[1])
      {
        *v7 = v4;
        v7[1] = v4;
      }

      v8 += 4;
      v7 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  *a4 = a3;
  return result;
}

char *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::emplace_unique<pf::SceneTaxonomyNode*>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a2 + 16);
  v142 = (a2 + 16);
  v143[0] = 1;
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v142);
  if (v143[0] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v143 + v143[0]);
  }

  if (*a3)
  {
    v7 = *a3 - v6;
  }

  else
  {
    v7 = 1;
  }

  *v6 = v7;
  if (v143[0] == 1)
  {
    __assert_rtn("release", "implementation.hpp", 1955, "node_");
  }

  v8 = v143 - v147 + v143[0];
  v9 = v147 - &v141;
  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  v140 = v5;
  v141 = v10;
  v135 = &v141;
  v11 = &v141 - &v142;
  if (v10 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + v10;
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = (&v143[-1] + v12);
  }

  v136 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::hash(v13);
  if (!*(a2 + 32))
  {
    goto LABEL_94;
  }

  v14 = (*(a2 + 24) - 1) & v136;
  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v142, a2, v14);
  v15 = &v143[-1] + v142;
  if (v142 == 1)
  {
    v15 = 0;
  }

  v16 = *v15;
  v17 = v15 - v147;
  if (v16 == 1)
  {
    v17 = 0;
  }

  v18 = v17 + v16;
  if (v18 == 1)
  {
    goto LABEL_94;
  }

  v19 = v147 + v18;
  if (v18 + v147 - &v142 == 1)
  {
    v19 = 0;
  }

  v20 = *(v19 + 1);
  v21 = v19 + 8 - &v146;
  if (v20 == 1)
  {
    v21 = 0;
  }

  v22 = v21 + v20;
  v146 = v21 + v20;
  if (v21 + v20 == 1)
  {
LABEL_94:
    v139 = 1;
LABEL_95:
    v62 = v135;
    v63 = v135 - &v137;
    if (v141 == 1)
    {
      v63 = 0;
    }

    v64 = v63 + v141;
    v137 = v64;
    v141 = 1;
    v65 = &v137 - v147;
    if (v64 == 1)
    {
      v65 = 0;
    }

    v66 = v65 + v64;
    v67 = v147 - v143;
    if (v66 == 1)
    {
      v67 = 0;
    }

    v142 = v5;
    v143[0] = v67 + v66;
    v68 = *(a2 + 32);
    v69 = v68 + 1;
    if (*(a2 + 56) == 1)
    {
      v70 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v69, *(a2 + 40));
      if (*(a2 + 24) <= v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = *(a2 + 24);
      }

      boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::create_buckets(a2, v71);
    }

    else if (*(a2 + 48) < v69)
    {
      v72 = v68 + (v68 >> 1);
      if (v72 > v69)
      {
        v69 = v72;
      }

      v73 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v69, *(a2 + 40));
      if (v73 != *(a2 + 24))
      {
        if (*(a2 + 56) == 1)
        {
          __assert_rtn("rehash_impl", "implementation.hpp", 4578, "this->buckets_");
        }

        boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::create_buckets(a2, v73);
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(v147, a2, *(a2 + 24));
        if (v147[0] == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = v147 + v147[0];
        }

        v75 = *v74;
        v76 = v74 - &v146;
        if (v75 == 1)
        {
          v76 = 0;
        }

        v77 = v76 + v75;
        v146 = v77;
        v78 = v77 == 1;
        v79 = &v147[-1] + v77;
        if (v77 == 1)
        {
          v79 = 0;
        }

        if (*(v79 + 1) != 1)
        {
          do
          {
            v86 = !v78;
            v80 = 8;
            if (!v86)
            {
              v80 = 0;
            }

            v81 = v80 + v77;
            if (v81 == 1)
            {
              v82 = 0;
            }

            else
            {
              v82 = &v145 + v81;
            }

            v83 = *(v82 + 1);
            v84 = v82 + 8 - v147;
            if (v83 == 1)
            {
              v84 = 0;
            }

            v85 = v84 + v83;
            v147[0] = v84 + v83;
            v86 = v84 + v83 == 1;
            v87 = 24;
            if (v86)
            {
              v87 = 0;
            }

            v88 = v87 + v85;
            if (v86)
            {
              v89 = 0;
            }

            else
            {
              v89 = v147 + v85;
            }

            if (v86)
            {
              v90 = 0;
            }

            else
            {
              v90 = v147 - v144;
            }

            if (v88 == 1)
            {
              v91 = 0;
            }

            else
            {
              v91 = (&v144[1] + v88);
            }

            v92 = (*(a2 + 24) - 1) & boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::hash(v91);
            *(v89 + 2) = v92 & 0x7FFFFFFFFFFFFFFFLL;
            if (v90 + v85 == 1)
            {
              v93 = 0;
            }

            else
            {
              v93 = v144 + v90 + v85;
            }

            v94 = *(v93 + 1);
            v95 = v93 + 8 - &v145;
            if (v94 == 1)
            {
              v95 = 0;
            }

            for (i = v95 + v94; i != 1; i = v103 + v102)
            {
              v97 = &v145 + i;
              if ((*(&v145 + i + 16) & 0x8000000000000000) == 0)
              {
                break;
              }

              v98 = i - 16;
              if (v98 == 1)
              {
                v97 = 0;
              }

              *(v97 + 2) = v92 | 0x8000000000000000;
              if (v98 == 1)
              {
                v99 = 0;
              }

              else
              {
                v99 = v147 - v144;
              }

              v100 = v99 + v98;
              if (v100 == 1)
              {
                v101 = 0;
              }

              else
              {
                v101 = v144 + v100;
              }

              v102 = *(v101 + 1);
              v147[0] = v98;
              v103 = v101 + 8 - &v145;
              if (v102 == 1)
              {
                v103 = 0;
              }
            }

            boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v145, a2, v92);
            v104 = &v145 + v145;
            if (v145 == 1)
            {
              v104 = 0;
            }

            if (*v104 == 1)
            {
              v105 = (&v146 - v104);
              if (v146 == 1)
              {
                v105 = 0;
              }

              *v104 = &v105[v146];
              v106 = 1;
              if (v147[0] == 1)
              {
                v106 = 0;
              }

              v77 = v106 * 8 + v147[0];
              v146 = v106 * 8 + v147[0];
              v107 = &v147[v106 - 1] + v147[0];
            }

            else
            {
              if (v147[0] == 1)
              {
                v108 = 0;
              }

              else
              {
                v108 = v147 + v147[0];
              }

              v111 = *(v108 + 1);
              v109 = v108 + 8;
              v110 = v111;
              v112 = v109 - v144;
              if (v111 == 1)
              {
                v112 = 0;
              }

              v113 = v112 + v110;
              v144[0] = v113;
              if (*v104 == 1)
              {
                v114 = 0;
              }

              else
              {
                v114 = &v104[*v104];
              }

              v115 = *(v114 + 1);
              v116 = v114 + 8 - v109;
              if (v115 == 1)
              {
                v116 = 0;
              }

              *v109 = v116 + v115;
              v77 = v146;
              v107 = &v147[-1] + v146;
              if (v146 == 1)
              {
                v117 = 0;
              }

              else
              {
                v117 = &v147[-1] + v146;
              }

              v118 = *v104;
              v119 = &v104[*v104];
              if (v118 == 1)
              {
                v119 = 0;
              }

              v122 = *(v117 + 1);
              v120 = v117 + 8;
              v121 = v122;
              v123 = (v120 - (v119 + 8));
              if (v122 == 1)
              {
                v123 = 0;
              }

              *(v119 + 1) = &v123[v121];
              v124 = (v144 - v120);
              if (v113 == 1)
              {
                v124 = 0;
              }

              *v120 = &v124[v113];
            }

            v78 = v77 == 1;
            if (v77 == 1)
            {
              v107 = 0;
            }
          }

          while (*(v107 + 1) != 1);
        }

        v62 = v135;
      }
    }

    v125 = v143 - v147;
    if (v143[0] == 1)
    {
      v125 = 0;
    }

    v147[0] = v125 + v143[0];
    v143[0] = 1;
    result = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::add_node_unique(&v146, a2, v147, v136);
    if (v143[0] != 1)
    {
      v147[0] = v143 - v147 + v143[0];
      result = std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v142, v147);
    }

    v126 = &v146 - v138;
    if (v146 == 1)
    {
      v126 = 0;
    }

    v127 = &v138[-a1];
    if (v126 + v146 == 1)
    {
      v127 = 0;
    }

    *a1 = &v127[v126 + v146];
    *(a1 + 8) = 1;
    goto LABEL_196;
  }

  v23 = &v146 - v144;
  v24 = v144 - &v145;
  while (1)
  {
    if (v22 + &v146 - &v142 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = (&v147[-1] + v22);
    }

    if (*v13 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v13 + *v13);
    }

    v27 = *v25;
    v28 = (v25 + *v25);
    if (v27 == 1)
    {
      v28 = 0;
    }

    if (*v26 == *v28)
    {
      v29 = v26[9];
      v30 = v26 + v29 + 72;
      if (v29 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = v28[9];
      v33 = v28 + v32 + 72;
      if (v32 == 1)
      {
        v33 = 0;
      }

      v34 = v31[8];
      if (v34)
      {
        v35 = v34 >> 1;
      }

      else
      {
        v35 = *(v31 + 1) >> 1;
      }

      v36 = v33[8];
      v37 = v36 >> 1;
      if ((v36 & 1) == 0)
      {
        v37 = *(v33 + 1) >> 1;
      }

      if (v35 == v37)
      {
        if (v34)
        {
          v40 = v31 - &v142 + 9;
        }

        else
        {
          v38 = *(v31 + 3);
          v39 = v31 + 24 - &v142;
          if (v38 == 1)
          {
            v39 = 0;
          }

          v40 = v39 + v38;
        }

        v41 = v40 == 1 ? 0 : &v143[-1] + v40;
        if (v36)
        {
          v44 = v33 - &v142 + 9;
        }

        else
        {
          v42 = *(v33 + 3);
          v43 = v33 + 24 - &v142;
          if (v42 == 1)
          {
            v43 = 0;
          }

          v44 = v43 + v42;
        }

        v45 = v44 == 1 ? 0 : &v143[-1] + v44;
        result = memcmp(v41, v45, v35);
        v23 = &v146 - v144;
        v24 = v144 - &v145;
        if (!result)
        {
          break;
        }
      }
    }

    if (v22 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = &v146 - &v142;
    }

    v48 = v47 + v22;
    if (v48 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = &v143[-1] + v48;
    }

    if ((*(v49 + 2) & 0x7FFFFFFFFFFFFFFFLL) == v14)
    {
      v50 = v22 == 1 ? 0 : v23;
      v51 = v50 + v22;
      v52 = v51 == 1 ? 0 : v24;
      v53 = v52 + v51;
      while (1)
      {
        if (v53 == 1)
        {
          v54 = 0;
        }

        else
        {
          v54 = -16;
        }

        v55 = v54 + v53;
        if (v55 == 1)
        {
          v56 = 0;
        }

        else
        {
          v56 = v147 + v55;
        }

        v57 = *(v56 + 1);
        v58 = v56 + 8 - &v142;
        if (v57 == 1)
        {
          v58 = 0;
        }

        v59 = v58 + v57;
        v60 = v59 == 1 ? 0 : &v142 - &v145;
        v53 = v60 + v59;
        if (v53 == 1)
        {
          break;
        }

        if ((*(&v145 + v53 + 16) & 0x8000000000000000) == 0)
        {
          v61 = -8;
          goto LABEL_93;
        }
      }

      v61 = 0;
LABEL_93:
      v22 = v61 + v53;
      v146 = v61 + v53;
      if (v61 + v53 != 1)
      {
        continue;
      }
    }

    goto LABEL_94;
  }

  v128 = &v146 - &v139;
  if (v22 == 1)
  {
    v128 = 0;
  }

  v129 = v128 + v22;
  v139 = v129;
  if (v129 == 1)
  {
    goto LABEL_95;
  }

  v130 = v129 + &v139 - v147;
  v131 = v147 - &v142;
  if (v130 == 1)
  {
    v131 = 0;
  }

  v132 = v131 + v130;
  v133 = &v143[-1] - a1;
  if (v132 == 1)
  {
    v133 = 0;
  }

  *a1 = &v133[v132];
  *(a1 + 8) = 0;
  v62 = v135;
LABEL_196:
  if (v141 != 1)
  {
    v142 = (v62 - &v142 + v141);
    return std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v140, &v142);
  }

  return result;
}

void sub_1B364C2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(va);
  _Unwind_Resume(a1);
}

void sub_1B364C2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25)
{
  __cxa_begin_catch(a1);
  v27 = *(v26 - 104);
  v28 = v26 - 96;
  v29 = -8;
  v30 = v27 == 1;
  if (v27 == 1)
  {
    v29 = 0;
  }

  v31 = v29 + v27;
  v32 = v27 + v26 - 104;
  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  if (v31 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31 + v28;
  }

  v35 = *(v34 + 8);
  v36 = v26 - 112;
  v37 = v34 + 8 - (v26 - 112);
  if (v35 == 1)
  {
    v37 = 0;
  }

  v38 = (v37 + v35);
  *(v26 - 112) = v38;
  *(v33 + 8) = 1;
  if (v38 != 1)
  {
    v39 = v36 - v28;
    v40 = &a24 - v28;
    do
    {
      if (&v38[v39] == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = &v38[v36];
      }

      v42 = *(v41 + 1);
      v43 = v41 + 8 - &a25;
      if (v42 == 1)
      {
        v43 = 0;
      }

      v44 = &v38[v36 - &a24];
      a24 = v44;
      a25 = v43 + v42;
      if (v44 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

      *(v26 - 96) = &v44[v45];
      std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](a11, (v26 - 96));
      --*(v25 + 32);
      if (a25 == 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = &a25 - v36;
      }

      v38 = &v46[a25];
      *(v26 - 112) = &v46[a25];
    }

    while (v38 != 1);
  }

  __cxa_rethrow();
}

void sub_1B364C3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_end_catch();
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(va);
  JUMPOUT(0x1B364C3C8);
}

void sub_1B364C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(va);
  JUMPOUT(0x1B364C3E0);
}

char *boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(uint64_t **a1)
{
  v1 = a1 + 1;
  if (a1[1] != 1)
  {
    __assert_rtn("create_node", "implementation.hpp", 1984, "!node_");
  }

  v3 = **a1;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 + v3;
  }

  result = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v4, 0x18uLL);
  v6 = (v9 - v1);
  if (result - v9 == 1)
  {
    v6 = 0;
  }

  v7 = &v6[result - v9];
  a1[1] = v7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v1 + v7;
  }

  *v8 = xmmword_1B36A1D80;
  *(v8 + 2) = 0;
  return result;
}

uint64_t boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (v3 != 1)
  {
    v4 = *a1;
    v6 = v2 - &v6 + v3;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v4, &v6);
  }

  return a1;
}

uint64_t boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::hash(void *a1)
{
  v1 = (a1 + *a1);
  if (*a1 == 1)
  {
    v1 = 0;
  }

  v2 = v1[9];
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 + v2 + 72;
  }

  v4 = v3[8];
  if (v4)
  {
    v10 = v3 + 9;
    if (v3 + 9 - v18 == 1)
    {
      v10 = 0;
    }

    v11 = v4 >> 1;
  }

  else
  {
    v7 = *(v3 + 3);
    v6 = v3 + 24;
    v5 = v7;
    v8 = v6 - v18;
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
      v10 = &v18[v9];
    }

    v11 = *(v6 - 2) >> 1;
  }

  v12 = *v1;
  for (i = 0; v11; --v11)
  {
    v14 = *v10++;
    i ^= (i << 6) + (i >> 2) + 2654435769u + v14;
  }

  v15 = (i ^ ~v12) + ((i ^ v12) << 21);
  v16 = 21 * ((265 * (v15 ^ (v15 >> 24))) ^ ((265 * (v15 ^ (v15 >> 24))) >> 14));
  return 2147483649u * (v16 ^ (v16 >> 28));
}

uint64_t boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(unint64_t a1, float a2)
{
  if (a2 < 0.001)
  {
    __assert_rtn("min_buckets_for_size", "implementation.hpp", 3096, "mlf_ >= minimum_max_load_factor");
  }

  v2 = floor(a1 / a2) + 1.0;
  v3 = v2;
  if (v2 >= 1.84467441e19)
  {
    v3 = -1;
  }

  if (v3 < 5)
  {
    return 4;
  }

  v5 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  return (v6 | (v6 >> 16) | ((v6 | (v6 >> 16)) >> 32)) + 1;
}

char *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::create_buckets(uint64_t a1, unint64_t a2)
{
  v34 = 1;
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v31 = (a1 + 16);
    v32 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v31);
    result = boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v33, (a1 + 8), a2 + 1);
    v7 = &v33 - v5;
    if (v33 == 1)
    {
      v7 = 0;
    }

    v8 = &v33[v7];
    *v5 = &v33[v7];
    if (v32 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v9 = v32 + &v32 - &v33;
    v10 = &v33 - &v34;
    if (v9 == 1)
    {
      v10 = 0;
    }

    v34 = v10 + v9;
  }

  else
  {
    v11 = v4 + v5 - &v33 + 8 * *(a1 + 24);
    v12 = 16;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = (v12 + v11);
    v31 = v13;
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v31 + v13;
    }

    v15 = *v14;
    v16 = v14 - &v34;
    if (v15 == 1)
    {
      v16 = 0;
    }

    v34 = v16 + v15;
    boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v31, (a1 + 8), a2 + 1);
    result = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::destroy_buckets(a1);
    v17 = (&v31 - v5);
    if (v31 == 1)
    {
      v17 = 0;
    }

    v8 = v31 + v17;
    *(a1 + 56) = v31 + v17;
  }

  *(a1 + 24) = a2;
  if (v8 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = a2 * *(a1 + 40);
    v18 = vcvtpd_u64_f64(v19);
    if (ceil(v19) >= 1.84467441e19)
    {
      v18 = -1;
    }
  }

  *(a1 + 48) = v18;
  v20 = v5 - &v33;
  v21 = 16;
  if (v8 == 1)
  {
    v20 = 0;
  }

  v22 = &v8[8 * a2 + v20];
  if (v22 == 1)
  {
    v21 = 0;
  }

  v23 = &v22[v21];
  v31 = v23;
  v24 = &v8[v20];
  v33 = v24;
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v24;
  }

  v26 = &v31 + v23;
  if (v23 == 1)
  {
    v26 = 0;
  }

  if (v25 != v26)
  {
    do
    {
      *v25 = 1;
      v27 = v33 + 8;
      v33 = v27;
      if (v27 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = &v33 + v27;
      }

      if (v31 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = &v31 + v31;
      }
    }

    while (v25 != v28);
  }

  v29 = &v34 - &v33;
  if (v34 == 1)
  {
    v29 = 0;
  }

  v30 = (&v33 - v25);
  if (v29 + v34 == 1)
  {
    v30 = 0;
  }

  *v25 = &v30[v29 + v34];
  return result;
}

void *boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::add_node_unique(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = (*(a2 + 24) - 1) & a4;
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v45, a2, v7);
  if (*a3 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = &a3[*a3];
  }

  *(v9 + 2) = v7;
  if (*a3 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = &a3[*a3];
  }

  *(v10 + 2) &= ~0x8000000000000000;
  if (v45 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (&v45 + v45);
  }

  if (*v11 == 1)
  {
    result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v46, a2, *(a2 + 24));
    if (v46 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = &v46 + v46;
    }

    v13 = *v12;
    v14 = v12 - &v44;
    if (v13 == 1)
    {
      v14 = 0;
    }

    v15 = v14 + v13;
    v44 = v15;
    v16 = &v44 + v15;
    if (v15 == 1)
    {
      v16 = 0;
    }

    if (*(v16 + 1) != 1)
    {
      v17 = &v44 - v43;
      if (v15 == 1)
      {
        v17 = 0;
      }

      v18 = v17 + v15;
      if (v18 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = &v43[v18];
      }

      v20 = *(v19 + 1);
      v21 = v19 + 8 - &v46;
      if (v20 == 1)
      {
        v21 = 0;
      }

      v22 = v21 + v20;
      if (v22 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v46 + v22;
      }

      result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v46, a2, *(v23 + 2) & 0x7FFFFFFFFFFFFFFFLL);
      if (v46 == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = &v46 + v46;
      }

      v25 = a3 - v24;
      if (*a3 == 1)
      {
        v25 = 0;
      }

      *v24 = v25 + *a3;
      v15 = v44;
    }

    if (v45 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = &v45 + v45;
    }

    v27 = (&v44 - v26);
    if (v15 == 1)
    {
      v27 = 0;
    }

    *v26 = &v27[v15];
    if (v44 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = &v44 + v44;
    }

    if (*a3 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = &a3[*a3];
    }

    v32 = *(v28 + 1);
    v30 = v28 + 8;
    v31 = v32;
    v33 = (v30 - (v29 + 8));
    if (v32 == 1)
    {
      v33 = 0;
    }

    *(v29 + 1) = &v33[v31];
    v34 = a3 - v30;
    if (*a3 == 1)
    {
      v34 = 0;
    }

    *v30 = v34 + *a3;
  }

  else
  {
    v35 = v11 + *v11;
    if (*a3 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = &a3[*a3];
    }

    v37 = *(v35 + 1);
    v38 = v35 - v36;
    if (v37 == 1)
    {
      v38 = 0;
    }

    *(v36 + 1) = v38 + v37;
    v39 = *v11;
    v40 = v11 + *v11;
    if (v39 == 1)
    {
      v40 = 0;
    }

    v41 = (a3 - (v40 + 8));
    if (*a3 == 1)
    {
      v41 = 0;
    }

    *(v40 + 1) = &v41[*a3];
  }

  ++*(a2 + 32);
  v42 = a3 - a1;
  if (*a3 == 1)
  {
    v42 = 0;
  }

  *a1 = v42 + *a3;
  return result;
}

char *boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(char *a1, void *a2, unint64_t a3)
{
  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v7 = &unk_1F2A8A288;
  }

  if (*a2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 + *a2;
  }

  result = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v4, 8 * a3);
  *a1 = result - a1;
  return result;
}

unint64_t boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v7 = (a1 + 9);
    if (a1 + 9 - v13 == 1)
    {
      v7 = 0;
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v2 = a1 + 24;
    v3 = v4;
    v5 = v2 - v13;
    if (v4 == 1)
    {
      v5 = 0;
    }

    v6 = v5 + v3;
    if (v6 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = &v13[v6];
    }

    v1 = *(v2 - 16);
  }

  v8 = 0;
  for (i = v1 >> 1; i; --i)
  {
    v10 = *v7++;
    v8 ^= (v8 << 6) + (v8 >> 2) + 2654435769u + v10;
  }

  v11 = 265 * ((~v8 + (v8 << 21)) ^ ((~v8 + (v8 << 21)) >> 24));
  return 2147483649u * ((21 * (v11 ^ (v11 >> 14))) ^ ((21 * (v11 ^ (v11 >> 14))) >> 28));
}

double boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(uint64_t **a1)
{
  v1 = a1 + 1;
  if (a1[1] != 1)
  {
    __assert_rtn("create_node", "implementation.hpp", 1984, "!node_");
  }

  v3 = **a1;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 + v3;
  }

  v5 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v4, 0x140uLL);
  v6 = (v10 - v1);
  if (v5 - v10 == 1)
  {
    v6 = 0;
  }

  v7 = &v6[v5 - v10];
  a1[1] = v7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v1 + v7);
  }

  result = 0.0;
  v8[16] = 0u;
  v8[17] = 0u;
  v8[14] = 0u;
  v8[15] = 0u;
  v8[12] = 0u;
  v8[13] = 0u;
  v8[10] = 0u;
  v8[11] = 0u;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  v8[18] = 0u;
  v8[19] = xmmword_1B36A1EF0;
  return result;
}

uint64_t boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (v3 != 1)
  {
    v4 = *a1;
    v6 = v2 - &v6 + v3;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v4, &v6);
  }

  return a1;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(uint64_t a1, unint64_t a2)
{
  v34 = 1;
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v31 = (a1 + 16);
    v32 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v31);
    result = boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v33, (a1 + 8), a2 + 1);
    v7 = &v33 - v5;
    if (v33 == 1)
    {
      v7 = 0;
    }

    v8 = &v33[v7];
    *v5 = &v33[v7];
    if (v32 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v9 = v32 + &v32 - &v33;
    v10 = &v33 - &v34;
    if (v9 == 1)
    {
      v10 = 0;
    }

    v34 = v10 + v9;
  }

  else
  {
    v11 = v4 + v5 - &v33 + 8 * *(a1 + 24);
    v12 = 16;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = (v12 + v11);
    v31 = v13;
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v31 + v13;
    }

    v15 = *v14;
    v16 = v14 - &v34;
    if (v15 == 1)
    {
      v16 = 0;
    }

    v34 = v16 + v15;
    boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v31, (a1 + 8), a2 + 1);
    result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(a1);
    v17 = (&v31 - v5);
    if (v31 == 1)
    {
      v17 = 0;
    }

    v8 = v31 + v17;
    *(a1 + 56) = v31 + v17;
  }

  *(a1 + 24) = a2;
  if (v8 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = a2 * *(a1 + 40);
    v18 = vcvtpd_u64_f64(v19);
    if (ceil(v19) >= 1.84467441e19)
    {
      v18 = -1;
    }
  }

  *(a1 + 48) = v18;
  v20 = v5 - &v33;
  v21 = 16;
  if (v8 == 1)
  {
    v20 = 0;
  }

  v22 = &v8[8 * a2 + v20];
  if (v22 == 1)
  {
    v21 = 0;
  }

  v23 = &v22[v21];
  v31 = v23;
  v24 = &v8[v20];
  v33 = v24;
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v24;
  }

  v26 = &v31 + v23;
  if (v23 == 1)
  {
    v26 = 0;
  }

  if (v25 != v26)
  {
    do
    {
      *v25 = 1;
      v27 = v33 + 8;
      v33 = v27;
      if (v27 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = &v33 + v27;
      }

      if (v31 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = &v31 + v31;
      }
    }

    while (v25 != v28);
  }

  v29 = &v34 - &v33;
  if (v34 == 1)
  {
    v29 = 0;
  }

  v30 = (&v33 - v25);
  if (v29 + v34 == 1)
  {
    v30 = 0;
  }

  *v25 = &v30[v29 + v34];
  return result;
}

uint64_t boost::unordered::detail::node_tmp<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_tmp(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2 != 1)
  {
    v4 = v2 + v3;
    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v2 + v3 + 240);
    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v4 + 176);
    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(v4 + 112);
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v4);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = v3 - &v9;
    if (v6 == 1)
    {
      v7 = 0;
    }

    v9 = v7 + v6;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v5, &v9);
  }

  return a1;
}

char *boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(char *a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2 + a2;
  }

  if (v3)
  {
    v4 = v3 - a1;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  a1[8] = 1;
  if (*a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*a2 + a2);
  }

  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = &a1[v4];
  }

  if (v5 == v6)
  {
    boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::swap_data(a1, a2);
  }

  else
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      v14 = a2 + 9 - &v19;
      v15 = a2 + 9 - &v20 + (v7 >> 1);
      v16 = &v20 - &v18;
    }

    else
    {
      v10 = *(a2 + 24);
      v8 = a2 + 24;
      v9 = v10;
      v11 = v8 - &v19;
      v12 = v8 - &v20;
      v13 = v10 == 1;
      if (v10 == 1)
      {
        v11 = 0;
      }

      v14 = v11 + v9;
      if (v13)
      {
        v12 = 0;
      }

      v15 = v12 + v9 + (*(v8 - 16) >> 1);
      v16 = &v20 - &v18;
    }

    if (v15 == 1)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    v19 = v14;
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::assign<boost::interprocess::offset_ptr<char,long,unsigned long,0ul>>(a1, &v19, &v18);
  }

  return a1;
}

uint64_t boost::unordered::unordered_set<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor,boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::unordered_set(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + a2 + 16;
  }

  if (v5)
  {
    v6 = v5 - &v34;
  }

  else
  {
    v6 = 1;
  }

  v34 = v6;
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = &v34 + v6;
  }

  if (v7)
  {
    v8 = v7 - &v35;
  }

  else
  {
    v8 = 1;
  }

  v35 = v8;
  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = &v35 + v8;
  }

  if (v9)
  {
    v10 = v9 - &v36;
  }

  else
  {
    v10 = 1;
  }

  v36 = v10;
  *a1 = 0;
  if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &v36 + v10;
  }

  v12 = (a1 + 16);
  v13 = &v11[-a1 - 16];
  v14 = v11 == 0;
  if (v11)
  {
    v15 = v11 - &v37;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (v15 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = &v37 + v15;
  }

  if (v17)
  {
    v18 = &v17[-a1 - 8];
  }

  else
  {
    v18 = 1;
  }

  *(a1 + 8) = v18;
  *(a1 + 16) = v16;
  v19 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(*(a2 + 32), *(a2 + 40));
  *(a1 + 24) = v19;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = xmmword_1B36A1D80;
  if (*(a2 + 32))
  {
    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::create_buckets(a1, v19);
    boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::begin(&v36, a2);
    v20 = v36;
    if (v36 != 1)
    {
      do
      {
        if (v20 + &v36 - &v37 == 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = (&v36 + v20);
        }

        v22 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::hash(v21);
        v37 = v12;
        v38 = 1;
        boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v37);
        if (v20 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = &v36 + v20;
        }

        if (v38 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = &v38 + v38;
        }

        v25 = *v23;
        v26 = v23 - v24;
        if (v25 == 1)
        {
          v26 = 0;
        }

        *v24 = v26 + v25;
        if (v38 == 1)
        {
          __assert_rtn("release", "implementation.hpp", 1955, "node_");
        }

        v35 = &v38 - &v35 + v38;
        boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::add_node_unique(&v37, a1, &v35, v22);
        if (v36 == 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = &v36 - &v35;
        }

        if (v27 + v36 == 1)
        {
          v28 = 0;
        }

        else
        {
          v28 = &v35 + v27 + v36;
        }

        v29 = *(v28 + 1);
        v30 = v28 + 8 - &v37;
        if (v29 == 1)
        {
          v30 = 0;
        }

        v31 = v30 + v29;
        if (v31 == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = &v37 - &v36;
        }

        v20 = v32 + v31;
        v36 = v32 + v31;
      }

      while (v32 + v31 != 1);
    }
  }

  return a1;
}

char *boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::swap_data(char *result, void *a2)
{
  v25[12] = *MEMORY[0x1E69E9840];
  v2 = result + 8;
  v3 = a2 + 1;
  if (result[8])
  {
    if (a2[1])
    {
      v14 = *(result + 3);
      v15 = *v2;
      v24 = a2[3];
      *v2 = *v3;
      *(result + 3) = v24;
    }

    else
    {
      v14 = *(result + 3);
      *(result + 3) = 1;
      result += 24;
      v15 = *v2;
      *(result - 2) &= ~1uLL;
      *(result - 2) = a2[1] & 0xFFFFFFFFFFFFFFFELL;
      *(result - 1) = a2[2];
      v16 = a2[3];
      v17 = (a2 + 3) - result;
      if (v16 == 1)
      {
        v17 = 0;
      }

      *result = v17 + v16;
    }

    *v3 = v15;
    a2[3] = v14;
  }

  else if (a2[1])
  {
    v18 = a2[3];
    a2[3] = 1;
    v19 = (a2 + 3);
    v20 = *v3;
    *(v19 - 2) &= ~1uLL;
    *(v19 - 2) = *(result + 1) & 0xFFFFFFFFFFFFFFFELL;
    *(v19 - 1) = *(result + 2);
    v22 = *(result + 3);
    result += 24;
    v21 = v22;
    v23 = result - v19;
    if (v22 == 1)
    {
      v23 = 0;
    }

    *v19 = v23 + v21;
    *v2 = v20;
    v2[2] = v18;
  }

  else
  {
    v5 = *(result + 3);
    result += 24;
    v4 = v5;
    v6 = *(result - 2);
    v7 = *(result - 1);
    v8 = result - v25;
    if (v5 == 1)
    {
      v8 = 0;
    }

    v9 = v8 + v4;
    *(result - 2) = a2[1] & 0xFFFFFFFFFFFFFFFELL | *(result - 2) & 1;
    *(result - 1) = a2[2];
    v10 = (a2 + 3);
    v11 = a2[3];
    v12 = (a2 + 3) - result;
    if (v11 == 1)
    {
      v12 = 0;
    }

    *result = v12 + v11;
    a2[1] = v6 & 0xFFFFFFFFFFFFFFFELL | a2[1] & 1;
    a2[2] = v7;
    v13 = (v25 - v10);
    if (v9 == 1)
    {
      v13 = 0;
    }

    *v10 = &v13[v9];
  }

  return result;
}

uint64_t boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::assign<boost::interprocess::offset_ptr<char,long,unsigned long,0ul>>(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v8 = (a1 + 9);
    v7 = a1 + 9 - &v292;
    if (v7 == 1)
    {
      v8 = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = a1 - &v289;
    if (v5 == 1)
    {
      v6 = 0;
    }

    v7 = v6 + v5;
    v8 = &v292 + v7;
    if (v7 == 1)
    {
      v8 = 0;
    }

    v4 = *(a1 + 8);
  }

  v9 = v4 >> 1;
  v292 = v7;
  v10 = *a2;
  v11 = *a2 == 1;
  if (*a2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 + v10;
  }

  v13 = *a3;
  v14 = *a3 == 1;
  if (*a3 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = &a3[v13];
  }

  v16 = 0;
  v17 = v12 == v15 || v9 == 0;
  if (!v17)
  {
    do
    {
      v8[v16] = *v12;
      v18 = *a2;
      v10 = *a2 + 1;
      *a2 = v10;
      v17 = v18 == 0;
      v11 = v18 == 0;
      if (v17)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 + v10;
      }

      v13 = *a3;
      v14 = *a3 == 1;
      v15 = &a3[*a3];
      if (*a3 == 1)
      {
        v15 = 0;
      }
    }

    while (v12 != v15 && v9 - 1 != v16++);
  }

  if (v12 != v15)
  {
    v39 = a2 - &v291;
    if (v11)
    {
      v39 = 0;
    }

    v40 = v39 + v10;
    v41 = a3 - &v290;
    if (v14)
    {
      v41 = 0;
    }

    v42 = v41 + v13;
    v290 = v41 + v13;
    v291 = v40;
    v43 = *(a1 + 8);
    if (v43)
    {
      v49 = &v308 - &v295;
      if (a1 - &v308 + (v43 >> 1) == -8)
      {
        v49 = 0;
      }

      v48 = v49 + a1 - &v308 + (v43 >> 1) + 9;
    }

    else
    {
      v44 = *(a1 + 24);
      v45 = a1 + 24 - &v308;
      if (v44 == 1)
      {
        v45 = 0;
      }

      v46 = v45 + v44 + (*(a1 + 8) >> 1);
      v47 = &v308 - &v295;
      if (v46 == 1)
      {
        v47 = 0;
      }

      v48 = v47 + v46;
      LODWORD(v43) = *(a1 + 8);
    }

    v50 = &v295 - &v296;
    if (v48 == 1)
    {
      v50 = 0;
    }

    v295 = v48;
    v296 = v50 + v48;
    v51 = &v291 - &v294;
    if (v40 == 1)
    {
      v51 = 0;
    }

    v52 = v51 + v40;
    v53 = &v290 - &v293;
    if (v42 == 1)
    {
      v53 = 0;
    }

    v54 = v53 + v42;
    v293 = v54;
    v294 = v52;
    v55 = &v294 + v52;
    if (v52 == 1)
    {
      v55 = 0;
    }

    v56 = &v293 + v54;
    if (v54 == 1)
    {
      v56 = 0;
    }

    if (v55 == v56)
    {
      return a1;
    }

    v57 = &v294 - &v306;
    if (v52 == 1)
    {
      v57 = 0;
    }

    v58 = v57 + v52;
    v59 = &v293 - &v305;
    if (v54 == 1)
    {
      v59 = 0;
    }

    v60 = v59 + v54;
    v61 = &v306 - &v308;
    if (v58 == 1)
    {
      v61 = 0;
    }

    v62 = v61 + v58;
    v63 = -16;
    if (v60 == 1)
    {
      v63 = 0;
    }

    v64 = v63 + v60;
    if (v64 == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = &v307 + v64;
    }

    if (v62 == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = &v308 + v62;
    }

    v67 = v65 - v66;
    if (v43)
    {
      v70 = v43 >> 1;
      v73 = a1 - &v305 + 9;
      v304 = 0;
      v305 = v73;
      v302 = 1;
      v303 = 1;
      if (22 - v70 >= v67)
      {
        goto LABEL_132;
      }

      v68 = 23;
    }

    else
    {
      v69 = *(a1 + 8);
      v68 = *(a1 + 16);
      v70 = v69 >> 1;
      v71 = *(a1 + 24);
      v72 = a1 + 24 - &v305;
      if (v71 == 1)
      {
        v72 = 0;
      }

      v73 = v72 + v71;
      v304 = 0;
      v305 = v73;
      v302 = 1;
      v303 = 1;
      if (v68 + ~(v69 >> 1) >= v67)
      {
        LOBYTE(v43) = v69;
        goto LABEL_132;
      }
    }

    if (*a1 == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = *a1 + a1;
    }

    v80 = *(v79 + 48);
    v81 = 2 * v68;
    if (v68 < 0)
    {
      v81 = -1;
    }

    v82 = v68 + v67;
    if (v81 < v80)
    {
      v80 = v81;
    }

    if (v82 <= v80)
    {
      v82 = v80;
    }

    v304 = v82;
    v83 = &v305 - &v303;
    if (v73 == 1)
    {
      v83 = 0;
    }

    v303 = v83 + v73;
    v84 = v70 + v67;
    if (v43)
    {
      v85 = 1;
      v303 = 1;
    }

    else
    {
      v85 = 7;
    }

    boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v308, a1, v85, v84 + 1, &v304, &v303);
    v86 = &v308 - &v302;
    if (v308 == 1)
    {
      v86 = 0;
    }

    v87 = v86 + v308;
    v302 = v87;
    v73 = v305;
    if (v305 == 1)
    {
      v88 = 0;
    }

    else
    {
      v88 = &v305 + v305;
    }

    v89 = &v302 + v87;
    if (v87 == 1)
    {
      v89 = 0;
    }

    if (v88 != v89)
    {
      v140 = &v302 - &v301;
      if (v87 == 1)
      {
        v140 = 0;
      }

      v141 = v140 + v87;
      v301 = v141;
      if (v303 == 1)
      {
        v142 = &v305 - &v300;
        if (v305 == 1)
        {
          v142 = 0;
        }

        v143 = v142 + v305;
        v144 = &v296 - &v299;
        if (v296 == 1)
        {
          v144 = 0;
        }

        v145 = v144 + v296;
        v299 = v144 + v296;
        v300 = v142 + v305;
        v146 = &v301 - &v298;
        if (v141 == 1)
        {
          v146 = 0;
        }

        v147 = v146 + v141;
        v298 = v147;
        v148 = &v298 - &v307;
        if (v147 == 1)
        {
          v149 = 0;
        }

        else
        {
          v149 = &v298 - &v307;
        }

        v307 = v149 + v147;
        v150 = &v300 + v143;
        if (v143 == 1)
        {
          v150 = 0;
        }

        v151 = &v299 + v145;
        if (v145 == 1)
        {
          v151 = 0;
        }

        if (v150 == v151)
        {
          v152 = 0;
        }

        else
        {
          v152 = 0;
          do
          {
            if (v147 == 1)
            {
              v222 = 0;
            }

            else
            {
              v222 = &v298 - &v306;
            }

            v223 = v222 + v147;
            v306 = v223;
            if (v223 == 1)
            {
              v224 = 0;
            }

            else
            {
              v224 = &v306 + v223;
            }

            if (v224)
            {
              v225 = v224 - &v308;
            }

            else
            {
              v225 = 1;
            }

            if (v225 == 1)
            {
              v226 = 0;
            }

            else
            {
              v226 = &v308 + v225;
            }

            *v226 = *v150;
            v147 = ++v298;
            v227 = v300++;
            ++v152;
            if (v227)
            {
              v150 = &v300 + v300;
            }

            else
            {
              v150 = 0;
            }

            if (v299 == 1)
            {
              v228 = 0;
            }

            else
            {
              v228 = &v299 + v299;
            }
          }

          while (v150 != v228);
          v141 = v301;
        }

        v229 = 0;
        v230 = &v294 - &v300;
        if (v294 == 1)
        {
          v230 = 0;
        }

        v231 = v230 + v294;
        v232 = &v293 - &v299;
        if (v293 == 1)
        {
          v232 = 0;
        }

        v233 = v232 + v293;
        v234 = &v301 - &v308;
        if (v141 == 1)
        {
          v235 = 0;
        }

        else
        {
          v235 = &v301 - &v308;
        }

        v236 = v141 + v152 + v235;
        v299 = v233;
        v300 = v231;
        v237 = &v308 - &v298;
        if (v236 == 1)
        {
          v237 = 0;
        }

        v238 = v237 + v236;
        v298 = v238;
        if (v238 == 1)
        {
          v148 = 0;
        }

        v307 = v148 + v238;
        v239 = &v300 + v231;
        if (v231 == 1)
        {
          v239 = 0;
        }

        v240 = &v299 + v233;
        if (v233 == 1)
        {
          v240 = 0;
        }

        if (v239 != v240)
        {
          v229 = 0;
          do
          {
            if (v238 == 1)
            {
              v241 = 0;
            }

            else
            {
              v241 = &v298 - &v306;
            }

            v242 = v241 + v238;
            v306 = v242;
            if (v242 == 1)
            {
              v243 = 0;
            }

            else
            {
              v243 = &v306 + v242;
            }

            if (v243)
            {
              v244 = v243 - &v308;
            }

            else
            {
              v244 = 1;
            }

            if (v244 == 1)
            {
              v245 = 0;
            }

            else
            {
              v245 = &v308 + v244;
            }

            *v245 = *v239;
            v238 = ++v298;
            v246 = v300++;
            ++v229;
            if (v246)
            {
              v239 = &v300 + v300;
            }

            else
            {
              v239 = 0;
            }

            if (v299 == 1)
            {
              v247 = 0;
            }

            else
            {
              v247 = &v299 + v299;
            }
          }

          while (v239 != v247);
          v141 = v301;
        }

        v248 = 0;
        v249 = v229 + v152;
        v250 = &v296 - &v300;
        if (v296 == 1)
        {
          v250 = 0;
        }

        v251 = v250 + v296;
        v252 = &v305 - &v308;
        if (v305 == 1)
        {
          v252 = 0;
        }

        v253 = v305 + v70 + v252;
        v254 = &v308 - &v298;
        if (v253 == 1)
        {
          v254 = 0;
        }

        v255 = v254 + v253;
        v298 = v255;
        v256 = &v298 - &v299;
        if (v255 == 1)
        {
          v256 = 0;
        }

        v257 = v256 + v255;
        if (v141 == 1)
        {
          v234 = 0;
        }

        v258 = v141 + v249 + v234;
        v259 = &v308 - &v297;
        if (v258 == 1)
        {
          v259 = 0;
        }

        v260 = v259 + v258;
        v261 = &v297 - &v307;
        if (v260 == 1)
        {
          v261 = 0;
        }

        v307 = v261 + v260;
        v299 = v257;
        v300 = v251;
        v297 = v260;
        v17 = v251 == 1;
        v262 = &v300 + v251;
        if (v17)
        {
          v262 = 0;
        }

        v17 = v257 == 1;
        v263 = &v299 + v257;
        if (v17)
        {
          v263 = 0;
        }

        if (v262 != v263)
        {
          v248 = 0;
          do
          {
            if (v260 == 1)
            {
              v264 = 0;
            }

            else
            {
              v264 = &v297 - &v306;
            }

            v265 = v264 + v260;
            v306 = v265;
            if (v265 == 1)
            {
              v266 = 0;
            }

            else
            {
              v266 = &v306 + v265;
            }

            if (v266)
            {
              v267 = v266 - &v308;
            }

            else
            {
              v267 = 1;
            }

            if (v267 == 1)
            {
              v268 = 0;
            }

            else
            {
              v268 = &v308 + v267;
            }

            *v268 = *v262;
            v260 = ++v297;
            v269 = v300++;
            ++v248;
            if (v269)
            {
              v262 = &v300 + v300;
            }

            else
            {
              v262 = 0;
            }

            if (v299 == 1)
            {
              v270 = 0;
            }

            else
            {
              v270 = &v299 + v299;
            }
          }

          while (v262 != v270);
          v141 = v301;
        }

        v84 = v248 + v249;
        v271 = &v301 - &v308;
        if (v141 == 1)
        {
          v271 = 0;
        }

        v272 = v141 + v84 + v271;
        v273 = 16;
        if (v272 == 1)
        {
          v273 = 0;
        }

        v274 = v273 + v272;
        v275 = -8;
        if (v274 == 1)
        {
          v275 = 0;
        }

        v276 = v275 + v274;
        if (v276 == 1)
        {
          v277 = 0;
        }

        else
        {
          v277 = &v307 + v276;
        }

        if (v277)
        {
          v278 = v277 - &v308;
        }

        else
        {
          v278 = 1;
        }

        if (v278 == 1)
        {
          v279 = 0;
        }

        else
        {
          v279 = &v308 + v278;
        }

        *v279 = 0;
        if (*(a1 + 8))
        {
          v282 = a1 - &v308 + 9;
          v283 = 23;
        }

        else
        {
          v280 = *(a1 + 24);
          v281 = a1 + 24 - &v308;
          if (v280 == 1)
          {
            v281 = 0;
          }

          v282 = v281 + v280;
          v283 = *(a1 + 16);
        }

        v308 = v282;
        boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate(a1, &v308, v283);
        if (*(a1 + 8))
        {
          *(a1 + 8) &= ~1uLL;
        }

        v284 = &v301 - &v308;
        if (v301 == 1)
        {
          v284 = 0;
        }

        v220 = v284 + v301;
        v221 = &v308 - a1 - 24;
      }

      else
      {
        if (v141 == 1)
        {
          v188 = 0;
        }

        else
        {
          v188 = &v301 + v141;
        }

        if (v296 == 1)
        {
          v189 = 0;
        }

        else
        {
          v189 = &v296 + v296;
        }

        v190 = v189 - v88;
        if (v189 != v88)
        {
          memmove(v188, v88, v189 - v88);
        }

        if (v70 != v190)
        {
          memmove(&v188[v190 + v67], v189, v70 - v190);
        }

        v191 = &v294 - &v300;
        if (v294 == 1)
        {
          v191 = 0;
        }

        v192 = v191 + v294;
        v193 = &v293 - &v299;
        if (v293 == 1)
        {
          v193 = 0;
        }

        v194 = v193 + v293;
        v299 = v193 + v293;
        v300 = v191 + v294;
        v195 = v301;
        if (v301 == 1)
        {
          v196 = 0;
        }

        else
        {
          v196 = &v301 - &v308;
        }

        v197 = v301 + v196 + v190;
        v198 = &v308 - &v298;
        if (v197 == 1)
        {
          v198 = 0;
        }

        v199 = v198 + v197;
        v298 = v199;
        v200 = &v298 - &v307;
        if (v199 == 1)
        {
          v200 = 0;
        }

        v307 = v200 + v199;
        if (v192 == 1)
        {
          v201 = 0;
        }

        else
        {
          v201 = &v300 + v192;
        }

        if (v194 == 1)
        {
          v202 = 0;
        }

        else
        {
          v202 = &v299 + v194;
        }

        if (v201 != v202)
        {
          do
          {
            if (v199 == 1)
            {
              v203 = 0;
            }

            else
            {
              v203 = &v298 - &v306;
            }

            v204 = v203 + v199;
            v306 = v204;
            if (v204 == 1)
            {
              v205 = 0;
            }

            else
            {
              v205 = &v306 + v204;
            }

            if (v205)
            {
              v206 = v205 - &v308;
            }

            else
            {
              v206 = 1;
            }

            if (v206 == 1)
            {
              v207 = 0;
            }

            else
            {
              v207 = &v308 + v206;
            }

            *v207 = *v201;
            v199 = ++v298;
            if (v300++)
            {
              v201 = &v300 + v300;
            }

            else
            {
              v201 = 0;
            }

            if (v299 == 1)
            {
              v209 = 0;
            }

            else
            {
              v209 = &v299 + v299;
            }
          }

          while (v201 != v209);
          v195 = v301;
        }

        if (v195 == 1)
        {
          v210 = 0;
        }

        else
        {
          v210 = &v301 - &v308;
        }

        v211 = v195 + v84 + v210;
        v212 = 16;
        if (v211 == 1)
        {
          v212 = 0;
        }

        v213 = v212 + v211;
        v214 = -8;
        if (v213 == 1)
        {
          v214 = 0;
        }

        v215 = v214 + v213;
        if (v215 == 1)
        {
          v216 = 0;
        }

        else
        {
          v216 = &v307 + v215;
        }

        if (v216)
        {
          v217 = v216 - &v308;
        }

        else
        {
          v217 = 1;
        }

        v218 = &v308 + v217;
        if (v217 == 1)
        {
          v218 = 0;
        }

        *v218 = 0;
        if (*(a1 + 8))
        {
          *(a1 + 8) &= ~1uLL;
        }

        v219 = &v301 - &v308;
        if (v301 == 1)
        {
          v219 = 0;
        }

        v220 = v219 + v301;
        v221 = &v308 - a1 - 24;
      }

      if (v220 == 1)
      {
        v221 = 0;
      }

      *(a1 + 24) = &v221[v220];
      if ((v84 & 0x8000000000000000) == 0)
      {
        v285 = v304;
        *(a1 + 8) = *(a1 + 8) & 1 | (2 * v84);
        *(a1 + 16) = v285;
        return a1;
      }

      goto LABEL_511;
    }

    LOBYTE(v43) = *(a1 + 8);
    if ((v43 & 1) == 0)
    {
      *(a1 + 16) = v304;
    }

LABEL_132:
    v90 = -24;
    if (v73 == 1)
    {
      v91 = 0;
    }

    else
    {
      v91 = -24;
    }

    v92 = v91 + v73;
    if (v296 == 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = &v296 + v296;
    }

    if (v92 == 1)
    {
      v94 = 0;
    }

    else
    {
      v94 = &v308 + v92;
    }

    v95 = v94 - v93 + v70;
    v96 = v95 - v67;
    if (v95 < v67)
    {
      v97 = &v294 - &v301;
      if (v294 == 1)
      {
        v97 = 0;
      }

      v98 = v95 + v294 + v97 + 1;
      v99 = &v301 - &v300;
      if (!(v95 + v294 + v97))
      {
        v99 = 0;
      }

      v100 = v99 + v98;
      v300 = v99 + v98;
      v301 = v95 + v294 + v97 + 1;
      v101 = &v293 - &v299;
      if (v293 == 1)
      {
        v101 = 0;
      }

      v102 = v101 + v293;
      if (v73 == 1)
      {
        v90 = 0;
      }

      v103 = v73 + v90 + v70 + 1;
      v104 = &v308 - &v298;
      if (v103 == 1)
      {
        v104 = 0;
      }

      v105 = v104 + v103;
      v298 = v105;
      v299 = v102;
      v106 = &v298 - &v307;
      if (v105 == 1)
      {
        v106 = 0;
      }

      v307 = v106 + v105;
      v107 = &v300 + v100;
      if (v100 == 1)
      {
        v107 = 0;
      }

      v108 = &v299 + v102;
      if (v102 == 1)
      {
        v108 = 0;
      }

      if (v107 != v108)
      {
        do
        {
          if (v105 == 1)
          {
            v109 = 0;
          }

          else
          {
            v109 = &v298 - &v306;
          }

          v110 = v109 + v105;
          v306 = v110;
          if (v110 == 1)
          {
            v111 = 0;
          }

          else
          {
            v111 = &v306 + v110;
          }

          if (v111)
          {
            v112 = v111 - &v308;
          }

          else
          {
            v112 = 1;
          }

          if (v112 == 1)
          {
            v113 = 0;
          }

          else
          {
            v113 = &v308 + v112;
          }

          *v113 = *v107;
          v105 = ++v298;
          if (v300++)
          {
            v107 = &v300 + v300;
          }

          else
          {
            v107 = 0;
          }

          if (v299 == 1)
          {
            v115 = 0;
          }

          else
          {
            v115 = &v299 + v299;
          }
        }

        while (v107 != v115);
        LOBYTE(v43) = *(a1 + 8);
      }

      v116 = v67 - v95 + v70;
      if (v43)
      {
        if (v116 >= 0x80)
        {
          goto LABEL_512;
        }

        v118 = (2 * v116) | 1;
        *(a1 + 8) = v118;
      }

      else
      {
        if ((v116 & 0x8000000000000000) != 0)
        {
          goto LABEL_511;
        }

        v117 = *(a1 + 8) & 1 | (2 * v116);
        *(a1 + 8) = v117;
        v118 = v117;
      }

      v153 = &v296 - &v300;
      if (v296 == 1)
      {
        v153 = 0;
      }

      v154 = v153 + v296;
      v155 = -24;
      v156 = &v308 - &v298;
      if (v305 == 1)
      {
        v155 = 0;
      }

      v157 = v305 + v70 + 1 + v155;
      if (v157 == 1)
      {
        v156 = 0;
      }

      v158 = v156 + v157;
      v159 = &v298 - &v299;
      if (v158 == 1)
      {
        v159 = 0;
      }

      v160 = v159 + v158;
      v299 = v160;
      v300 = v154;
      v161 = v305 + v116 + v155;
      v162 = &v308 - &v297;
      if (v161 == 1)
      {
        v162 = 0;
      }

      v163 = v162 + v161;
      v297 = v163;
      v298 = v158;
      v164 = &v297 - &v307;
      if (v163 == 1)
      {
        v164 = 0;
      }

      v307 = v164 + v163;
      if (v154 == 1)
      {
        v165 = 0;
      }

      else
      {
        v165 = &v300 + v154;
      }

      v166 = &v299 + v160;
      if (v160 == 1)
      {
        v166 = 0;
      }

      if (v165 != v166)
      {
        do
        {
          if (v163 == 1)
          {
            v167 = 0;
          }

          else
          {
            v167 = &v297 - &v306;
          }

          v168 = v167 + v163;
          v306 = v168;
          if (v168 == 1)
          {
            v169 = 0;
          }

          else
          {
            v169 = &v306 + v168;
          }

          if (v169)
          {
            v170 = v169 - &v308;
          }

          else
          {
            v170 = 1;
          }

          if (v170 == 1)
          {
            v171 = 0;
          }

          else
          {
            v171 = &v308 + v170;
          }

          *v171 = *v165;
          v163 = ++v297;
          if (v300++)
          {
            v165 = &v300 + v300;
          }

          else
          {
            v165 = 0;
          }

          if (v299 == 1)
          {
            v173 = 0;
          }

          else
          {
            v173 = &v299 + v299;
          }
        }

        while (v165 != v173);
        v118 = *(a1 + 8);
      }

      v174 = v70 + v67;
      if ((v118 & 1) == 0)
      {
        if ((v174 & 0x8000000000000000) == 0)
        {
          *(a1 + 8) = *(a1 + 8) & 1 | (2 * v174);
LABEL_306:
          v185 = &v294 - &v308;
          if (v294 == 1)
          {
            v185 = 0;
          }

          v308 = v185 + v294;
          v186 = &v301 - &v307;
          if (v301 == 1)
          {
            v186 = 0;
          }

          v307 = v186 + v301;
          v175 = v296;
          v184 = &v296 + v296;
LABEL_311:
          if (v175 == 1)
          {
            v187 = 0;
          }

          else
          {
            v187 = v184;
          }

          boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::priv_copy<boost::interprocess::offset_ptr<char,long,unsigned long,0ul>,char *>(&v308, &v307, v187);
          return a1;
        }

LABEL_511:
        __assert_rtn("priv_long_size", "string.hpp", 476, "sz <= mask");
      }

      if (v174 < 0x80)
      {
        *(a1 + 8) = (2 * v174) | 1;
        goto LABEL_306;
      }

LABEL_512:
      __assert_rtn("priv_short_size", "string.hpp", 468, "sz <= mask");
    }

    v119 = &v308 - &v301;
    if (v73 == 1)
    {
      v120 = 0;
    }

    else
    {
      v120 = -24;
    }

    if (!(v70 + v73 + v120))
    {
      v119 = 0;
    }

    v121 = v119 + v70 + v73 + v120 + 1;
    v122 = v70 - v67 + v73 + v120 + 1;
    v123 = &v308 - &v300;
    if (v122 == 1)
    {
      v123 = 0;
    }

    v124 = v123 + v122;
    v300 = v124;
    v301 = v121;
    v125 = &v301 - &v299;
    v126 = &v301 - &v298;
    if (v121 == 1)
    {
      v125 = 0;
    }

    v127 = v125 + v121;
    if (v121 == 1)
    {
      v126 = 0;
    }

    v128 = v126 + v121;
    v298 = v128;
    v299 = v127;
    v129 = &v298 - &v307;
    if (v128 == 1)
    {
      v129 = 0;
    }

    v307 = v129 + v128;
    if (v124 == 1)
    {
      v130 = 0;
    }

    else
    {
      v130 = &v300 + v124;
    }

    v131 = &v299 + v127;
    if (v127 == 1)
    {
      v131 = 0;
    }

    if (v130 != v131)
    {
      do
      {
        if (v128 == 1)
        {
          v132 = 0;
        }

        else
        {
          v132 = &v298 - &v306;
        }

        v133 = v132 + v128;
        v306 = v133;
        if (v133 == 1)
        {
          v134 = 0;
        }

        else
        {
          v134 = &v306 + v133;
        }

        if (v134)
        {
          v135 = v134 - &v308;
        }

        else
        {
          v135 = 1;
        }

        if (v135 == 1)
        {
          v136 = 0;
        }

        else
        {
          v136 = &v308 + v135;
        }

        *v136 = *v130;
        v128 = ++v298;
        if (v300++)
        {
          v130 = &v300 + v300;
        }

        else
        {
          v130 = 0;
        }

        if (v299 == 1)
        {
          v138 = 0;
        }

        else
        {
          v138 = &v299 + v299;
        }
      }

      while (v130 != v138);
      LOBYTE(v43) = *(a1 + 8);
    }

    v139 = v70 + v67;
    if (v43)
    {
      if (v139 >= 0x80)
      {
        goto LABEL_512;
      }

      *(a1 + 8) = (2 * v139) | 1;
    }

    else
    {
      if ((v139 & 0x8000000000000000) != 0)
      {
        goto LABEL_511;
      }

      *(a1 + 8) = *(a1 + 8) & 1 | (2 * v139);
    }

    v175 = v296;
    v176 = &v296 - &v307;
    if (v296 == 1)
    {
      v176 = 0;
    }

    v177 = v296 + v67 + v176;
    v178 = -8;
    if (v177 == 1)
    {
      v178 = 0;
    }

    v179 = v178 + v177;
    v308 = v179;
    if (v96 != -1)
    {
      if (v296 == 1)
      {
        v180 = 0;
      }

      else
      {
        v180 = &v296 + v296;
      }

      if (v179 == 1)
      {
        v181 = 0;
      }

      else
      {
        v181 = &v308 + v179;
      }

      memmove(v181, v180, v96 + 1);
      v175 = v296;
    }

    v182 = &v294 - &v308;
    if (v294 == 1)
    {
      v182 = 0;
    }

    v308 = v182 + v294;
    v183 = &v293 - &v307;
    if (v293 == 1)
    {
      v183 = 0;
    }

    v307 = v183 + v293;
    v184 = &v296 + v175;
    goto LABEL_311;
  }

  v20 = &v292 - &v308;
  v21 = 24;
  if (v292 == 1)
  {
    v20 = 0;
  }

  v22 = v292 + v16 + v20;
  if (v22 == 1)
  {
    v21 = 0;
  }

  v23 = v21 + v22;
  v24 = &v305 - &v306;
  if (v23 == 1)
  {
    v24 = 0;
  }

  v25 = v24 + v23;
  v305 = v23;
  v306 = v25;
  v26 = v292 + v9 + v20;
  v27 = &v308 - &v303;
  if (v26 == 1)
  {
    v27 = 0;
  }

  v28 = v27 + v26;
  v303 = v28;
  v29 = &v303 - &v304;
  if (v28 == 1)
  {
    v29 = 0;
  }

  v30 = v29 + v28;
  v304 = v30;
  if (v25 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = &v306 + v25;
  }

  if (v30 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = &v304 + v30;
  }

  v33 = v31 - v32;
  if (v31 != v32)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = v34 >> 1;
      v38 = a1 - &v307 + 9;
    }

    else
    {
      v34 = *(a1 + 8);
      v35 = v34 >> 1;
      v36 = *(a1 + 24);
      v37 = a1 + 24 - &v307;
      if (v36 == 1)
      {
        v37 = 0;
      }

      v38 = v37 + v36;
    }

    v307 = v38;
    v74 = &v307 - &v308;
    if (v38 == 1)
    {
      v74 = 0;
    }

    v75 = v74 + v38;
    v76 = &v308 + v75;
    if (v75 == 1)
    {
      v76 = 0;
    }

    v77 = v35 + v76 - v32;
    v308 = v75;
    if (v77 != -1)
    {
      memmove(v31, v32, v77 + 1);
      LOBYTE(v34) = *(a1 + 8);
    }

    v78 = v35 + v33;
    if (v34)
    {
      if (v78 <= 0x7F)
      {
        *(a1 + 8) = (2 * v78) | 1;
        return a1;
      }

      v287 = 468;
      v288 = "priv_short_size";
    }

    else
    {
      if ((v78 & 0x8000000000000000) == 0)
      {
        *(a1 + 8) = *(a1 + 8) & 1 | (2 * v78);
        return a1;
      }

      v287 = 476;
      v288 = "priv_long_size";
    }

    __assert_rtn(v288, "string.hpp", v287, "sz <= mask");
  }

  return a1;
}

uint64_t *boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::priv_copy<boost::interprocess::offset_ptr<char,long,unsigned long,0ul>,char *>(uint64_t *result, void *a2, char *a3)
{
  v3 = result + *result;
  for (i = *result == 1; ; i = v7 == 0)
  {
    v5 = i ? 0 : v3;
    v6 = *a2 == 1 ? 0 : a2 + *a2;
    if (v5 == v6)
    {
      break;
    }

    *a3++ = *v5;
    v7 = *result;
    v8 = *result + 1;
    *result = v8;
    v3 = result + v8;
  }

  return result;
}

double boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::table(uint64_t a1, void *a2)
{
  *a1 = 0;
  if (*a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2 + *a2;
  }

  if (v2)
  {
    v3 = v2 - v9;
  }

  else
  {
    v3 = 1;
  }

  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &v9[v3];
  }

  v5 = &v4[-a1 - 8];
  if (!v4)
  {
    v5 = 1;
  }

  *(a1 + 8) = v5;
  if (*a2 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 + *a2;
  }

  v7 = &v6[-a1 - 16];
  if (!v6)
  {
    v7 = 1;
  }

  *(a1 + 16) = v7;
  *(a1 + 24) = xmmword_1B36A1F00;
  *(a1 + 40) = 1065353216;
  result = 0.0;
  *(a1 + 48) = xmmword_1B36A1D80;
  return result;
}

uint64_t pf::SceneTaxonomyLineParser::parseLine(pf::SceneTaxonomyLineParser *this, char *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    v7 = a2[1];
    if (v7 == 58)
    {
      v10 = *a2;
      v8 = a2 + 2;
      v9 = v10;
      if (v10 <= 100)
      {
        if (v9 == 99)
        {
          return 1;
        }

        if (v9 == 100)
        {

          return pf::SceneTaxonomyLineParser::parseDetectors(this, v8);
        }
      }

      else
      {
        switch(v9)
        {
          case 'e':

            return pf::SceneTaxonomyLineParser::parseEdge(this, v8);
          case 'n':

            return pf::SceneTaxonomyLineParser::parseNode(this, v8);
          case 's':

            return pf::SceneTaxonomyLineParser::parseSHA(this, v8);
        }
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v11 = 67109120;
      v12 = v9;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "unexpected line type, first character: %c";
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v11 = 67109120;
      v12 = v7;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "unexpected second character: %c (expected ':')";
    }

    v6 = 8;
    goto LABEL_30;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(v11) = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "short line: expected 2 characters or longer";
    v6 = 2;
LABEL_30:
    _os_log_error_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_ERROR, v5, &v11, v6);
    return 0;
  }

  return result;
}

uint64_t pf::SceneTaxonomyLineParser::parseSHA(pf::SceneTaxonomyLineParser *this, char *a2)
{
  v5 = a2;
  v2 = *(this + 48);
  if (v2 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "only one SHA line allowed", buf, 2u);
    }
  }

  else
  {
    *(this + 48) = 1;
    v3 = *(this + 7);
    v7 = xmmword_1B36A1D60;
    v8 = 0x80000001B36A2D99 & 0x7FFFFFFFFFFFFFFFLL;
    v9 = this + 96;
    *buf = &unk_1F2A8A0A8;
    v10 = &v5;
    boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v3, "digest", buf);
  }

  return v2 ^ 1u;
}

uint64_t pf::SceneTaxonomyLineParser::parseNode(pf::SceneTaxonomyLineParser *this, char *__s)
{
  v159 = *MEMORY[0x1E69E9840];
  if (*(this + 49) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "all node lines must come before any edges", buf, 2u);
    }

    return 0;
  }

  v4 = strrchr(__s, 44);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v146 = 0;
  v147 = 0;
  v145 = 0;
  v144 = 0.0;
  v142 = 0.0;
  v143 = 0.0;
  v140 = 0.0;
  v141 = 0.0;
  v139 = 0.0;
  v6 = sscanf(__s, "%ld,%ld,%d,%lf,%lf,%lf,%lf,%lf,%lf", &v147, &v146, &v145, &v144, &v143, &v142, &v141, &v140, &v139);
  v7 = 0;
  if (v6 == 9)
  {
    v8 = v5 + 1;
    pf::SceneTaxonomyNode::SceneTaxonomyNode(buf, v147, v146, *(this + 16) & 1 | (v145 != 0), this + 15, v144, v141, v142, v143, v140, v139, v141);
    v9 = *(this + 20);
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v158, v8, this + 12);
    boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::emplace_unique<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode&>(&v133, v9, v158, v158, buf);
    v10 = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v158);
    if ((v134 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v158[0]) = 136446210;
        *(v158 + 4) = v8;
        v32 = MEMORY[0x1E69E9C10];
        v33 = "name already in the index: %{public}s";
LABEL_185:
        _os_log_error_impl(&dword_1B35C1000, v32, OS_LOG_TYPE_ERROR, v33, v158, 0xCu);
      }

LABEL_186:
      v7 = 0;
LABEL_189:
      boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v138);
      boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v137);
      boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::~table(&v136);
      return v7;
    }

    if (v133 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v133 + v133;
    }

    *(v11 + 13) = -104;
    if (v147 >= 1)
    {
      v12 = *(this + 21);
      *&v158[0] = v12 + 16;
      *(&v158[0] + 1) = 1;
      boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(v10);
      if (*(&v158[0] + 1) == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = (v158 + *(&v158[0] + 1) + 8);
      }

      *v13 = v147;
      v13[1] = v11 - (v13 + 1) + 32;
      if (*(&v158[0] + 1) == 1)
      {
        __assert_rtn("release", "implementation.hpp", 1955, "node_");
      }

      v14 = v158 + 8 - &v157 + *(&v158[0] + 1);
      v15 = 40;
      if (v14 == 1)
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v151 = (v12 + 16);
      v152 = v16;
      v17 = &v152 - v158;
      if (v16 == 1)
      {
        v17 = 0;
      }

      v18 = v17 + v16;
      if (v18 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = (v158 + v18);
      }

      v20 = *v19;
      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::find_node_impl<unsigned long long,std::equal_to<unsigned long long>>(&v150, v12, *v19, v19);
      v21 = v150;
      if (v150 == 1)
      {
        v22 = 32;
        if (v152 == 1)
        {
          v22 = 0;
        }

        v23 = v22 + v152;
        v148 = v23;
        v152 = 1;
        v24 = &v148 - &v157;
        if (v23 == 1)
        {
          v24 = 0;
        }

        v25 = v24 + v23;
        v26 = &v157 - (v158 + 8);
        if (v25 == 1)
        {
          v26 = 0;
        }

        *&v158[0] = v12 + 16;
        *(&v158[0] + 1) = v26 + v25;
        v27 = *(v12 + 32);
        v28 = v27 + 1;
        if (*(v12 + 56) == 1)
        {
          v29 = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::min_buckets_for_size(v28, *(v12 + 40));
          if (*(v12 + 24) <= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = *(v12 + 24);
          }

          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::create_buckets(v12, v30);
        }

        else if (*(v12 + 48) < v28)
        {
          v37 = v27 + (v27 >> 1);
          if (v37 > v28)
          {
            v28 = v37;
          }

          v38 = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::min_buckets_for_size(v28, *(v12 + 40));
          if (v38 != *(v12 + 24))
          {
            if (*(v12 + 56) == 1)
            {
              __assert_rtn("rehash_impl", "implementation.hpp", 4578, "this->buckets_");
            }

            boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::create_buckets(v12, v38);
            boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v157, v12, *(v12 + 24));
            if (v157 == 1)
            {
              v39 = 0;
            }

            else
            {
              v39 = &v157 + v157;
            }

            v40 = *v39;
            v41 = v39 - &v156;
            if (v40 == 1)
            {
              v41 = 0;
            }

            v42 = v41 + v40;
            v156 = v42;
            v43 = v42 == 1;
            v44 = &v156 + v42;
            if (v42 == 1)
            {
              v44 = 0;
            }

            if (*(v44 + 2) != 1)
            {
              do
              {
                v45 = !v43;
                v46 = 8;
                if (!v45)
                {
                  v46 = 0;
                }

                v47 = v46 + v42;
                if (v47 == 1)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = &v155 + v47;
                }

                v49 = *(v48 + 2);
                v50 = v48 + 16 - &v157;
                if (v49 == 1)
                {
                  v50 = 0;
                }

                v51 = v50 + v49;
                v157 = v51;
                v52 = 16;
                if (v51 == 1)
                {
                  v52 = 0;
                }

                v53 = v52 + v51;
                v54 = &v157 + v51;
                if (v51 == 1)
                {
                  v54 = 0;
                  v55 = 0;
                }

                else
                {
                  v55 = 24;
                }

                if (v53 == 1)
                {
                  v56 = 0;
                }

                else
                {
                  v56 = (&v155 + v53);
                }

                v57 = *v56 % *(v12 + 24);
                *(v54 + 3) = v57 & 0x7FFFFFFFFFFFFFFFLL;
                v58 = v55 + v51;
                if (v58 == 1)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = &v154 + v58;
                }

                v60 = *(v59 + 2);
                v61 = v59 + 16 - &v155;
                if (v60 == 1)
                {
                  v61 = 0;
                }

                for (i = v61 + v60; i != 1; i = v69 + v68)
                {
                  v63 = &v155 + i;
                  if ((*(&v155 + i + 24) & 0x8000000000000000) == 0)
                  {
                    break;
                  }

                  v64 = i - 16;
                  if (v64 == 1)
                  {
                    v63 = 0;
                  }

                  *(v63 + 3) = v57 | 0x8000000000000000;
                  if (v64 == 1)
                  {
                    v65 = 0;
                  }

                  else
                  {
                    v65 = 24;
                  }

                  v66 = v65 + v64;
                  if (v66 == 1)
                  {
                    v67 = 0;
                  }

                  else
                  {
                    v67 = &v154 + v66;
                  }

                  v68 = *(v67 + 2);
                  v157 = v64;
                  v69 = v67 + 16 - &v155;
                  if (v68 == 1)
                  {
                    v69 = 0;
                  }
                }

                boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v155, v12, v57);
                v70 = &v155 + v155;
                if (v155 == 1)
                {
                  v70 = 0;
                }

                if (*v70 == 1)
                {
                  v71 = (&v156 - v70);
                  if (v156 == 1)
                  {
                    v71 = 0;
                  }

                  *v70 = &v71[v156];
                  v72 = 8;
                  if (v157 == 1)
                  {
                    v72 = 0;
                  }

                  v42 = v72 + v157;
                  v156 = v72 + v157;
                  v73 = &v156 + v72 + v157;
                }

                else
                {
                  if (v157 == 1)
                  {
                    v74 = 0;
                  }

                  else
                  {
                    v74 = &v157 + v157;
                  }

                  v77 = *(v74 + 2);
                  v75 = v74 + 16;
                  v76 = v77;
                  v78 = v75 - &v154;
                  if (v77 == 1)
                  {
                    v78 = 0;
                  }

                  v79 = v78 + v76;
                  v154 = v79;
                  if (*v70 == 1)
                  {
                    v80 = 0;
                  }

                  else
                  {
                    v80 = &v70[*v70];
                  }

                  v81 = *(v80 + 2);
                  v82 = v80 + 16 - v75;
                  if (v81 == 1)
                  {
                    v82 = 0;
                  }

                  *v75 = v82 + v81;
                  v42 = v156;
                  v73 = &v156 + v156;
                  if (v156 == 1)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v83 = &v156 + v156;
                  }

                  v84 = *v70;
                  v85 = &v70[*v70];
                  if (v84 == 1)
                  {
                    v85 = 0;
                  }

                  v88 = *(v83 + 2);
                  v86 = v83 + 16;
                  v87 = v88;
                  v89 = (v86 - (v85 + 16));
                  if (v88 == 1)
                  {
                    v89 = 0;
                  }

                  *(v85 + 2) = &v89[v87];
                  v90 = (&v154 - v86);
                  if (v79 == 1)
                  {
                    v90 = 0;
                  }

                  *v86 = &v90[v79];
                }

                v43 = v42 == 1;
                if (v42 == 1)
                {
                  v73 = 0;
                }
              }

              while (*(v73 + 2) != 1);
            }
          }
        }

        v91 = v158 + 8 - &v153;
        if (*(&v158[0] + 1) == 1)
        {
          v91 = 0;
        }

        v153 = v91 + *(&v158[0] + 1);
        *(&v158[0] + 1) = 1;
        v92 = v20 % *(v12 + 24);
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v156, v12, v92);
        v93 = v153;
        v94 = &v153 + v153;
        if (v153 == 1)
        {
          v94 = 0;
        }

        *(v94 + 3) = v92 & 0x7FFFFFFFFFFFFFFFLL;
        if (v156 == 1)
        {
          v95 = 0;
        }

        else
        {
          v95 = (&v156 + v156);
        }

        if (*v95 == 1)
        {
          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v157, v12, *(v12 + 24));
          if (v157 == 1)
          {
            v96 = 0;
          }

          else
          {
            v96 = &v157 + v157;
          }

          v97 = *v96;
          v98 = v96 - &v155;
          if (v97 == 1)
          {
            v98 = 0;
          }

          v99 = v98 + v97;
          v155 = v99;
          v100 = &v155 + v99;
          if (v99 == 1)
          {
            v100 = 0;
          }

          if (*(v100 + 2) != 1)
          {
            v101 = 8;
            if (v99 == 1)
            {
              v101 = 0;
            }

            v102 = v101 + v99;
            if (v102 == 1)
            {
              v103 = 0;
            }

            else
            {
              v103 = &v154 + v102;
            }

            v104 = *(v103 + 2);
            v105 = v103 + 16 - &v157;
            if (v104 == 1)
            {
              v105 = 0;
            }

            v106 = v105 + v104;
            if (v106 == 1)
            {
              v107 = 0;
            }

            else
            {
              v107 = &v157 + v106;
            }

            boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v157, v12, *(v107 + 3) & 0x7FFFFFFFFFFFFFFFLL);
            if (v157 == 1)
            {
              v108 = 0;
            }

            else
            {
              v108 = &v157 + v157;
            }

            v109 = (&v153 - v108);
            if (v153 == 1)
            {
              v109 = 0;
            }

            *v108 = &v109[v153];
            v99 = v155;
          }

          if (v156 == 1)
          {
            v110 = 0;
          }

          else
          {
            v110 = &v156 + v156;
          }

          v111 = (&v155 - v110);
          if (v99 == 1)
          {
            v111 = 0;
          }

          *v110 = &v111[v99];
          v112 = &v155 + v155;
          if (v155 == 1)
          {
            v112 = 0;
          }

          v93 = v153;
          v113 = &v153 + v153;
          v116 = *(v112 + 2);
          v114 = v112 + 16;
          v115 = v116;
          v117 = (&v153 - v114);
          if (v153 == 1)
          {
            v113 = 0;
            v117 = 0;
          }

          v118 = v114 - (v113 + 16);
          if (v115 == 1)
          {
            v118 = 0;
          }

          *(v113 + 2) = v118 + v115;
          *v114 = &v117[v93];
        }

        else
        {
          v119 = v95 + *v95;
          v120 = *(v119 + 2);
          v121 = v119 - v94;
          if (v120 == 1)
          {
            v121 = 0;
          }

          *(v94 + 2) = v121 + v120;
          v122 = *v95;
          v123 = v95 + *v95;
          if (v122 == 1)
          {
            v124 = 0;
          }

          else
          {
            v124 = v123;
          }

          v125 = (&v153 - (v124 + 16));
          if (v93 == 1)
          {
            v125 = 0;
          }

          *(v124 + 2) = &v125[v93];
        }

        ++*(v12 + 32);
        v126 = -16;
        if (v93 == 1)
        {
          v126 = 0;
        }

        v127 = v126 + v93;
        v155 = v127;
        if (*(&v158[0] + 1) != 1)
        {
          v157 = v158 + 8 - &v157 + *(&v158[0] + 1);
          std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](*&v158[0], &v157);
          v127 = v155;
        }

        v128 = &v155 - &v149;
        if (v127 == 1)
        {
          v128 = 0;
        }

        v129 = v128 + v127;
        v130 = &v149 - &v131;
        if (v129 == 1)
        {
          v130 = 0;
        }

        v131 = v130 + v129;
        v132 = 1;
      }

      else
      {
        v34 = -8;
        if (v150 == 57)
        {
          v34 = 0;
        }

        v35 = v34 + v150 - 56;
        v36 = v158 - &v131;
        if (v35 == 1)
        {
          v36 = 0;
        }

        v131 = v36 + v35;
        v132 = 0;
      }

      if (v152 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_183;
        }
      }

      else
      {
        *&v158[0] = v152 - 48;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v151, v158);
        if ((v132 & 1) == 0)
        {
LABEL_183:
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v158[0]) = 136446210;
            *(v158 + 4) = v8;
            v32 = MEMORY[0x1E69E9C10];
            v33 = "scene already in the index: %{public}s";
            goto LABEL_185;
          }

          goto LABEL_186;
        }
      }
    }

    v7 = 1;
    goto LABEL_189;
  }

  return v7;
}

void sub_1B364F6F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v5 = *(v4 - 160);
    v6 = v4 - 152;
    v7 = -8;
    v8 = v5 == 1;
    if (v5 == 1)
    {
      v7 = 0;
    }

    v9 = v7 + v5;
    v10 = v5 + v4 - 160;
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v9 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 + v6;
    }

    v13 = *(v12 + 16);
    v14 = v4 - 168;
    v15 = v12 + 16 - (v4 - 168);
    if (v13 == 1)
    {
      v15 = 0;
    }

    v16 = v15 + v13;
    *(v4 - 168) = v16;
    *(v11 + 16) = 1;
    if (v16 != 1)
    {
      v17 = v14 - v6;
      do
      {
        if (v16 + v17 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16 + v14;
        }

        v19 = *(v18 + 16);
        v20 = v18 + 16 - (v4 - 176);
        if (v19 == 1)
        {
          v20 = 0;
        }

        v21 = v16 + 16;
        *(v4 - 184) = v21;
        *(v4 - 176) = v20 + v19;
        if (v21 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = -32;
        }

        *(v4 - 152) = v22 + v21;
        std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v3, (v4 - 152));
        --*(v2 + 32);
        v23 = *(v4 - 176);
        if (v23 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = -8;
        }

        v16 = v24 + v23;
        *(v4 - 168) = v16;
      }

      while (v16 != 1);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1B364F7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_end_catch();
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(v27 - 144);
  boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(v27 - 200);
  pf::SceneTaxonomyNode::~SceneTaxonomyNode(&a27);
  _Unwind_Resume(a1);
}

char *pf::SceneTaxonomyLineParser::parseEdge(pf::SceneTaxonomyLineParser *this, char *__s)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(this + 49) & 1) == 0)
  {
    *(this + 49) = 1;
  }

  result = strrchr(__s, 44);
  if (result)
  {
    *result = 0;
    v5 = result + 1;
    v6 = *(this + 20);
    v7 = *(this + 16);
    if (v7)
    {
      v8 = v7 - &v13;
    }

    else
    {
      v8 = 1;
    }

    v13 = v8;
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(buf, __s, &v13);
    boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::find(&v14, v6, buf);
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(buf);
    v9 = *(this + 20);
    v10 = *(this + 16);
    if (v10)
    {
      v11 = v10 - &v12;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(buf, v5, &v12);
    boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::find(&v13, v9, buf);
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(buf);
    if (v14 == 1 || !&buf[v14 - 8] || v13 == 1 || !(&v13 + v13))
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315394;
        v16 = __s;
        v17 = 2080;
        v18 = v5;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to find edge in name map: %s -> %s", buf, 0x16u);
        return 0;
      }
    }

    else
    {
      pf::SceneTaxonomyNode::addChild(&buf[v14 + 24], (&v13 + v13 + 32));
      return 1;
    }
  }

  return result;
}

void sub_1B364FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(va);
  _Unwind_Resume(a1);
}

uint64_t pf::SceneTaxonomyLineParser::parseDetectors(pf::SceneTaxonomyLineParser *this, char *__s)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(this + 49) & 1) == 0)
  {
    *(this + 49) = 1;
  }

  result = strrchr(__s, 58);
  if (result)
  {
    *result = 0;
    v5 = (result + 1);
    v23 = 1;
    v6 = *(this + 20);
    v7 = *(this + 16);
    if (v7)
    {
      v8 = v7 - &v24;
    }

    else
    {
      v8 = 1;
    }

    v24 = v8;
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(buf, __s, &v24);
    boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::find(&v22, v6, buf);
    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(buf);
    if (v22 == 1 || (v9 = &v22 + v22) == 0)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v26 = __s;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "failed to find detector key in name map: %{public}s";
      v19 = 12;
    }

    else
    {
      __lasts = 0;
      v10 = strtok_r(v5, ",", &__lasts);
      if (!v10)
      {
        return 1;
      }

      v11 = v10;
      while (1)
      {
        v12 = *(this + 20);
        v13 = *(this + 16);
        v14 = (v13 ? v13 - &v24 : 1);
        v24 = v14;
        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(buf, v11, &v24);
        boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::find(&v20, v12, buf);
        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(buf);
        v15 = v20 == 1 ? 0 : &v20 + v20;
        v16 = v23 == 1 ? 0 : &v23 + v23;
        if (v15 == v16)
        {
          break;
        }

        v24 = v15 + 32;
        boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::emplace_unique<pf::SceneTaxonomyNode*>(buf, (v9 + 240), &v24);
        v11 = strtok_r(0, ",", &__lasts);
        if (!v11)
        {
          return 1;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v26 = __s;
      v27 = 2082;
      v28 = v11;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "failed to find detector for key '%{public}s' in name map: %{public}s";
      v19 = 22;
    }

    _os_log_error_impl(&dword_1B35C1000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
    return 0;
  }

  return result;
}

void sub_1B364FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::find(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(a3);
  result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::find_node_impl<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(&v9, a2, v6, a3);
  v8 = (&v9 - a1);
  if (v9 == 1)
  {
    v8 = 0;
  }

  *a1 = &v8[v9];
  return result;
}

double boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(uint64_t **a1)
{
  v1 = a1 + 1;
  if (a1[1] != 1)
  {
    __assert_rtn("create_node", "implementation.hpp", 1984, "!node_");
  }

  v3 = **a1;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 + v3;
  }

  v5 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v4, 0x20uLL);
  v6 = (v10 - v1);
  if (v5 - v10 == 1)
  {
    v6 = 0;
  }

  v7 = &v6[v5 - v10];
  a1[1] = v7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v1 + v7;
  }

  *v8 = 0;
  *(v8 + 1) = 0;
  *&result = 1;
  *(v8 + 1) = xmmword_1B36A1EF0;
  return result;
}

uint64_t boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (v3 != 1)
  {
    v4 = *a1;
    v6 = v2 - &v6 + v3;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v4, &v6);
  }

  return a1;
}

uint64_t boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::min_buckets_for_size(unint64_t a1, float a2)
{
  if (a2 < 0.001)
  {
    __assert_rtn("min_buckets_for_size", "implementation.hpp", 3096, "mlf_ >= minimum_max_load_factor");
  }

  v2 = floor(a1 / a2) + 1.0;
  if (v2 >= 1.84467441e19)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = 38;
  v5 = &boost::unordered::detail::prime_list_template<unsigned long>::value;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[8 * (v4 >> 1)];
    v9 = *v7;
    v8 = v7 + 8;
    v4 += ~(v4 >> 1);
    if (v9 < v3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = &unk_1B36A2BA0;
  if (v5 != "N5boost12interprocess9ipcdetail8CtorArgNINS_9container12basic_stringIcNSt3__111char_traitsIcEENS0_9allocatorIcNS0_15segment_managerIcNS0_15rbtree_best_fitINS0_17null_mutex_familyENS0_10offset_ptrIvlmLm0EEELm0EEENS0_10iset_indexEEEEEEELb0EJRPcRSH_EEE")
  {
    v10 = v5;
  }

  return *v10;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::create_buckets(uint64_t a1, unint64_t a2)
{
  v34 = 1;
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v31 = (a1 + 16);
    v32 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v31);
    result = boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v33, (a1 + 8), a2 + 1);
    v7 = &v33 - v5;
    if (v33 == 1)
    {
      v7 = 0;
    }

    v8 = &v33[v7];
    *v5 = &v33[v7];
    if (v32 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v9 = v32 + &v32 - &v33;
    v10 = &v33 - &v34;
    if (v9 == 1)
    {
      v10 = 0;
    }

    v34 = v10 + v9;
  }

  else
  {
    v11 = v4 + v5 - &v33 + 8 * *(a1 + 24);
    v12 = 16;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = (v12 + v11);
    v31 = v13;
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v31 + v13;
    }

    v15 = *v14;
    v16 = v14 - &v34;
    if (v15 == 1)
    {
      v16 = 0;
    }

    v34 = v16 + v15;
    boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v31, (a1 + 8), a2 + 1);
    result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::destroy_buckets(a1);
    v17 = (&v31 - v5);
    if (v31 == 1)
    {
      v17 = 0;
    }

    v8 = v31 + v17;
    *(a1 + 56) = v31 + v17;
  }

  *(a1 + 24) = a2;
  if (v8 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = a2 * *(a1 + 40);
    v18 = vcvtpd_u64_f64(v19);
    if (ceil(v19) >= 1.84467441e19)
    {
      v18 = -1;
    }
  }

  *(a1 + 48) = v18;
  v20 = v5 - &v33;
  v21 = 16;
  if (v8 == 1)
  {
    v20 = 0;
  }

  v22 = &v8[8 * a2 + v20];
  if (v22 == 1)
  {
    v21 = 0;
  }

  v23 = &v22[v21];
  v31 = v23;
  v24 = &v8[v20];
  v33 = v24;
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v24;
  }

  v26 = &v31 + v23;
  if (v23 == 1)
  {
    v26 = 0;
  }

  if (v25 != v26)
  {
    do
    {
      *v25 = 1;
      v27 = v33 + 8;
      v33 = v27;
      if (v27 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = &v33 + v27;
      }

      if (v31 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = &v31 + v31;
      }
    }

    while (v25 != v28);
  }

  v29 = &v34 - &v33;
  if (v34 == 1)
  {
    v29 = 0;
  }

  v30 = (&v33 - v25);
  if (v29 + v34 == 1)
  {
    v30 = 0;
  }

  *v25 = &v30[v29 + v34];
  return result;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,false,char *&,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>&>::construct_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v7 = result;
    do
    {
      v8 = a2 + 32;
      result = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(a2, **(v7 + 40), *(v7 + 32));
      v9 = *a4 + 1;
      *a4 = v9;
      a2 = v8;
    }

    while (v9 < a3);
  }

  return result;
}

void pf::SceneTaxonomyLineParser::~SceneTaxonomyLineParser(pf::SceneTaxonomyLineParser *this)
{
  *this = &unk_1F2A8A428;
  v1 = this + 56;
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory(this + 16);
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(v1);

  JUMPOUT(0x1B8C64390);
}

{
  *this = &unk_1F2A8A428;
  v1 = this + 56;
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory(this + 16);
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(v1);
}

void pf::SceneTaxonomyLineParser::SceneTaxonomyLineParser(int8x16_t *this, const char *a2, const char *a3, uint64_t a4, __int8 a5)
{
  this->i64[0] = &unk_1F2A8A428;
  this->i64[1] = a2;
  this[1].i8[0] = a5;
  this[1].i64[1] = 0;
  this[2].i64[0] = a4;
  this[2].i64[1] = 0;
  this[3].i16[0] = 0;
  LOWORD(v12) = 420;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_mapped_file(&this[3].i64[1], a2, 0x300000uLL, &v12);
  v6.i64[0] = this;
  v7.i64[0] = this[3].i64[1];
  v8 = vdupq_lane_s64(vsubq_s64(v7, v6).i64[0], 0);
  v9 = vdupq_n_s64(1uLL);
  *v7.i8 = vdup_n_s32(v7.i64[0] == 0);
  v10.i64[0] = v7.u32[0];
  v10.i64[1] = v7.u32[1];
  v11 = vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL));
  this[6] = vbslq_s8(v11, v9, vsubq_s64(v8, xmmword_1B36A1F10));
  this[7] = vbslq_s8(v11, v9, vsubq_s64(v8, xmmword_1B36A1F20));
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_heap_memory(this[8].i8);
}

void sub_1B365049C(_Unwind_Exception *a1)
{
  boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_heap_memory((v1 + 128));
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(v1 + 56);
  _Unwind_Resume(a1);
}

uint64_t boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_mapped_file(uint64_t a1, const char *a2, unint64_t a3, mode_t *a4)
{
  v6 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 29) = 0;
  boost::interprocess::ipcdetail::managed_open_or_create_impl<boost::interprocess::ipcdetail::file_wrapper,8ul,true,false>::priv_open_or_create<char const*,boost::interprocess::ipcdetail::create_open_func<boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>>>((a1 + 8), 2, &v6, a3, 2, a4, a1, 2);
  return a1;
}

void sub_1B3650528(_Unwind_Exception *a1)
{
  boost::interprocess::mapped_region::~mapped_region((v1 + 1));
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::unordered::unordered_map<unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>,boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,false,boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>&>::construct_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    do
    {
      v4 = *(result + 32);
      v5 = *v4;
      v6 = v4 + *v4;
      if (v5 == 1)
      {
        v6 = 0;
      }

      if (v6)
      {
        v7 = v6 - v21;
      }

      else
      {
        v7 = 1;
      }

      *a2 = 0;
      if (v7 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = &v21[v7];
      }

      v9 = &v8[-a2 - 16];
      v10 = v8 == 0;
      if (v8)
      {
        v11 = v8 - v22;
      }

      else
      {
        v11 = 1;
      }

      if (v10)
      {
        v9 = 1;
      }

      if (v11 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v22[v11];
      }

      if (v12)
      {
        v13 = &v12[-a2 - 8];
      }

      else
      {
        v13 = 1;
      }

      *(a2 + 8) = v13;
      *(a2 + 16) = v9;
      v14 = &boost::unordered::detail::prime_list_template<unsigned long>::value;
      v15 = 38;
      do
      {
        v16 = v15 >> 1;
        v17 = &v14[8 * (v15 >> 1)];
        v19 = *v17;
        v18 = (v17 + 1);
        v15 += ~(v15 >> 1);
        if (v19 < 0xB)
        {
          v14 = v18;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      if (v14 == "N5boost12interprocess9ipcdetail8CtorArgNINS_9container12basic_stringIcNSt3__111char_traitsIcEENS0_9allocatorIcNS0_15segment_managerIcNS0_15rbtree_best_fitINS0_17null_mutex_familyENS0_10offset_ptrIvlmLm0EEELm0EEENS0_10iset_indexEEEEEEELb0EJRPcRSH_EEE")
      {
        v14 = &unk_1B36A2BA0;
      }

      *(a2 + 24) = *v14;
      *(a2 + 32) = 0;
      *(a2 + 40) = 1065353216;
      *(a2 + 48) = xmmword_1B36A1D80;
      a2 += 64;
      v20 = *a4 + 1;
      *a4 = v20;
    }

    while (v20 < a3);
  }

  return result;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,false,boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>&>::construct_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = -16 - a2;
    do
    {
      v5 = *(result + 32);
      v6 = *v5;
      v7 = v5 + *v5;
      if (v6 == 1)
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = v7 - v16;
      }

      else
      {
        v8 = 1;
      }

      *a2 = 0;
      if (v8 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = &v16[v8];
      }

      v10 = v9 - v17;
      v11 = v9 == 0;
      if (!v9)
      {
        v10 = 1;
      }

      v12 = &v9[v4];
      if (v11)
      {
        v12 = 1;
      }

      if (v10 == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = &v17[v10];
      }

      if (v13)
      {
        v14 = &v13[v4 + 8];
      }

      else
      {
        v14 = 1;
      }

      *(a2 + 8) = v14;
      *(a2 + 16) = v12;
      *(a2 + 24) = xmmword_1B36A1F00;
      *(a2 + 40) = 1065353216;
      *(a2 + 48) = xmmword_1B36A1D80;
      v15 = *a4 + 1;
      *a4 = v15;
      v4 -= 64;
      a2 += 64;
    }

    while (v15 < a3);
  }

  return result;
}

__CFString *PFStoryOverallDurationKindLocalizationKey(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7B65CD8[a1];
  }
}

__CFString *PFStoryOverallDurationKindDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7B65CD8[a1];
  }
}

id PFStoryOverallDurationInfoDescription(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{ "];
  if (*a1 > 5uLL)
  {
    v3 = @"??";
  }

  else
  {
    v3 = off_1E7B65CD8[*a1];
  }

  v4 = v3;
  [v2 appendString:v4];

  if (*a1 == 2)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 56);
    v10[2] = *(a1 + 40);
    v10[3] = v6;
    v11 = *(a1 + 72);
    v10[0] = *(a1 + 8);
    v10[1] = v5;
    v7 = PFStoryDurationInfoDescription(v10);
    [v2 appendFormat:@" %@", v7];
  }

  [v2 appendString:@" }"];
  v8 = [v2 copy];

  return v8;
}

void sub_1B3654B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8688(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3655470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v11 = objc_begin_catch(exception_object);
      v12 = MEMORY[0x1E696ABC0];
      a10 = *MEMORY[0x1E696A588];
      v13 = [v11 description];
      a11 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      [v12 errorWithDomain:@"PFStoryRecipeErrorDomain" code:1 userInfo:v14];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1B36553FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B3655BE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(a1);
      v3 = MEMORY[0x1E696ABC0];
      STACK[0x230] = *MEMORY[0x1E696A578];
      v4 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v2 description];
      v5 = [v4 initWithFormat:@"Malformed recipe: %@"];
      STACK[0x238] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x238] forKeys:&STACK[0x230] count:1];
      v7 = [v3 errorWithDomain:@"PFStoryRecipeErrorDomain" code:1 userInfo:v6];
      v8 = *(STACK[0x208] + 40);
      *(STACK[0x208] + 40) = v7;

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x1B3655B44);
  }

  _Unwind_Resume(a1);
}

__CFString *PFSharedLibraryModeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B65F20[a1];
  }
}

BOOL PFUserHasSetSmartStyle()
{
  v0 = AVSmartStyleSettingsGetSystemStyle();
  v1 = v0 != 0;

  return v1;
}

__CFString *PFStoryRecipeSongSubcategoryDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7B65F78[a1];
  }
}

__CFString *PFStoryRecipeSongCategoryDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7B65FD0[a1];
  }
}

__CFString *PFStoryRecipeSongPaceDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7B65FA8[a1];
  }
}

uint64_t PFStoryRecipeSongPaceFromVisualTempo(void *a1, double a2)
{
  v3 = a1;
  [v3 slowVisualTempoTarget];
  v5 = v4;
  [v3 mediumVisualTempoTarget];
  v7 = (v5 + v6) * 0.5;
  [v3 mediumVisualTempoTarget];
  v9 = v8;
  [v3 fastVisualTempoTarget];
  v11 = v10;

  v12 = 3;
  if ((v9 + v11) * 0.5 > a2)
  {
    v12 = 2;
  }

  if (v7 > a2)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

uint64_t PFParallaxStyleCategoryBlackWhite_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t PFParallaxStyleCategoryBlackWhite_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t PFParallaxStyleCategoryBlackWhite_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1B36576F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *PFParallaxStyleCategoryBlackWhite_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [PFParallaxColor colorWithRGBValues:v4 error:a3];
  }

  else if (a3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid color values: %@", v4, *MEMORY[0x1E696A278]];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = [v5 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v7];

    a3 = 0;
  }

  return a3;
}

void sub_1B3657F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PFParallaxLayerStyleSupportedKinds()
{
  if (PFParallaxLayerStyleSupportedKinds_onceToken[0] != -1)
  {
    dispatch_once(PFParallaxLayerStyleSupportedKinds_onceToken, &__block_literal_global_9249);
  }

  v1 = PFParallaxLayerStyleSupportedKinds_supportedKinds;

  return v1;
}

void __PFParallaxLayerStyleSupportedKinds_block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"Original";
  v2[1] = @"Studio";
  v2[2] = @"BlackWhite";
  v2[3] = @"BlackWhiteMono";
  v2[4] = @"ColorBGStandard";
  v2[5] = @"ColorWashSingle";
  v2[6] = @"ColorWashDuotone";
  v2[7] = @"GreenScreen";
  v2[8] = @"GreenScreenMono";
  v2[9] = @"GreenScreenBlur";
  v2[10] = @"GreenScreenGraphic";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:11];
  v1 = PFParallaxLayerStyleSupportedKinds_supportedKinds;
  PFParallaxLayerStyleSupportedKinds_supportedKinds = v0;
}

id PFParallaxStyleFrequencyTable()
{
  if (PFParallaxStyleFrequencyTable_onceToken != -1)
  {
    dispatch_once(&PFParallaxStyleFrequencyTable_onceToken, &__block_literal_global_48);
  }

  v1 = PFParallaxStyleFrequencyTable_frequencyTable;

  return v1;
}

void __PFParallaxStyleFrequencyTable_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"Original";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = PFParallaxStyleFrequencyTable_frequencyTable;
  PFParallaxStyleFrequencyTable_frequencyTable = v0;
}

__CFString *PFDefaultParallaxStyleKindForCategory(void *a1)
{
  v1 = a1;
  v2 = @"Original";
  if (([v1 isEqualToString:@"Original"] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"TrueColors") & 1) == 0)
  {
    if ([v1 isEqualToString:@"WarmColors"])
    {
      v2 = @"ColorWashDuotone";
    }

    else if ([v1 isEqualToString:@"CoolColors"])
    {
      v2 = @"ColorWashSingle";
    }

    else if ([v1 isEqualToString:@"BlackWhite"])
    {
      v2 = @"BlackWhiteMono";
    }
  }

  return v2;
}

uint64_t PFMetadataImageSourceIsSpatialMedia(uint64_t a1)
{
  v1 = [[PFMetadata alloc] initWithImageSource:a1 contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1];
  v2 = [(PFMetadata *)v1 isSpatialMedia];

  return v2;
}

uint64_t __Block_byref_object_copy__9528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B365F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B365F944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B36602EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9942(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3661150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PFVideoComplementMetadataForVideoAtPath(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6987E28];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1];
  v5 = [v3 assetWithURL:v4];

  v6 = PFVideoComplementMetadataForVideoAVAsset(v5, a2);

  return v6;
}

id PFVideoComplementMetadataForVideoAVAsset(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v4 = v6;
  v5 = v7;
  v2 = PFVideoComplementMetadataForVideoAVAssetWithKnownValues(a1, 0, &v6, &v4, a2);

  return v2;
}

id PFVideoComplementMetadataForVideoAVAssetWithKnownValues(void *a1, void *a2, __int128 *a3, __int128 *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = v10;
  v24 = *a3;
  v25 = *(a3 + 2);
  v22 = *a4;
  v23 = *(a4 + 2);
  if (BYTE12(v24))
  {
    v12 = 0;
  }

  else
  {
    v12 = &v24;
  }

  if (BYTE12(v22))
  {
    v13 = 0;
  }

  else
  {
    v13 = &v22;
  }

  if (v10)
  {
    v14 = _PFReadMetadataFromVideoAVAsset(v9, 0, v12, v13, a5);
    v15 = v11;
    if (!v14)
    {
      v16 = 0;
      v15 = v11;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v21 = 0;
  v17 = _PFReadMetadataFromVideoAVAsset(v9, &v21, v12, v13, a5);
  v15 = v21;
  if (v17)
  {
LABEL_11:
    v16 = objc_opt_new();
    [v16 setPairingIdentifier:v15];
    v19 = v22;
    v20 = v23;
    [v16 setImageDisplayTime:&v19];
    v19 = v24;
    v20 = v25;
    [v16 setVideoDuration:&v19];
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

uint64_t _PFReadMetadataFromVideoAVAsset(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v78 = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v79 = epoch;
  v8 = *MEMORY[0x1E6960C70];
  v88 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 8);
  flags = *(MEMORY[0x1E6960C70] + 12);
  v89 = v9;
  v70 = [MEMORY[0x1E695DF00] date];
  v10 = os_log_create("com.apple.photos.backend", "PhotosFormats");
  v11 = os_signpost_id_make_with_pointer(v10, v7);
  v12 = v10;
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.photos.photosformats.videometadata", &unk_1B36B501D, buf, 2u);
  }

  spid = v11;
  if (!v7)
  {
    v28 = MEMORY[0x1E696ABC0];
    v86 = *MEMORY[0x1E696A278];
    v87 = @"nil avasset";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v30 = [v28 errorWithDomain:@"com.apple.PhotosFormats" code:10 userInfo:v29];

    v27 = 0;
    v31 = 0;
    goto LABEL_54;
  }

  context = objc_autoreleasePoolPush();
  if (a3)
  {
    [v7 duration];
  }

  v72 = a4;
  if (!a4)
  {
    v30 = 0;
    v27 = 1;
    if (a2)
    {
      goto LABEL_46;
    }

    goto LABEL_24;
  }

  v15 = v13;
  v16 = v15;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.photos.photosformats.videometadata.displaytime", &unk_1B36B501D, buf, 2u);
  }

  v64 = v16;

  v17 = v7;
  value = v8;
  timescale = v9;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v65 = v17;
  v18 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:?];
  v19 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
  if (!v19)
  {
    v63 = 0;
    v27 = 1;
    goto LABEL_41;
  }

  v67 = a2;
  v68 = v7;
  v20 = *v83;
  v21 = *MEMORY[0x1E69629E0];
LABEL_13:
  v22 = 0;
  while (1)
  {
    if (*v83 != v20)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v82 + 1) + 8 * v22);
    v24 = [v23 formatDescriptions];
    v25 = [v24 firstObject];

    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = CMMetadataFormatDescriptionGetIdentifiers(v25);
    if ([v26 containsObject:v21])
    {
      break;
    }

LABEL_19:
    if (v19 == ++v22)
    {
      v19 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (v19)
      {
        goto LABEL_13;
      }

      v63 = 0;
      v27 = 1;
      a2 = v67;
      v7 = v68;
      a4 = v72;
      goto LABEL_41;
    }
  }

  v19 = v23;

  if (!v19)
  {
    v63 = 0;
    v27 = 1;
    a2 = v67;
    v7 = v68;
    a4 = v72;
    goto LABEL_42;
  }

  v63 = v19;
  v18 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v19 outputSettings:0];
  v81 = 0;
  v32 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v65 error:&v81];
  v33 = v81;
  a2 = v67;
  v7 = v68;
  a4 = v72;
  v62 = v32;
  if (v32)
  {
    [v32 setPreparesMediaDataForRealTimeConsumption:1];
    [v32 addOutput:v18];
    [v32 startReading];
    do
    {
      v34 = [v18 copyNextSampleBuffer];
      if (!v34)
      {
        break;
      }

      v35 = v34;
      if (CMSampleBufferGetNumSamples(v34))
      {
        v36 = v13;
        v37 = v14;
        v38 = v33;
        v39 = [objc_alloc(MEMORY[0x1E6988160]) initWithSampleBuffer:v35];
        v40 = MEMORY[0x1E6987FE0];
        v41 = [v39 items];
        v42 = [v40 metadataItemsFromArray:v41 filteredByIdentifier:v21];
        v43 = [v42 firstObject];

        if (v43)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&v80, v35);
          value = v80.value;
          flags = v80.flags;
          timescale = v80.timescale;
          epoch = v80.epoch;
        }

        a4 = v72;
        v33 = v38;
        v14 = v37;
        v13 = v36;
        a2 = v67;
        v7 = v68;
      }

      CFRelease(v35);
    }

    while ((flags & 1) == 0);
    [v62 cancelReading];
  }

  v27 = flags & 1;
  if (flags)
  {
    v19 = 0;
  }

  else
  {
    v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v44 setObject:@"Invalid still image display time" forKeyedSubscript:*MEMORY[0x1E696A278]];
    [v44 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotosFormats" code:11 userInfo:v44];
  }

LABEL_41:
LABEL_42:
  v88 = value;
  v89 = timescale;
  v45 = v19;

  v30 = v19;
  v46 = v64;
  v47 = v46;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v47, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.photosformats.videometadata.displaytime", &unk_1B36B501D, buf, 2u);
  }

  if (!a2)
  {
LABEL_24:
    v31 = 0;
    goto LABEL_53;
  }

LABEL_46:
  v48 = v13;
  v49 = v48;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v49, OS_SIGNPOST_INTERVAL_BEGIN, spid, "com.apple.photos.photosformats.videometadata.assetid", &unk_1B36B501D, buf, 2u);
  }

  v76 = v30;
  v77 = 0;
  v50 = [PFVideoMetadata readMetadataType:1 fromAVAsset:v7 value:&v77 error:&v76];
  v31 = v77;
  v51 = v76;

  v27 = v27 & v50;
  v52 = v49;
  v53 = v52;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v53, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.photosformats.videometadata.assetid", &unk_1B36B501D, buf, 2u);
  }

  v30 = v51;
  a4 = v72;
LABEL_53:
  objc_autoreleasePoolPop(context);
LABEL_54:
  v54 = v13;
  v55 = v54;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v55, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.photosformats.videometadata", &unk_1B36B501D, buf, 2u);
  }

  v56 = [MEMORY[0x1E695DF00] date];
  [v56 timeIntervalSinceDate:v70];
  v58 = v57;

  if (v58 > 3.0 && os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v91 = v7;
    v92 = 2048;
    v93 = v58;
    _os_log_fault_impl(&dword_1B35C1000, v55, OS_LOG_TYPE_FAULT, "Slow metadata read for AVAsset %@: %.3fs", buf, 0x16u);
  }

  if (a3)
  {
    *a3 = v78;
    *(a3 + 16) = v79;
  }

  if (a4)
  {
    *a4 = v88;
    *(a4 + 8) = v89;
    *(a4 + 12) = flags;
    *(a4 + 16) = epoch;
  }

  if (a2)
  {
    v59 = v31;
    *a2 = v31;
  }

  if (a5)
  {
    v60 = v30;
    *a5 = v30;
  }

  return v27;
}

void sub_1B36626F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B3662858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t PFIsLivePhotoBundleType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[PFUniformTypeUtilities livePhotoBundleType];
    v3 = +[PFUniformTypeUtilities livePhotoBundlePrivateType];
    if (v2 && ([v1 conformsToType:v2] & 1) != 0)
    {
      v4 = 1;
    }

    else if (v3)
    {
      v4 = [v1 conformsToType:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PFAllPlatformsLivePhotoBundleTypes()
{
  if (PFAllPlatformsLivePhotoBundleTypes_onceToken[0] != -1)
  {
    dispatch_once(PFAllPlatformsLivePhotoBundleTypes_onceToken, &__block_literal_global_10057);
  }

  v1 = PFAllPlatformsLivePhotoBundleTypes_typeIdentifiers;

  return v1;
}

void __PFAllPlatformsLivePhotoBundleTypes_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = +[PFUniformTypeUtilities livePhotoBundleType];
  v4[0] = v0;
  v1 = +[PFUniformTypeUtilities livePhotoBundlePrivateType];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = PFAllPlatformsLivePhotoBundleTypes_typeIdentifiers;
  PFAllPlatformsLivePhotoBundleTypes_typeIdentifiers = v2;
}

BOOL _PFReadLivePhotoMetadataFromMetadata(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = os_log_create("com.apple.photos.backend", "PhotosFormats");
  v12 = os_signpost_id_make_with_pointer(v11, v9);
  v13 = v11;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.photos.photosformats.videometadata", &unk_1B36B501D, buf, 2u);
  }

  if (v9)
  {
    if (a3)
    {
      [v9 duration];
      *a3 = *buf;
      *(a3 + 16) = *&buf[16];
    }

    if (a4)
    {
      v16 = v14;
      v17 = v16;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL)
      {

        [v9 stillImageDisplayTime];
        *a4 = *buf;
        *(a4 + 16) = *&buf[16];
        v21 = v17;
      }

      else
      {
        if (os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.photos.photosformats.videometadata.displaytime", &unk_1B36B501D, buf, 2u);
        }

        [v9 stillImageDisplayTime];
        *a4 = *buf;
        *(a4 + 16) = *&buf[16];
        v18 = v17;
        if (os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, v18, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.photosformats.videometadata.displaytime", &unk_1B36B501D, buf, 2u);
        }
      }
    }

    if (a2)
    {
      v22 = v14;
      v23 = v22;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL)
      {

        *a2 = [v9 livePhotoPairingIdentifier];
        v20 = v23;
      }

      else
      {
        if (os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v12, "com.apple.photos.photosformats.videometadata.assetid", &unk_1B36B501D, buf, 2u);
        }

        *a2 = [v9 livePhotoPairingIdentifier];
        v20 = v23;
        if (os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B35C1000, v20, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.photosformats.videometadata.assetid", &unk_1B36B501D, buf, 2u);
        }
      }

      goto LABEL_24;
    }
  }

  else if (a5)
  {
    v19 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A278];
    v33 = @"nil metadata";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *a5 = [v19 errorWithDomain:@"com.apple.PhotosFormats" code:-1 userInfo:v20];
LABEL_24:
  }

  v24 = v14;
  v25 = v24;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, v25, OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.photosformats.videometadata", &unk_1B36B501D, buf, 2u);
  }

  v26 = [MEMORY[0x1E695DF00] date];
  [v26 timeIntervalSinceDate:v10];
  v28 = v27;

  if (v28 > 3.0)
  {
    v29 = v25;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v31 = [v9 fileURL];
      *buf = 138412546;
      *&buf[4] = v31;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_fault_impl(&dword_1B35C1000, v29, OS_LOG_TYPE_FAULT, "Slow metadata read for AVAsset (via PFMetadata) %@: %.3fs", buf, 0x16u);
    }
  }

  return v9 != 0;
}

void PFReadImageDisplayTimeFromVideoFileAtPath(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v4 = a1;
  v5 = [PFMetadata alloc];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:{v4, v9, v10}];

  v7 = [(PFMetadata *)v5 initWithAVURL:v6 timeZoneLookup:0];
  if (_PFReadLivePhotoMetadataFromMetadata(v7, 0, 0, &v9, 0))
  {
    v8 = &v9;
  }

  else
  {
    v8 = v3;
  }

  *a2 = *v8;
  *(a2 + 16) = *(v8 + 2);
}

id PFReadPairingIdentifierFromVideoAtPath(void *a1)
{
  v1 = a1;
  v2 = [PFMetadata alloc];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];

  v4 = [(PFMetadata *)v2 initWithAVURL:v3 timeZoneLookup:0];
  v10 = 0;
  v5 = _PFReadLivePhotoMetadataFromMetadata(v4, &v10, 0, 0, 0);
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    v8 = v6;
  }

  return v8;
}

id PFVideoComplementMetadataForVideoAVAssetPreloadingValues(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  v12 = v14;
  v13 = v15;
  v3 = a1;
  v4 = [[PFMetadata alloc] initWithAVAsset:v3 timeZoneLookup:0];

  v11 = 0;
  v5 = _PFReadLivePhotoMetadataFromMetadata(v4, &v11, &v14, &v12, a2);
  v6 = v11;
  v7 = 0;
  if (v5)
  {
    v7 = objc_opt_new();
    [v7 setPairingIdentifier:v6];
    v9 = v12;
    v10 = v13;
    [v7 setImageDisplayTime:&v9];
    v9 = v14;
    v10 = v15;
    [v7 setVideoDuration:&v9];
  }

  return v7;
}

BOOL PFReadPairingIdentifierFromImageAtPath(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1];
  v10 = 0;
  v6 = [PFImageMetadata readMetadataType:1 fromFileURL:v5 value:&v10 error:a3];
  v7 = v10;

  if (a2)
  {
    v8 = v7;
    *a2 = v7;
  }

  return v6;
}

id PFReadPairingIdentifierFromCGImageProperties(uint64_t a1)
{
  v3 = 0;
  [PFImageMetadata readMetadataType:1 fromCGImageProperties:a1 value:&v3 error:0];
  v1 = v3;

  return v1;
}

id PFParallaxSpatialPhotoProducerGetDownloadHandler()
{
  WeakRetained = objc_loadWeakRetained(_registeredDownloadHandler);

  return WeakRetained;
}

uint64_t PFParallaxLayerIDIsAnySpatialPhoto(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"spatial-photo"])
  {
    v2 = [v1 isEqualToString:@"spatial-photo-inactive-data"] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double PFOrientationTransformImageSize(uint64_t a1, double a2, double a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  return a3;
}

__CFString *PFOrientationName(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return PFOrientationName_names[v1];
}

uint64_t PFOrientationInverse(unint64_t a1)
{
  if (a1 > 8)
  {
    return 8;
  }

  else
  {
    return qword_1B36A2EF0[a1];
  }
}

void sub_1B36718D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3671AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B36723B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3672640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PFStoryRecipeAssetEnumerationIsConsistentForAssetKind(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 numberOfAssets];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [v3 assetAtIndex:i];
      if ([v8 kind] == a2)
      {
        [v4 addObject:v8];
      }
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v9 = [v4 objectEnumerator];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___PFStoryRecipeAssetEnumerationIsConsistentForAssetKind_block_invoke;
  v17 = &unk_1E7B663B8;
  v10 = v9;
  v18 = v10;
  v19 = &v20;
  [v3 enumerateAssetsWithKind:a2 usingBlock:&v14];
  if (*(v21 + 24) == 1)
  {
    v11 = [v10 nextObject];
    *(v21 + 24) = v11 == 0;

    v12 = *(v21 + 24);
  }

  else
  {
    v12 = 0;
    *(v21 + 24) = 0;
  }

  _Block_object_dispose(&v20, 8);
  return v12 & 1;
}

void sub_1B3672D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _PFStoryRecipeAssetIdentifiersAreUnique(void *a1)
{
  v1 = a1;
  v2 = [v1 numberOfAssets];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v2 < 1)
  {
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  v4 = [v1 assetAtIndex:0];
  v5 = [v4 identifier];

  if (([v3 containsObject:v5] & 1) == 0)
  {
    v7 = 1;
    while (1)
    {
      v8 = v7;
      [v3 addObject:v5];

      if (v2 == v8)
      {
        goto LABEL_9;
      }

      v9 = [v1 assetAtIndex:v8];
      v5 = [v9 identifier];

      v10 = [v3 containsObject:v5];
      v7 = v8 + 1;
      if (v10)
      {
        v6 = v8 >= v2;
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
LABEL_8:

LABEL_10:
  return v6;
}

BOOL _PFStoryRecipeCurrentStyleRefersToExistingSongAsset(void *a1)
{
  v1 = a1;
  v2 = [v1 currentStyle];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___PFStoryRecipeCurrentStyleRefersToExistingSongAsset_block_invoke;
    v8[3] = &unk_1E7B663E0;
    v4 = v3;
    v9 = v4;
    [v1 enumerateAssetsWithKind:2 usingBlock:v8];
    v5 = [v2 songAssetIdentifier];
    v6 = !v5 || [v4 containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

BOOL PFStoryRecipeIsConsistent(void *a1)
{
  v1 = a1;
  v2 = _PFStoryRecipeAssetEnumerationIsConsistentForAssetKind(v1, 1) && _PFStoryRecipeAssetEnumerationIsConsistentForAssetKind(v1, 2) && _PFStoryRecipeAssetIdentifiersAreUnique(v1) && _PFStoryRecipeCurrentStyleRefersToExistingSongAsset(v1);

  return v2;
}

void pf::TimezoneArchiveLineParser::finalize(pf::TimezoneArchiveLineParser *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = this + 40;
  v2 = *(this + 5);
  v4 = *(MEMORY[0x1E69E5478] + 8) & 0x7FFFFFFFFFFFFFFFLL;
  *&buf[8] = vdupq_n_s64(4uLL);
  *buf = &unk_1F2A89F88;
  v16 = v4;
  v17 = &TIMEZONE_RTREE_MAP_VERSION;
  boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v2, "version", buf);
  v5 = *v3;
  if (*v3)
  {
    v6 = *v3 - &v14;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(this + 12);
  v13 = *(this + 11);
  v14 = v6;
  v12 = v7;
  *&buf[8] = xmmword_1B36A1D60;
  v16 = 0x80000001B36A35AELL & 0x7FFFFFFFFFFFFFFFLL;
  v17 = &v14;
  *buf = &unk_1F2A8A0D8;
  v18 = &v9;
  v19 = &v10;
  v20 = &v11;
  v21 = &v12;
  v22 = &v13;
  boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v5, "rtree", buf);
  boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>::shrink_to_fit<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>,char>(*(this + 1));
  v8 = PFChecksumArchiveData((*v3 - 8), *(*v3 + 48) + 8, *(this + 2), *(this + 3));
  **(this + 4) = v8;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFTimeZoneLookup checksum %016llx", buf, 0xCu);
  }
}

void boost::interprocess::ipcdetail::placement_destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>::destroy_n(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v7 = 0;
    v8 = a2 - &v18;
    do
    {
      v9 = (a2 + v7);
      v10 = *(a2 + v7 + 24);
      if (v10 != 1)
      {
        v11 = v8 + v7 + v10;
        v12 = v11 == -23;
        v18 = v11 + 24;
        if (v11 == -23)
        {
          v13 = 0;
        }

        else
        {
          v13 = -8;
        }

        v14 = v11 + v13;
        if (v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = (v9 + v10 + 24);
        }

        if (v14 == -23)
        {
          v16 = 0;
        }

        else
        {
          v16 = &v19 - v20;
        }

        v20[0] = v8 + v7 + v13 + v10 + v16 + 24;
        v20[1] = a2 + v7;
        boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>>(v15, v20);
        v9[3] = 1;
      }

      v9[1] = 0;
      v9[2] = 0;
      v17 = *a4 + 1;
      *a4 = v17;
      v7 += 32;
    }

    while (v17 < a3);
  }
}

void *boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>>(_DWORD *a1, char *a2)
{
  v3 = a1 + 2;
  v2 = *a1;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      if (v2 < 0)
      {
        v3 = *v3;
      }

      if (*a2 == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = &a2[*a2];
      }

      v6 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v5);
      if (!v6)
      {
        v22 = &unk_1F2A89F30;
        boost::throw_exception<boost::bad_get>();
      }

      if (v6 != v3)
      {
        __assert_rtn("operator()", "destroy.hpp", 62, "(&l == &rtree::get<leaf>(*m_current_node))&&(invalid pointers)");
      }

      v7 = *(a2 + 1);
      v8 = a2 - &v20;
      if (*a2 == 1)
      {
        v8 = 0;
      }

      v9 = v8 + *a2;
      v20 = v9;
      v10 = &v20 - &v21;
      if (v9 == 1)
      {
        v10 = 0;
      }

      v11 = v10 + v9;
      v21 = v11;
      if (v11 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v21 + v11;
      }

      if (v12)
      {
        v13 = v12 - &v22;
      }

      else
      {
        v13 = 1;
      }

      v22 = v13;
      result = boost::interprocess::allocator<boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v22);
      v15 = &v21 - &v22;
      if (v21 == 1)
      {
        v15 = 0;
      }

      v16 = v15 + v21;
      v22 = (v15 + v21);
      if (v15 + v21 != 1 && (&v22 + v16))
      {
        if (*v7 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = v7 + *v7;
        }

        result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v17, &v22 + v16);
      }

      break;
    case 1:
      if (v2 < 0)
      {
        v19 = *v3;
        v18 = a2;
      }

      else
      {
        v18 = a2;
        v19 = v3;
      }

      result = boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::operator()(v18, v19);
      break;
    default:
      boost::detail::variant::forced_return<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag> *>();
  }

  return result;
}

char *boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::operator()(char *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = &a1[*a1];
  }

  v5 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v4);
  if (!v5)
  {
    v31 = &unk_1F2A89F30;
    boost::throw_exception<boost::bad_get>();
  }

  if (v5 != a2)
  {
    __assert_rtn("operator()", "destroy.hpp", 41, "(&n == &rtree::get<internal_node>(*m_current_node))&&(invalid pointers)");
  }

  v6 = a1 - &v29;
  if (*a1 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + *a1;
  v29 = v7;
  if (*a2)
  {
    v8 = a2 + 3;
    v9 = (a2 + 3) - a1;
    v10 = a2 + 3;
    do
    {
      v12 = *v10;
      v10 += 3;
      v11 = v12;
      if (v12 == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      v14 = v13 + v11;
      *a1 = v14;
      if (v14 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = &a1[v14];
      }

      boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>>(v15, a1);
      *v8 = 1;
      v9 += 24;
      v16 = v8 + 1 == &a2[3 * *a2 + 1];
      v8 = v10;
    }

    while (!v16);
    v7 = v29;
  }

  v17 = *(a1 + 1);
  v18 = &v29 - &v28;
  if (v7 == 1)
  {
    v18 = 0;
  }

  v19 = v18 + v7;
  v28 = v19;
  v20 = &v28 - &v30;
  if (v19 == 1)
  {
    v20 = 0;
  }

  v21 = v20 + v19;
  v30 = v21;
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = &v30 + v21;
  }

  if (v22)
  {
    v23 = v22 - &v31;
  }

  else
  {
    v23 = 1;
  }

  v31 = v23;
  result = boost::interprocess::allocator<boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v31);
  v25 = &v30 - &v31;
  if (v30 == 1)
  {
    v25 = 0;
  }

  v26 = v25 + v30;
  v31 = (v25 + v30);
  if (v25 + v30 != 1 && (&v31 + v26))
  {
    if (*v17 == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v17 + *v17;
    }

    return boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v27, &v31 + v26);
  }

  return result;
}

void *boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(_DWORD *a1)
{
  v3 = *a1;
  v1 = a1 + 2;
  v2 = v3;
  v4 = 0;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      return v4;
    case 1:
      if (v2 < 0)
      {
        v4 = *v1;
      }

      else
      {
        v4 = v1;
      }

      break;
    default:
      boost::detail::variant::forced_return<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag> *>();
  }

  return v4;
}

void boost::throw_exception<boost::bad_get>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  exception[4] = 0;
  exception[5] = 0;
  *(exception + 12) = -1;
  *exception = &unk_1F2A8A350;
  exception[1] = &unk_1F2A8A380;
  exception[2] = &unk_1F2A8A3A8;
  exception[3] = 0;
}

void *boost::interprocess::allocator<boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(void *result)
{
  v1 = result + *result;
  if (*result == 1 || v1 == 0)
  {
    __assert_rtn("destroy", "allocator.hpp", 269, "ptr != 0");
  }

  v3 = *v1;
  v4 = v3 ^ (v3 >> 31);
  if (v4 == 1)
  {
    if (v3 < 0)
    {
      result = *(v1 + 1);
      if (result)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (v4)
    {
      boost::detail::variant::forced_return<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag> *>();
    }

    if (v3 < 0)
    {
      result = *(v1 + 1);
      if (result)
      {
LABEL_13:

        JUMPOUT(0x1B8C64390);
      }
    }
  }

  return result;
}

uint64_t boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2A89EE8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1B8C64390);
}

{
  *a1 = &unk_1F2A89EE8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C64390);
}

{
  *(a1 + 8) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1B8C64390);
}

void boost::wrapexcept<boost::bad_get>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_get>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_get>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A89F58;
  *(a1 + 8) = &unk_1F2A89F30;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F2A89EE8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F2A8A350;
  *(a1 + 8) = &unk_1F2A8A380;
  *(a1 + 16) = &unk_1F2A8A3A8;
  return a1;
}

void sub_1B3673F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_get::~bad_get(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C64390);
}

void *boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(_DWORD *a1)
{
  v3 = *a1;
  v1 = a1 + 2;
  v2 = v3;
  v4 = 0;
  switch(v3 ^ (v3 >> 31))
  {
    case 0:
      if (v2 < 0)
      {
        v4 = *v1;
      }

      else
      {
        v4 = v1;
      }

      break;
    case 1:
      return v4;
    default:
      boost::detail::variant::forced_return<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag> *>();
  }

  return v4;
}

void boost::interprocess::ipcdetail::CtorArgN<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,false,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>&>::construct_n(uint64_t a1, const char *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v7 = a2;
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = **(a1 + 72);
      v12 = **(a1 + 64);
      v13 = *(a1 + 32);
      v14 = *v13;
      v15 = v13 + *v13;
      if (v14 == 1)
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = v15 - v7;
      }

      else
      {
        v16 = 1;
      }

      *(v7 + 3) = 1;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = v16;
      v17 = 1;
      if (v12 - v11 < 12)
      {
        goto LABEL_46;
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 2);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      if (v10 >> 59)
      {
        boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
      }

      v44 = operator new(0xAAAAAAAAAAAAAAB0 * ((v12 - v11) >> 2));
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 2);
      v43 = 0;
      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v20 = *(&v40 + 1);
        v19 = v41;
        v21 = v11;
        v22 = v42;
        do
        {
          v23 = *v21;
          if (v18)
          {
            if (v23 < v4)
            {
              v4 = *v21;
            }

            if (v23 > v19)
            {
              v19 = *v21;
            }

            v24 = v21[1];
            if (v24 < v20)
            {
              v20 = v21[1];
            }

            if (v24 > v22)
            {
              v22 = v21[1];
            }
          }

          else
          {
            v22 = v21[1];
            v18 = 1;
            v19 = *v21;
            v20 = v22;
            v4 = *v21;
          }

          v37.i64[0] = *v21;
          v37.i64[1] = v11;
          v25 = v45;
          v26 = &v44[2 * v45];
          if (v45 == v46)
          {
            boost::container::vector<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>,boost::container::new_allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>*,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>>(&v39, &v44, v26, &v37);
            if (!v39.i64[0])
            {
              v43 = v18;
              v40 = __PAIR64__(LODWORD(v20), LODWORD(v4));
              v41 = v19;
              v42 = v22;
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }
          }

          else
          {
            *v26 = v37;
            v45 = v25 + 1;
          }

          v21 += 3;
          v11 += 12;
        }

        while (v21 != v12);
        v43 = v18;
        v40 = __PAIR64__(LODWORD(v20), LODWORD(v4));
        v41 = v19;
        v42 = v22;
      }

      if (v10 < 0x21)
      {
        v9 = 0;
        v28 = 1;
      }

      else
      {
        v9 = 0;
        for (i = 32; i < v10; i *= 32)
        {
          v28 = i;
          ++v9;
        }
      }

      v39.i64[0] = v28;
      v39.i64[1] = v28 >> 2;
      v29 = v44;
      v35 = v44;
      v36 = v44;
      if (v44)
      {
        v30 = 1;
      }

      else
      {
        v30 = v45 == 0;
      }

      if (!v30)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v35 = &v44[2 * v45];
      if ((v18 & 1) == 0)
      {
        __assert_rtn("get", "pack_create.hpp", 273, "(m_initialized)&&(uninitialized envelope accessed)");
      }

      boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>>(&v37, &v36, &v35, &v40, v10, &v39, v7);
      v31 = &v37 - &v34 + 16;
      if (v38 == 1)
      {
        v31 = 0;
      }

      v17 = v31 + v38;
      v34 = v31 + v38;
      if (v46)
      {
        operator delete(v29);
        v17 = v34;
      }

      if (v17 == 1)
      {
LABEL_46:
        v32 = 0;
      }

      else
      {
        v32 = (&v34 - (v7 + 24));
      }

      *(v7 + 2) = v9;
      *(v7 + 3) = &v32[v17];
      *(v7 + 1) = v10;
      v7 += 32;
      v33 = *a4 + 1;
      *a4 = v33;
    }

    while (v33 < a3);
  }
}

void sub_1B367447C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::container::vector<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>,boost::container::new_allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>*,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>>>>(void *a1, char *a2, _BYTE *a3, _OWORD *a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *a2;
  v15 = operator new(16 * v9);
  v16 = v15;
  v17 = *a2;
  v18 = *(a2 + 1);
  v19 = v15;
  if (*a2)
  {
    v19 = v15;
    if (v17 != a3)
    {
      memmove(v15, *a2, a3 - v17);
      v19 = (v16 + a3 - v17);
    }
  }

  *v19 = *a4;
  if (a3)
  {
    v20 = &v17[16 * v18];
    if (v20 != a3)
    {
      memmove(v19 + 1, a3, v20 - a3);
    }
  }

  if (v17)
  {
    operator delete(v17);
    v18 = *(a2 + 1);
  }

  *a2 = v16;
  *(a2 + 1) = v18 + 1;
  *(a2 + 2) = v9;
  *a1 = v16 + a3 - v14;
}

char *boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>>(int8x16_t *a1, uint64_t **a2, uint64_t **a3, float32x2_t *a4, unint64_t a5, uint64x2_t *a6, void *a7)
{
  v7 = (*a3 - *a2) >> 4;
  if (v7 < 1 || v7 != a5)
  {
    __assert_rtn("per_level", "pack_create.hpp", 300, "(0 < std::distance(first, last) && static_cast<size_type>(std::distance(first, last)) == values_count)&&(unexpected parameters)");
  }

  if (a6->i64[0] > 1uLL)
  {
    v68 = vshrq_n_u64(*a6, 5uLL);
    if (*a7 == 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = a7 + *a7;
    }

    v38 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v37, 0x328uLL);
    v67 = v38 - &v67;
    if (v38 - &v67 == 1 || v38 == 0)
    {
      v59 = MEMORY[0x1B8C642F0](v71, "boost::geometry::index::rtree node creation failed");
      v69.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoJugCFBeMVOyyeDAj_SMX55Z6IIIUu7_bA6W8/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/index/detail/exception.hpp";
      v69.i64[1] = "void boost::geometry::index::detail::throw_runtime_error(const char *)";
      v70 = 28;
      boost::throw_exception<std::runtime_error>(v59, &v69);
    }

    if (v38 - &v69 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38;
    }

    *(v40 + 1) = 0;
    *v40 = 1;
    v41 = &v67 - &v69;
    if (v67 == 1)
    {
      v41 = 0;
    }

    v42 = v41 + v67;
    if (v67 == 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = (&v67 + v67);
    }

    if (v42 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = -24;
    }

    v71[0] = v44 + v42;
    v71[1] = a7;
    v45 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v43);
    if (!v45)
    {
      v69.i64[0] = &unk_1F2A89F30;
      boost::throw_exception<boost::bad_get>();
    }

    v46 = a6->i64[0];
    v47 = a5 / a6->i64[0];
    v48 = a5 % a6->i64[0];
    if (v48)
    {
      v49 = a6->u64[1];
      if (v48 >= v49 || (v47 = (a5 - v49) / v46, a5 - v49 == v47 * v46))
      {
        ++v47;
      }

      else
      {
        v47 += 2;
      }
    }

    if (v47 >= 0x22)
    {
      __assert_rtn("check_capacity", "varray.hpp", 79, "(s <= v.capacity())&&(size too big)");
    }

    BYTE1(v70) = 0;
    v54 = *a2;
    v65 = *a3;
    v66 = v54;
    boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level_packets<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>,boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::expandable_box<boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::default_strategy>>(&v66, &v65, a4, a5, v46, a6->u64[1], &v68, v45, &v69, a7);
    v71[0] = 1;
    if ((v70 & 0x100) == 0)
    {
      __assert_rtn("get", "pack_create.hpp", 273, "(m_initialized)&&(uninitialized envelope accessed)");
    }

    v55 = &v67 - &v66;
    if (v67 == 1)
    {
      v55 = 0;
    }

    v56 = v55 + v67;
    *a1 = v69;
    v57 = (&v66 - &a1[1]);
    if (v56 == 1)
    {
      v57 = 0;
    }

    a1[1].i64[0] = &v57[v56];
    v53 = v71;
  }

  else
  {
    if (a5 >= 0x21)
    {
      __assert_rtn("per_level", "pack_create.hpp", 306, "(values_count <= parameters.get_max_elements())&&(too big number of elements)");
    }

    if (*a7 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = a7 + *a7;
    }

    v16 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v15, 0x328uLL);
    v68.i64[0] = v16 - &v68;
    if (v16 - &v68 == 1 || v16 == 0)
    {
      v60 = MEMORY[0x1B8C642F0](v71, "boost::geometry::index::rtree node creation failed");
      v69.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoJugCFBeMVOyyeDAj_SMX55Z6IIIUu7_bA6W8/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/index/detail/exception.hpp";
      v69.i64[1] = "void boost::geometry::index::detail::throw_runtime_error(const char *)";
      v70 = 28;
      boost::throw_exception<std::runtime_error>(v60, &v69);
    }

    if (v16 - &v69 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    *(v18 + 1) = 0;
    *v18 = 0;
    if (v68.i64[0] == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v68 - v71;
    }

    v20 = v19 + v68.i64[0];
    if (v68.i64[0] == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v68.i32 + v68.i64[0]);
    }

    if (v20 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v71 - &v69;
    }

    v69.i64[0] = v22 + v20;
    v69.i64[1] = a7;
    v23 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v21);
    v24 = v23;
    if (!v23)
    {
      v71[0] = &unk_1F2A89F30;
      boost::throw_exception<boost::bad_get>();
    }

    v25 = (*a2)[1];
    v63 = *v25;
    boost::geometry::index::detail::varray<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,33ul>::push_back(v23, v25);
    v26 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    v27.i64[0] = v63;
    v27.i64[1] = v63;
    while (1)
    {
      *a2 = v26 + 2;
      if (v26 + 2 == *a3)
      {
        break;
      }

      v64 = v27;
      v28 = v26[3];
      v27.i32[0] = *v28;
      v61 = v27;
      v27.i32[0] = *(v28 + 4);
      v62 = v27;
      boost::geometry::index::detail::varray<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,33ul>::push_back(v24, v28);
      v29 = v64;
      v29.i32[0] = v61.i32[0];
      v30 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v64, v61), 0), v29, v64);
      v31 = v30;
      v31.i32[2] = v61.i32[0];
      v32 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v61, vdupq_laneq_s32(v30, 2)), 0), v31, v30);
      v33 = v32;
      v33.i32[1] = v62.i32[0];
      v34 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v32.i8, 1), v62), 0), v33, v32);
      v35 = v34;
      v35.i32[3] = v62.i32[0];
      v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v62, vdupq_laneq_s32(v34, 3)), 0), v35, v34);
      v26 = *a2;
      if (!*a2)
      {
        __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
      }
    }

    v69.i64[0] = 1;
    v50 = &v68 - v71;
    if (v68.i64[0] == 1)
    {
      v50 = 0;
    }

    v51 = v50 + v68.i64[0];
    *a1 = v27;
    v52 = (v71 - &a1[1]);
    if (v51 == 1)
    {
      v52 = 0;
    }

    a1[1].i64[0] = &v52[v51];
    v53 = &v69;
  }

  return boost::geometry::index::detail::rtree::subtree_destroyer<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::~subtree_destroyer(v53->i8);
}

void boost::throw_exception<std::runtime_error>(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_1F2A89F58;
  std::runtime_error::runtime_error((exception + 8), a1);
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *exception = &unk_1F2A8A2D8;
  *(exception + 1) = &unk_1F2A8A308;
  *(exception + 3) = &unk_1F2A8A330;
  *(exception + 4) = 0;
  *(exception + 14) = a2[1].i32[0];
  *(exception + 40) = vextq_s8(*a2, *a2, 8uLL);
}

void *boost::geometry::index::detail::varray<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,33ul>::push_back(void *result, uint64_t *a2)
{
  if ((*result - 33) <= 0xFFFFFFFFFFFFFFDDLL)
  {
    __assert_rtn("check_capacity", "varray.hpp", 79, "(s <= v.capacity())&&(size too big)");
  }

  v2 = result + 12 * *result;
  v3 = *a2;
  *(v2 + 4) = *(a2 + 2);
  *(v2 + 1) = v3;
  ++*result;
  return result;
}

char *boost::geometry::index::detail::rtree::subtree_destroyer<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::~subtree_destroyer(char *a1)
{
  v2 = &a1[*a1];
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1 - &v12 + *a1;
    v12 = v4;
    v5 = *(a1 + 1);
    v6 = &v12 - &v13;
    v7 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0;
    }

    v8 = v6 + v4;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2;
    }

    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v13 - v14;
    }

    v14[0] = v10 + v8;
    v14[1] = v5;
    boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::destroy<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>>(v9, v14);
  }

  *a1 = 1;
  return a1;
}

char *boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level_packets<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>,boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::expandable_box<boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::default_strategy>>(uint64_t **a1, uint64_t **a2, float32x2_t *a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v10 = *a2;
  v127 = *a1;
  v11 = (*a2 - *a1) >> 4;
  if (v11 < 1 || v11 != a4)
  {
    __assert_rtn("per_level_packets", "pack_create.hpp", 389, "(0 < std::distance(first, last) && static_cast<size_type>(std::distance(first, last)) == values_count)&&(unexpected parameters)");
  }

  v13 = a6;
  v14 = a4;
  v15 = a4 - a6;
  if (a4 < a6)
  {
    __assert_rtn("per_level_packets", "pack_create.hpp", 392, "(subtree_counts.minc <= values_count)&&(too small number of elements)");
  }

  v16 = a8;
  v17 = a7;
  v19 = a10;
  if (a5 >= a4)
  {
    *&v129 = *a1;
    v132[0] = v10;
    boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>>(&v130, &v129, v132, a3, a4, a7, a10);
    v57 = v131;
    v58 = -16;
    if (v131 == 1)
    {
      v58 = 0;
    }

    v59 = v58 + v131;
    v60 = v132 - &v129;
    if (v59 == 1)
    {
      v60 = 0;
    }

    *&v129 = v60 + v59;
    *(&v129 + 1) = a10;
    if ((*v16 - 33) <= 0xFFFFFFFFFFFFFFDDLL)
    {
      __assert_rtn("check_capacity", "varray.hpp", 79, "(s <= v.capacity())&&(size too big)");
    }

    v61 = &v16[3 * *v16];
    *(v61 + 1) = v130;
    v62 = (&v131 - (v61 + 3));
    if (v57 == 1)
    {
      v62 = 0;
    }

    v61[3] = &v62[v57];
    ++*v16;
    *&v129 = 1;
    if (*(a9 + 17))
    {
      v63 = *&v130;
      v64 = *a9;
      if (*&v130 < *a9)
      {
        *a9 = v130;
        v64 = v63;
      }

      v65 = *(a9 + 8);
      if (v63 > v65)
      {
        *(a9 + 8) = v63;
        v65 = v63;
      }

      v66 = *(&v130 + 1);
      v67 = *(a9 + 4);
      if (*(&v130 + 1) < v67)
      {
        *(a9 + 4) = DWORD1(v130);
        v67 = v66;
      }

      v68 = *(a9 + 12);
      if (v66 > v68)
      {
        *(a9 + 12) = v66;
        v68 = v66;
      }

      v69 = *(&v130 + 2);
      if (*(&v130 + 2) < v64)
      {
        *a9 = DWORD2(v130);
      }

      if (v69 > v65)
      {
        *(a9 + 8) = v69;
      }

      v70 = *(&v130 + 3);
      if (*(&v130 + 3) < v67)
      {
        *(a9 + 4) = HIDWORD(v130);
      }

      if (v70 > v68)
      {
        *(a9 + 12) = v70;
      }
    }

    else
    {
      *a9 = v130;
      *(a9 + 17) = 1;
    }

    return boost::geometry::index::detail::rtree::subtree_destroyer<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::~subtree_destroyer(&v129);
  }

  else
  {
    v20 = a2;
    v21 = v15 / a5;
    v22 = v15 % a5;
    v23 = a5 > v15;
    v24 = ((v15 / a5 + 2) >> 1) * a5;
    if (v23)
    {
      v24 = v22;
    }

    v25 = ((v21 + 1) >> 1) * a5;
    if (!v22)
    {
      v24 = v25;
    }

    if (a6 <= a4 % a5)
    {
      v24 = ((a4 / a5 + 1) >> 1) * a5;
    }

    if (a4 == a4 / a5 * a5)
    {
      v26 = ((a4 / a5) >> 1) * a5;
    }

    else
    {
      v26 = v24;
    }

    if (!v127 && v26)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

    v27 = a3;
    v28 = &v127[2 * v26];
    v30 = *a3;
    v29 = a3[1];
    v31 = vsub_f32(v29, *a3);
    v125 = v28;
    if (vcgt_f32(vdup_lane_s32(v31, 1), v31).u8[0])
    {
      if (v28 == v10)
      {
        LODWORD(v101) = HIDWORD(*a3);
        LODWORD(v102) = HIDWORD(*&a3[1]);
      }

      else
      {
        v123 = v26;
        v113 = a1;
        v32 = *a1;
        while (2)
        {
          v33 = v10 - 2;
          while (1)
          {
            v34 = (v10 - v32) >> 4;
            if (v34 < 2)
            {
              goto LABEL_194;
            }

            if (v34 == 3)
            {
              *&v130 = v32;
              if (!v32)
              {
                __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
              }

              *&v129 = v32 + 2;
              if (!v10)
              {
                __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
              }

              v132[0] = v10 - 2;
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<1ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(&v130, &v129, v132);
              goto LABEL_194;
            }

            if (v34 == 2)
            {
              if (!v10)
              {
                __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
              }

              if (!v32)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              if (*(v10 - 3) < *(v32 + 1))
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v32, v10 - 2);
              }

              goto LABEL_194;
            }

            if (v34 <= 7)
            {
              if (!v10)
              {
                __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
              }

              while (2)
              {
                if (v32 == v33)
                {
                  goto LABEL_194;
                }

                if (v32 == v10)
                {
LABEL_221:
                  if (!v32)
                  {
                    __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
                  }
                }

                else
                {
                  if (!v32)
                  {
                    __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
                  }

                  v110 = v32 + 2;
                  v111 = v32;
                  if (v32 + 2 != v10)
                  {
                    do
                    {
                      if (*(v110 + 1) < *(v111 + 1))
                      {
                        v111 = v110;
                      }

                      v110 += 2;
                    }

                    while (v110 != v10);
                    if (v111 != v32)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v32, v111);
                    }

                    goto LABEL_221;
                  }
                }

                v32 += 2;
                continue;
              }
            }

            if (!v32)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v35 = &v32[2 * (v34 >> 1)];
            *&v130 = v32;
            *&v129 = v35;
            if (!v10)
            {
              __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
            }

            v132[0] = v10 - 2;
            v36 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<1ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(&v130, &v129, v132);
            v37 = *(v32 + 1);
            v38 = *(v35 + 1);
            if (v37 < v38)
            {
              break;
            }

            v39 = v10 - 4;
            while (v39 != v32)
            {
              v40 = v39;
              v41 = *(v39 + 1);
              v39 -= 2;
              if (v41 < v38)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v32, v40);
                if (v36)
                {
                  v36 = 2;
                }

                else
                {
                  v36 = 1;
                }

                v33 = v40;
                goto LABEL_53;
              }
            }

            v42 = v32 + 2;
            if (v37 >= *(v10 - 3))
            {
              while (v42 != v33)
              {
                if (v37 < *(v42 + 1))
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v42, v10 - 2);
                  v42 += 2;
                  goto LABEL_39;
                }

                v42 += 2;
              }

              goto LABEL_194;
            }

LABEL_39:
            if (v42 != v33)
            {
              v43 = v10 - 2;
              while (1)
              {
                v44 = *(v32 + 1);
                if (v44 >= *(v42 + 1))
                {
                  do
                  {
                    v45 = v42 + 2;
                    v46 = *(v42 + 5);
                    v42 += 2;
                  }

                  while (v44 >= v46);
                }

                else
                {
                  v45 = v42;
                }

                do
                {
                  v47 = *(v43 - 3);
                  v43 -= 2;
                }

                while (v44 < v47);
                if (v45 >= v43)
                {
                  break;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v45, v43);
                v42 = v45 + 2;
              }

              v32 = v45;
              if (v125 >= v45)
              {
                continue;
              }
            }

            goto LABEL_194;
          }

LABEL_53:
          if (v32 + 2 >= v33)
          {
            i = 2;
          }

          else
          {
            for (i = 2; ; i += 2)
            {
              v49 = *(v35 + 1);
              v50 = *(&v32[i] + 1);
              while (v50 < v49)
              {
                v50 = *(&v32[i + 2] + 1);
                i += 2;
              }

              v51 = &v32[i];
              do
              {
                v52 = *(v33 - 3);
                v33 -= 2;
              }

              while (v52 >= v49);
              if (v51 >= v33)
              {
                break;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(&v32[i], v33);
              ++v36;
              if (v35 == v51)
              {
                v35 = v33;
              }

              if (!v35)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }
            }
          }

          v53 = &v32[i];
          if (&v32[i] != v35)
          {
            if (!v35)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            if (*(v35 + 1) < *(v53 + 1))
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(&v32[i], v35);
              ++v36;
            }
          }

          if (v125 == v53)
          {
            goto LABEL_194;
          }

          if (v36)
          {
            goto LABEL_72;
          }

          if (v125 < v53)
          {
            v54 = i * 8 - 16;
            if (i == 2)
            {
              goto LABEL_194;
            }

            v55 = v32 + 5;
            while (*v55 >= *(v55 - 4))
            {
              v55 += 4;
              v54 -= 16;
              if (!v54)
              {
                goto LABEL_194;
              }
            }

LABEL_72:
            if (v125 < v53)
            {
              v10 = &v32[i];
            }

            else
            {
              v32 = v53 + 2;
            }

            continue;
          }

          break;
        }

        for (j = v53 + 2; j != v10; j += 2)
        {
          if (*(j + 1) < *(j - 3))
          {
            goto LABEL_72;
          }
        }

LABEL_194:
        v26 = v123;
        if (!v127)
        {
          __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
        }

        v27 = a3;
        v102 = a3[1].f32[1];
        v101 = a3->f32[1];
        v17 = a7;
        v16 = a8;
        v14 = a4;
        v19 = a10;
        a1 = v113;
        v20 = a2;
      }

      v103 = v125;
      *&v130 = *v27;
      DWORD2(v130) = v27[1].i32[0];
      v129 = *v27->f32;
      *(&v130 + 3) = v101 + ((v102 - v101) * 0.5);
      *(&v129 + 1) = *(&v130 + 3);
    }

    else
    {
      if (v28 != v10)
      {
        v124 = v26;
        v114 = a1;
        v72 = *a1;
LABEL_113:
        v73 = v10 - 2;
        while (1)
        {
          v74 = (v10 - v72) >> 4;
          if (v74 < 2)
          {
            goto LABEL_184;
          }

          if (v74 == 3)
          {
            *&v130 = v72;
            if (!v72)
            {
              __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
            }

            *&v129 = v72 + 2;
            if (!v10)
            {
              __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
            }

            v132[0] = v10 - 2;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<0ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(&v130, &v129, v132);
            goto LABEL_184;
          }

          if (v74 == 2)
          {
            if (!v10)
            {
              __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
            }

            if (!v72)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            if (*v73 < *v72)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v72, v10 - 2);
            }

            goto LABEL_184;
          }

          if (v74 <= 7)
          {
            if (!v10)
            {
              __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
            }

            while (2)
            {
              if (v72 == v73)
              {
                goto LABEL_184;
              }

              if (v72 == v10)
              {
LABEL_209:
                if (!v72)
                {
                  __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
                }
              }

              else
              {
                if (!v72)
                {
                  __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
                }

                v104 = v72 + 2;
                if (v72 + 2 != v10)
                {
                  v105 = *v72;
                  v106 = v72;
                  v107 = (v72 + 2);
                  do
                  {
                    v108 = *v107;
                    v107 += 4;
                    v109 = v108;
                    if (v108 < v105)
                    {
                      v105 = v109;
                      v106 = v104;
                    }

                    v104 = v107;
                  }

                  while (v107 != v10);
                  if (v106 != v72)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v72, v106);
                  }

                  goto LABEL_209;
                }
              }

              v72 += 2;
              continue;
            }
          }

          if (!v72)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v75 = &v72[2 * (v74 >> 1)];
          *&v130 = v72;
          *&v129 = v75;
          if (!v10)
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v132[0] = v10 - 2;
          v76 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<0ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(&v130, &v129, v132);
          v77 = *v72;
          if (*v72 < *v75)
          {
LABEL_144:
            v87 = (v72 + 2);
            if (v72 + 2 >= v73)
            {
              v90 = 16;
            }

            else
            {
              for (k = 16; ; k = v90 + 16)
              {
                v89 = *v75;
                if (*(v72 + k) >= *v75)
                {
                  v90 = k;
                }

                else
                {
                  do
                  {
                    v90 = k + 16;
                    v91 = *(v87 + k);
                    k += 16;
                  }

                  while (v91 < v89);
                }

                v92 = (v72 + v90);
                do
                {
                  v93 = *(v73 - 4);
                  v73 -= 2;
                }

                while (v93 >= v89);
                if (v92 >= v73)
                {
                  break;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>((v72 + v90), v73);
                ++v76;
                if (v75 == v92)
                {
                  v75 = v73;
                }
              }
            }

            v94 = (v72 + v90);
            if ((v72 + v90) != v75 && *v75 < *v94)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>((v72 + v90), v75);
              ++v76;
            }

            if (v125 == v94)
            {
              goto LABEL_184;
            }

            if (!v76)
            {
              if (v125 >= v94)
              {
                v98 = (v94 + 4);
                if (v94 + 4 == v10)
                {
                  goto LABEL_184;
                }

                v99 = *v94;
                while (1)
                {
                  v100 = v99;
                  v99 = *v98;
                  if (*v98 < v100)
                  {
                    break;
                  }

                  v98 += 2;
                  if (v98 == v10)
                  {
                    goto LABEL_184;
                  }
                }
              }

              else
              {
                v95 = v90 - 16;
                if (v90 == 16)
                {
                  goto LABEL_184;
                }

                v96 = *v72;
                while (1)
                {
                  v97 = v96;
                  v96 = *v87;
                  if (*v87 < v97)
                  {
                    break;
                  }

                  v87 += 4;
                  v95 -= 16;
                  if (!v95)
                  {
                    goto LABEL_184;
                  }
                }
              }
            }

            if (v125 < v94)
            {
              v10 = (v72 + v90);
            }

            else
            {
              v72 = (v94 + 4);
            }

            goto LABEL_113;
          }

          v78 = (v10 - 4);
          while (v78 != v72)
          {
            v79 = v78;
            v80 = *v78;
            v78 -= 4;
            if (v80 < *v75)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v72, v79);
              if (v76)
              {
                v76 = 2;
              }

              else
              {
                v76 = 1;
              }

              v73 = v79;
              goto LABEL_144;
            }
          }

          v81 = (v72 + 2);
          if (v77 >= *v73)
          {
            break;
          }

LABEL_130:
          if (v81 != v73)
          {
            v82 = v10 - 2;
            while (1)
            {
              v83 = *v72;
              for (m = *v81; v83 >= m; m = v85)
              {
                v85 = v81[4];
                v81 += 4;
              }

              do
              {
                v86 = *(v82 - 4);
                v82 -= 2;
              }

              while (v83 < v86);
              if (v81 >= v82)
              {
                break;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v81, v82);
              v81 += 4;
            }

            v72 = v81;
            if (v125 >= v81)
            {
              continue;
            }
          }

          goto LABEL_184;
        }

        while (v81 != v73)
        {
          if (v77 < *v81)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v81, v10 - 2);
            v81 += 4;
            goto LABEL_130;
          }

          v81 += 4;
        }

LABEL_184:
        v26 = v124;
        if (!v127)
        {
          __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
        }

        v27 = a3;
        v29.i32[0] = a3[1].i32[0];
        v30.i32[0] = a3->i32[0];
        v17 = a7;
        v16 = a8;
        v13 = a6;
        a1 = v114;
        v14 = a4;
        v19 = a10;
        v20 = a2;
      }

      v103 = v125;
      v130 = *v27->f32;
      v129 = v130;
      *(&v130 + 2) = v30.f32[0] + ((v29.f32[0] - v30.f32[0]) * 0.5);
      *&v129 = *(&v130 + 2);
    }

    v132[0] = *a1;
    v128 = v103;
    boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level_packets<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>,boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::expandable_box<boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::default_strategy>>(v132, &v128, &v130, v26, a5, v13, v17, v16, a9, v19);
    v132[0] = v103;
    v128 = *v20;
    return boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::per_level_packets<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>*>> *,false>,boost::geometry::index::detail::rtree::pack<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::expandable_box<boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::default_strategy>>(v132, &v128, &v129, v14 - v26, a5, v13, v17, v16, a9, v19);
  }
}