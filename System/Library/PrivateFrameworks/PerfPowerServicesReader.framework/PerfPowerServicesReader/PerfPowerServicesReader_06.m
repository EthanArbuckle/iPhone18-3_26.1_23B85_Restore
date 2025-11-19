void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,6u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v18 = v4;
  v19 = v6;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v20);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v18 = *a1;
  v19 = v8;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v20);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v18 = *a1;
  v19 = v10;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v20);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v18 = *a1;
  v19 = v12;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v20);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v18 = *a1;
  v19 = v14;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v20);
  v15 = *a1[1];
  v16 = a1[2] + 40;
  v18 = *a1;
  v19 = v16;
  v20 = &v18;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v15 + 280), &v20);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,7u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,7u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 7)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v12 = a3 + 40;
      v13 = a3 + 48;
      v6.__vftable = &v14;
      v6.__imp_.__imp_ = &v7;
      v15 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v15);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 7U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v14;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,7u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>)#1}>(&v7, &v6);
  return v14;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E338E5C(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E339208(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E3395C4(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779BFLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,7u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v20 = v4;
  v21 = v6;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v22);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v20 = *a1;
  v21 = v8;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v22);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v20 = *a1;
  v21 = v10;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v22);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v20 = *a1;
  v21 = v12;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v22);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v20 = *a1;
  v21 = v14;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v22);
  v15 = *a1[1];
  v16 = a1[2] + 40;
  v20 = *a1;
  v21 = v16;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v15 + 280), &v22);
  v17 = *a1[1];
  v18 = a1[2] + 48;
  v20 = *a1;
  v21 = v18;
  v22 = &v20;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v17 + 336), &v22);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,8u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,8u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 8)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v12 = a3 + 40;
      v13 = a3 + 48;
      v14 = a3 + 56;
      v6.__vftable = &v15;
      v6.__imp_.__imp_ = &v7;
      v16 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v16);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 8U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v15;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,8u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>)#1}>(&v7, &v6);
  return v15;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E339CF0(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33A09C(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33A458(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E3779E7 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,8u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v22 = v4;
  v23 = v6;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v24);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v22 = *a1;
  v23 = v8;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v24);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v22 = *a1;
  v23 = v10;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v24);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v22 = *a1;
  v23 = v12;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v24);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v22 = *a1;
  v23 = v14;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v24);
  v15 = *a1[1];
  v16 = a1[2] + 40;
  v22 = *a1;
  v23 = v16;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v15 + 280), &v24);
  v17 = *a1[1];
  v18 = a1[2] + 48;
  v22 = *a1;
  v23 = v18;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v17 + 336), &v24);
  v19 = *a1[1];
  v20 = a1[2] + 56;
  v22 = *a1;
  v23 = v20;
  v24 = &v22;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v19 + 392), &v24);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,9u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,9u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 9)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v12 = a3 + 40;
      v13 = a3 + 48;
      v14 = a3 + 56;
      v15 = a3 + 64;
      v6.__vftable = &v16;
      v6.__imp_.__imp_ = &v7;
      v17 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v17);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 9U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v16;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,9u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>)#1}>(&v7, &v6);
  return v16;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E33ABB0(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_SA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33AF5C(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_SC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33B318(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_SD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A12 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,9u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v24 = v4;
  v25 = v6;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v26);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v24 = *a1;
  v25 = v8;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v26);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v24 = *a1;
  v25 = v10;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v26);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v24 = *a1;
  v25 = v12;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v26);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v24 = *a1;
  v25 = v14;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v26);
  v15 = *a1[1];
  v16 = a1[2] + 40;
  v24 = *a1;
  v25 = v16;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v15 + 280), &v26);
  v17 = *a1[1];
  v18 = a1[2] + 48;
  v24 = *a1;
  v25 = v18;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v17 + 336), &v26);
  v19 = *a1[1];
  v20 = a1[2] + 56;
  v24 = *a1;
  v25 = v20;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v19 + 392), &v26);
  v21 = *a1[1];
  v22 = a1[2] + 64;
  v24 = *a1;
  v25 = v22;
  v26 = &v24;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v21 + 448), &v26);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,10u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,10u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 10)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v12 = a3 + 40;
      v13 = a3 + 48;
      v14 = a3 + 56;
      v15 = a3 + 64;
      v16 = a3 + 72;
      v6.__vftable = &v17;
      v6.__imp_.__imp_ = &v7;
      v18 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v18);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 10U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double, double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v17;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,std::integral_constant<unsigned long,9ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,10u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,std::integral_constant<unsigned long,9ul>)#1}>(&v7, &v6);
  return v17;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E33BA98(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_SA_SA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33BE44(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_SC_SC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33C200(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_SD_SD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377A40 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,std::integral_constant<unsigned long,9ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,10u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,std::integral_constant<unsigned long,6ul>,std::integral_constant<unsigned long,7ul>,std::integral_constant<unsigned long,8ul>,std::integral_constant<unsigned long,9ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v26 = v4;
  v27 = v6;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v28);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v26 = *a1;
  v27 = v8;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v28);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v26 = *a1;
  v27 = v10;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v28);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v26 = *a1;
  v27 = v12;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v28);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v26 = *a1;
  v27 = v14;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v28);
  v15 = *a1[1];
  v16 = a1[2] + 40;
  v26 = *a1;
  v27 = v16;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v15 + 280), &v28);
  v17 = *a1[1];
  v18 = a1[2] + 48;
  v26 = *a1;
  v27 = v18;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v17 + 336), &v28);
  v19 = *a1[1];
  v20 = a1[2] + 56;
  v26 = *a1;
  v27 = v20;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v19 + 392), &v28);
  v21 = *a1[1];
  v22 = a1[2] + 64;
  v26 = *a1;
  v27 = v22;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v21 + 448), &v28);
  v23 = *a1[1];
  v24 = a1[2] + 72;
  v26 = *a1;
  v27 = v24;
  v28 = &v26;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v23 + 504), &v28);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant(uint64_t a1, uint64_t a2)
{
  v9 = a1 + 8;
  v4 = *a2;
  v3 = a2 + 8;
  switch(v4 ^ (v4 >> 31))
  {
    case 0:
      *(a1 + 8) = *(a2 + 8);
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v6 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v6;
      }

      *(a1 + 40) = *(a2 + 40);
      break;
    case 1:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
      if (*(a2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
      }

      else
      {
        v7 = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 32) = v7;
      }

      break;
    case 2:
      boost::detail::variant::copy_into::internal_visit<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(&v9, v3);
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_25E33C838(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void boost::detail::variant::copy_into::internal_visit<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  v3[8] = *(a2 + 32);
}

uint64_t boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::regular(uint64_t result, int a2, __int128 *a3, double a4, double a5)
{
  *result = a2;
  v5 = *a3;
  *(result + 24) = *(a3 + 2);
  *(result + 8) = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v6 = a5 - a4;
  *(result + 32) = a4;
  *(result + 40) = v6;
  if (!*result)
  {
    std::logic_error::logic_error(&v10, "bins > 0 required");
    v10.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/regular.hpp";
    v8 = "boost::histogram::axis::regular<>::regular(transform_type, unsigned int, value_type, value_type, metadata_type) [Value = double, Transform = boost::use_default, MetaData = boost::use_default, Options = boost::use_default]";
    v9 = 158;
    boost::throw_exception<std::invalid_argument>(&v10, &v7);
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    std::logic_error::logic_error(&v10, "forward transform of start or stop invalid");
    v10.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/regular.hpp";
    v8 = "boost::histogram::axis::regular<>::regular(transform_type, unsigned int, value_type, value_type, metadata_type) [Value = double, Transform = boost::use_default, MetaData = boost::use_default, Options = boost::use_default]";
    v9 = 161;
    boost::throw_exception<std::invalid_argument>(&v10, &v7);
  }

  if (v6 == 0.0)
  {
    std::logic_error::logic_error(&v10, "range of axis is zero");
    v10.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/regular.hpp";
    v8 = "boost::histogram::axis::regular<>::regular(transform_type, unsigned int, value_type, value_type, metadata_type) [Value = double, Transform = boost::use_default, MetaData = boost::use_default, Options = boost::use_default]";
    v9 = 163;
    boost::throw_exception<std::invalid_argument>(&v10, &v7);
  }

  return result;
}

void sub_25E33CA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x25F8B01A0](va);
  if (*(v5 + 31) < 0)
  {
    operator delete(*(v5 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::variable<std::__wrap_iter<double const*>,boost::histogram::detail::requires_iterator<std::__wrap_iter<double const*>,void>>(uint64_t a1, void *a2, double *a3, __int128 *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a4;
  *(a1 + 40) = *(a4 + 2);
  *(a1 + 24) = v6;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v7 = (a3 - a2) >> 3;
  if (v7 <= 1)
  {
    std::logic_error::logic_error(&v34, "bins > 0 required");
    v34.__vftable = (MEMORY[0x277D828F8] + 16);
    v31 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/variable.hpp";
    v32 = "boost::histogram::axis::variable<>::variable(It, It, metadata_type, allocator_type) [Value = double, MetaData = boost::use_default, Options = boost::use_default, Allocator = std::allocator<double>, It = std::__wrap_iter<const double *>]";
    v33 = 68;
    boost::throw_exception<std::invalid_argument>(&v34, &v31);
  }

  std::vector<double>::reserve(a1, v7);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v10 >= v9)
  {
    v12 = *a1;
    v13 = v10 - *a1;
    v14 = v13 >> 3;
    v15 = (v13 >> 3) + 1;
    if (v15 >> 61)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFF8;
    v18 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v18);
    }

    *(8 * v14) = *a2;
    v11 = (8 * v14 + 8);
    memcpy(0, v12, v13);
    v19 = *a1;
    *a1 = 0;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = *a2;
    v11 = (v10 + 1);
  }

  v20 = (a2 + 1);
  *(a1 + 8) = v11;
  if (a2 + 1 != a3)
  {
    do
    {
      v21 = *v20;
      if (*v20 <= *(v11 - 1))
      {
        std::logic_error::logic_error(&v34, "input sequence must be strictly ascending");
        v34.__vftable = (MEMORY[0x277D828F8] + 16);
        v31 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/variable.hpp";
        v32 = "boost::histogram::axis::variable<>::variable(It, It, metadata_type, allocator_type) [Value = double, MetaData = boost::use_default, Options = boost::use_default, Allocator = std::allocator<double>, It = std::__wrap_iter<const double *>]";
        v33 = 76;
        boost::throw_exception<std::invalid_argument>(&v34, &v31);
      }

      v22 = *(a1 + 16);
      if (v11 >= v22)
      {
        v23 = *a1;
        v24 = v11 - *a1;
        v25 = v24 >> 3;
        v26 = (v24 >> 3) + 1;
        if (v26 >> 61)
        {
          std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
        }

        v27 = v22 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v28);
        }

        *(8 * v25) = v21;
        v11 = (8 * v25 + 8);
        memcpy(0, v23, v24);
        v29 = *a1;
        *a1 = 0;
        *(a1 + 8) = v11;
        *(a1 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v11++ = v21;
      }

      ++v20;
      *(a1 + 8) = v11;
    }

    while (v20 != a3);
  }

  return a1;
}

void sub_25E33CD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x25F8B01A0](va);
  boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::~variable(v5);
  _Unwind_Resume(a1);
}

uint64_t std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = *a2;
  *(v7 + 24) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(v7 + 48) = *(a2 + 40);
  *(v7 + 32) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *v7 = 1;
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(&v15);
  return v14;
}

void sub_25E33CF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

__n128 boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>::integer(uint64_t a1, int a2, int a3, __n128 *a4)
{
  *a1 = a3 - a2;
  result = *a4;
  *(a1 + 24) = a4[1].n128_u64[0];
  *(a1 + 8) = result;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  *(a1 + 32) = a2;
  if (a3 <= a2)
  {
    std::logic_error::logic_error(&v6, "bins > 0 required");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v5[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/integer.hpp";
    v5[1] = "boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>::integer(value_type, value_type, metadata_type) [Value = int, MetaData = boost::use_default, Options = boost::histogram::axis::option::bit<1>]";
    v5[2] = 64;
    boost::throw_exception<std::invalid_argument>(&v6, v5);
  }

  return result;
}

uint64_t std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *(v7 + 8) = *a2;
  v8 = *(a2 + 8);
  *(v7 + 32) = *(a2 + 24);
  *(v7 + 16) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 40) = *(a2 + 32);
  *v7 = 2;
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(&v15);
  return v14;
}

void sub_25E33D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *(v7 + 8) = *a2;
  v8 = *(a2 + 8);
  *(v7 + 32) = *(a2 + 24);
  *(v7 + 16) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 40) = *(a2 + 32);
  *v7 = 0;
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(&v15);
  return v14;
}

void sub_25E33D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<pps::AxisEnum>::__assign_with_size[abi:ne200100]<pps::AxisEnum*,pps::AxisEnum*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<pps::AxisEnum>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<pps::AxisEnum>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a1, a2);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t **std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,std::vector<std::string>>,std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          std::pair<int &,std::vector<std::string> &>::operator=[abi:ne200100]<int const,std::vector<std::string>,0>(v15, (v9 + 4));
          std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_multi<std::pair<int const,std::vector<std::string>> const&>();
  }

  return result;
}

void sub_25E33D8A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::pair<int &,std::vector<std::string> &>::operator=[abi:ne200100]<int const,std::vector<std::string>,0>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != (a2 + 8))
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v3, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  return a1;
}

void *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_25E33DB48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

int *boost::histogram::detail::axes_equal<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(int **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    v6 = v4;
    v7 = &v6;
    result = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EEeqIJS5_SA_SF_EEEbRKNSL_IJDpT_EEEEUlRKT_E_RKSG_EEEENST_11result_typeERST_(v2, &v7);
    if (!result)
    {
      break;
    }

    v2 += 14;
    v4 += 56;
  }

  while (v2 != v3);
  return result;
}

uint64_t boost::histogram::unlimited_storage<std::allocator<char>>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = a2;
  return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_eqERKS5_EUlPKT_E_JEEEDcOSA_DpOT0_(a1, &v3);
}

int *_ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EEeqIJS5_SA_SF_EEEbRKNSL_IJDpT_EEEEUlRKT_E_RKSG_EEEENST_11result_typeERST_(int *a1, int ***a2)
{
  v2 = (a1 + 2);
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:

      result = _ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEEeqIJS8_SD_SI_EEEbRKNS5_IJDpT_EEEEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKS8_EEbOSQ_(a2, v2);
      break;
    case 1:

      result = _ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEEeqIJS8_SD_SI_EEEbRKNS5_IJDpT_EEEEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKSD_EEbOSQ_(a2, v2);
      break;
    case 2:
      v4 = **a2;

      result = boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::operator==<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(v4, v2);
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

int *_ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEEeqIJS8_SD_SI_EEEbRKNS5_IJDpT_EEEEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKS8_EEbOSQ_(int ***a1, uint64_t a2)
{
  result = boost::histogram::axis::get_if<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(**a1);
  if (result)
  {

    return boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::operator==<double,boost::use_default,boost::use_default,boost::use_default>(result, a2);
  }

  return result;
}

int *boost::histogram::axis::get_if<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(int *result)
{
  if (result)
  {
    return boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default> const>>(result);
  }

  return result;
}

_DWORD *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default> const>>(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

BOOL boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::operator==<double,boost::use_default,boost::use_default,boost::use_default>(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = boost::histogram::detail::relaxed_equal<std::string>((a1 + 8), (a2 + 8));
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

BOOL _ZN5boost9histogram6detail9static_ifINSt3__117integral_constantIbLb1EEEJZNS1_13relaxed_equalINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEbRKT_SF_EUlSF_RKT0_E_ZNS6_ISC_EEbSF_SF_EUlSF_SI_E0_RKSC_SM_EEEDcDpOT0_(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v4 = *(a3 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a3[1];
  }

  v6 = *(a4 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a4[1];
  }

  if (v4 != v6)
  {
    return 0;
  }

  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  return memcmp(v8, v9, v4) == 0;
}

int *_ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEEeqIJS8_SD_SI_EEEbRKNS5_IJDpT_EEEEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKSD_EEbOSQ_(int ***a1, uint64_t a2)
{
  result = boost::histogram::axis::get_if<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(**a1);
  if (result)
  {

    return boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::operator==<double,boost::use_default,boost::use_default,std::allocator<double>>(result, a2);
  }

  return result;
}

int *boost::histogram::axis::get_if<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(int *result)
{
  if (result)
  {
    return boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>> const>>(result);
  }

  return result;
}

_DWORD *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>> const>>(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return v1;
}

BOOL boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::operator==<double,boost::use_default,boost::use_default,std::allocator<double>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 - *a1 == v5 - *a2)
  {
    if (v2 == v3 || v4 == v5)
    {
LABEL_7:
      if (v2 == v3 && v4 == v5)
      {
        return boost::histogram::detail::relaxed_equal<std::string>((a1 + 24), (a2 + 24));
      }
    }

    else
    {
      while (*v2 == *v4)
      {
        ++v2;
        ++v4;
        if (v2 == v3 || v4 == v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

int *boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::operator==<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(int *a1, uint64_t a2)
{
  result = boost::histogram::axis::get_if<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(a1);
  if (result)
  {
    v4 = result;
    if (*result == *a2)
    {
      result = boost::histogram::detail::relaxed_equal<std::string>(result + 1, (a2 + 8));
      if (result)
      {
        return (v4[8] == *(a2 + 32));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int *boost::histogram::axis::get_if<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(int *result)
{
  if (result)
  {
    return boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>> const>>(result);
  }

  return result;
}

int *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>> const>>(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 != 2)
  {
    boost::detail::variant::forced_return<void>();
  }

  return a1 + 2;
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_eqERKS5_EUlPKT_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a2;
  if (v2 <= 1)
  {
    v6 = v3;
    v7 = v4;
    if (v2)
    {
      return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clItEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
    }

    else
    {
      return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIhEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
    }
  }

  else if (v2 == 2)
  {
    v6 = v3;
    v7 = v4;
    return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIjEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
  }

  else if (v2 == 3)
  {
    v6 = v3;
    v7 = v4;
    return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIyEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    if (v2 == 4)
    {
      return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clINS0_6detail6mp_intINS3_IyEEEEEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
    }

    else
    {
      return _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIdEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(v4, &v6);
    }
  }
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIhEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_44:
        if (!v4)
        {
          return 1;
        }

        v33 = *(a1 + 24);
        v34 = v4 - 1;
        do
        {
          v35 = *v33++;
          v36 = v35;
          v37 = v35 >= 0.0;
          LODWORD(v35) = *v3++;
          result = v36 == LODWORD(v35) && v37;
        }

        while (result == 1 && v34-- != 0);
        return result;
      }

      if (!v4)
      {
        return 1;
      }

      v9 = *(a1 + 24);
      v10 = v4 - 1;
      do
      {
        v12 = *v3++;
        v11 = v12;
        v13 = *v9++;
        result = v13 == v11;
      }

      while (v13 == v11 && v10-- != 0);
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v27 = *(a1 + 24);
      v28 = v4 - 1;
      do
      {
        v30 = *v3++;
        v29 = v30;
        v31 = *v27++;
        result = v29 == v31;
      }

      while (v29 == v31 && v28-- != 0);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (!v4)
        {
          return 1;
        }

        v15 = *(a1 + 24);
        v16 = v4 - 1;
        do
        {
          v18 = *v3++;
          v17 = v18;
          v19 = *v15++;
          result = v19 == v17;
        }

        while (v19 == v17 && v16-- != 0);
        break;
      case 3u:
        if (!v4)
        {
          return 1;
        }

        v21 = *(a1 + 24);
        v22 = v4 - 1;
        do
        {
          v24 = *v3++;
          v23 = v24;
          v25 = *v21++;
          result = v25 == v23;
        }

        while (v25 == v23 && v22-- != 0);
        break;
      case 4u:
        if (v4)
        {
          v5 = *(a1 + 24);
          v6 = v4 - 1;
          do
          {
            result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned char>(v5, v3);
            if (!result)
            {
              break;
            }

            ++v3;
            v5 += 3;
          }

          while (v6--);
          return result;
        }

        return 1;
      default:
        goto LABEL_44;
    }
  }

  return result;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned char>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1] - *a1;
  if (!v2)
  {
    __assert_rtn("operator==", "unlimited_storage.hpp", 280, "data.size() > 0u");
  }

  return v2 == 8 && **a1 == *a2;
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clItEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_44:
        if (!v4)
        {
          return 1;
        }

        v33 = *(a1 + 24);
        v34 = 2 * v4 - 2;
        do
        {
          v35 = *v33++;
          v36 = v35;
          v37 = v35 >= 0.0;
          LODWORD(v35) = *v3++;
          result = v36 == LODWORD(v35) && v37;
          v38 = result != 1 || v34 == 0;
          v34 -= 2;
        }

        while (!v38);
        return result;
      }

      if (!v4)
      {
        return 1;
      }

      v9 = *(a1 + 24);
      v10 = 2 * v4 - 2;
      do
      {
        v12 = *v3++;
        v11 = v12;
        v13 = *v9++;
        result = v11 == v13;
        v14 = v11 != v13 || v10 == 0;
        v10 -= 2;
      }

      while (!v14);
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v27 = *(a1 + 24);
      v28 = 2 * v4 - 2;
      do
      {
        v30 = *v3++;
        v29 = v30;
        v31 = *v27++;
        result = v29 == v31;
        v32 = v29 != v31 || v28 == 0;
        v28 -= 2;
      }

      while (!v32);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (!v4)
        {
          return 1;
        }

        v15 = *(a1 + 24);
        v16 = 2 * v4 - 2;
        do
        {
          v18 = *v3++;
          v17 = v18;
          v19 = *v15++;
          result = v19 == v17;
          v20 = v19 != v17 || v16 == 0;
          v16 -= 2;
        }

        while (!v20);
        break;
      case 3u:
        if (!v4)
        {
          return 1;
        }

        v21 = *(a1 + 24);
        v22 = 2 * v4 - 2;
        do
        {
          v24 = *v3++;
          v23 = v24;
          v25 = *v21++;
          result = v25 == v23;
          v26 = v25 != v23 || v22 == 0;
          v22 -= 2;
        }

        while (!v26);
        break;
      case 4u:
        if (v4)
        {
          v5 = *(a1 + 24);
          v6 = 2 * v4 - 2;
          do
          {
            result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned short>(v5, v3);
            if (!result)
            {
              break;
            }

            ++v3;
            v5 += 3;
            v8 = v6;
            v6 -= 2;
          }

          while (v8);
          return result;
        }

        return 1;
      default:
        goto LABEL_44;
    }
  }

  return result;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned short>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1] - *a1;
  if (!v2)
  {
    __assert_rtn("operator==", "unlimited_storage.hpp", 280, "data.size() > 0u");
  }

  return v2 == 8 && **a1 == *a2;
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIjEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_44:
        if (!v4)
        {
          return 1;
        }

        v33 = *(a1 + 24);
        v34 = 4 * v4 - 4;
        do
        {
          v35 = *v33++;
          v36 = v35;
          v37 = v35 >= 0.0;
          LODWORD(v35) = *v3++;
          result = v36 == LODWORD(v35) && v37;
          v38 = result != 1 || v34 == 0;
          v34 -= 4;
        }

        while (!v38);
        return result;
      }

      if (!v4)
      {
        return 1;
      }

      v9 = *(a1 + 24);
      v10 = 4 * v4 - 4;
      do
      {
        v12 = *v3++;
        v11 = v12;
        v13 = *v9++;
        result = v11 == v13;
        v14 = v11 != v13 || v10 == 0;
        v10 -= 4;
      }

      while (!v14);
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v27 = *(a1 + 24);
      v28 = 4 * v4 - 4;
      do
      {
        v30 = *v3++;
        v29 = v30;
        v31 = *v27++;
        result = v29 == v31;
        v32 = v29 != v31 || v28 == 0;
        v28 -= 4;
      }

      while (!v32);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (!v4)
        {
          return 1;
        }

        v15 = *(a1 + 24);
        v16 = 4 * v4 - 4;
        do
        {
          v18 = *v3++;
          v17 = v18;
          v19 = *v15++;
          result = v17 == v19;
          v20 = v17 != v19 || v16 == 0;
          v16 -= 4;
        }

        while (!v20);
        break;
      case 3u:
        if (!v4)
        {
          return 1;
        }

        v21 = *(a1 + 24);
        v22 = 4 * v4 - 4;
        do
        {
          v24 = *v3++;
          v23 = v24;
          v25 = *v21++;
          result = v25 == v23;
          v26 = v25 != v23 || v22 == 0;
          v22 -= 4;
        }

        while (!v26);
        break;
      case 4u:
        if (v4)
        {
          v5 = *(a1 + 24);
          v6 = 4 * v4 - 4;
          do
          {
            result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned int>(v5, v3);
            if (!result)
            {
              break;
            }

            ++v3;
            v5 += 3;
            v8 = v6;
            v6 -= 4;
          }

          while (v8);
          return result;
        }

        return 1;
      default:
        goto LABEL_44;
    }
  }

  return result;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1] - *a1;
  if (!v2)
  {
    __assert_rtn("operator==", "unlimited_storage.hpp", 280, "data.size() > 0u");
  }

  return v2 == 8 && **a1 == *a2;
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIyEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_44:
        if (!v4)
        {
          return 1;
        }

        v30 = *(a1 + 24);
        v31 = 8 * v4 - 8;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = v32 >= 0.0;
          v35 = *v3++;
          result = v33 == v35 && v34;
          v36 = result != 1 || v31 == 0;
          v31 -= 8;
        }

        while (!v36);
        return result;
      }

      if (!v4)
      {
        return 1;
      }

      v9 = *(a1 + 24);
      v10 = 8 * v4 - 8;
      do
      {
        v12 = *v3++;
        v11 = v12;
        LODWORD(v12) = *v9++;
        result = v11 == v12;
        v13 = v11 != v12 || v10 == 0;
        v10 -= 8;
      }

      while (!v13);
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v25 = *(a1 + 24);
      v26 = 8 * v4 - 8;
      do
      {
        v28 = *v3++;
        v27 = v28;
        LODWORD(v28) = *v25++;
        result = v27 == v28;
        v29 = v27 != v28 || v26 == 0;
        v26 -= 8;
      }

      while (!v29);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (!v4)
        {
          return 1;
        }

        v14 = *(a1 + 24);
        v15 = 8 * v4 - 8;
        do
        {
          v17 = *v3++;
          v16 = v17;
          LODWORD(v17) = *v14++;
          result = v16 == v17;
          v18 = v16 != v17 || v15 == 0;
          v15 -= 8;
        }

        while (!v18);
        break;
      case 3u:
        if (!v4)
        {
          return 1;
        }

        v19 = *(a1 + 24);
        v20 = 8 * v4 - 8;
        do
        {
          v22 = *v3++;
          v21 = v22;
          v23 = *v19++;
          result = v21 == v23;
          v24 = v21 != v23 || v20 == 0;
          v20 -= 8;
        }

        while (!v24);
        break;
      case 4u:
        if (v4)
        {
          v5 = *(a1 + 24);
          v6 = 8 * v4 - 8;
          do
          {
            result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned long long>(v5, v3);
            if (!result)
            {
              break;
            }

            ++v3;
            v5 += 3;
            v8 = v6;
            v6 -= 8;
          }

          while (v8);
          return result;
        }

        return 1;
      default:
        goto LABEL_44;
    }
  }

  return result;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned long long>(void *a1, void *a2)
{
  v2 = a1[1] - *a1;
  if (!v2)
  {
    __assert_rtn("operator==", "unlimited_storage.hpp", 280, "data.size() > 0u");
  }

  return v2 == 8 && **a1 == *a2;
}

BOOL _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clINS0_6detail6mp_intINS3_IyEEEEEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_32:
        if (!v4)
        {
          return 1;
        }

        v21 = *(a1 + 24);
        v22 = 24 * v4 - 24;
        while (*v21 >= 0.0)
        {
          v24 = *v21;
          result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<double>(v3, &v24);
          if (result)
          {
            v3 += 3;
            ++v21;
            v23 = v22;
            v22 -= 24;
            if (v23)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      if (!v4)
      {
        return 1;
      }

      v9 = *(a1 + 24);
      v10 = 24 * v4 - 24;
      do
      {
        result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned short>(v3, v9);
        if (!result)
        {
          break;
        }

        v3 += 3;
        ++v9;
        v11 = v10;
        v10 -= 24;
      }

      while (v11);
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v18 = *(a1 + 24);
      v19 = 24 * v4 - 24;
      do
      {
        result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned char>(v3, v18);
        if (!result)
        {
          break;
        }

        v3 += 3;
        ++v18;
        v20 = v19;
        v19 -= 24;
      }

      while (v20);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (!v4)
        {
          return 1;
        }

        v12 = *(a1 + 24);
        v13 = 24 * v4 - 24;
        do
        {
          result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned int>(v3, v12);
          if (!result)
          {
            break;
          }

          v3 += 3;
          ++v12;
          v14 = v13;
          v13 -= 24;
        }

        while (v14);
        break;
      case 3u:
        if (!v4)
        {
          return 1;
        }

        v15 = *(a1 + 24);
        v16 = 24 * v4 - 24;
        do
        {
          result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<unsigned long long>(v3, v15);
          if (!result)
          {
            break;
          }

          v3 += 3;
          ++v15;
          v17 = v16;
          v16 -= 24;
        }

        while (v17);
        break;
      case 4u:
        if (v4)
        {
          v5 = *(a1 + 24);
          v6 = 24 * v4 - 24;
          do
          {
            result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==(v3, v5);
            if (!result)
            {
              break;
            }

            v3 += 3;
            v5 += 24;
            v8 = v6;
            v6 -= 24;
          }

          while (v8);
          return result;
        }

        return 1;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  if (v3 == v2)
  {
    v11 = "data.size() > 0u";
    v12 = 245;
    goto LABEL_15;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = v7 - v6;
  if (v7 == v6)
  {
    v11 = "o.data.size() > 0u";
    v12 = 246;
    goto LABEL_15;
  }

  if (v5 != 8 && !*(v3 - 1))
  {
    v11 = "data.size() == 1 || data.back() > 0u";
    v12 = 248;
    goto LABEL_15;
  }

  if (v9 != 8 && !*(v7 - 1))
  {
    v11 = "o.data.size() == 1 || o.data.back() > 0u";
    v12 = 249;
LABEL_15:
    __assert_rtn("operator==", "unlimited_storage.hpp", v12, v11);
  }

  return v5 == v9 && memcmp(v2, v6, v5) == 0;
}

BOOL boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<double>(void *a1, double *a2)
{
  if (a1[1] == *a1)
  {
    __assert_rtn("operator==", "unlimited_storage.hpp", 280, "data.size() > 0u");
  }

  v2 = *a2;
  return boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator double(a1) == v2;
}

double boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator double(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (!v2)
  {
    __assert_rtn("operator double", "unlimited_storage.hpp", 218, "data.size() > 0u");
  }

  v3 = v2 >> 3;
  v4 = *v1;
  if (v3 >= 2)
  {
    v5 = v3 - 1;
    v6 = v1 + 1;
    v7 = 64;
    do
    {
      v8 = *v6++;
      v4 = v4 + v8 * exp2(v7);
      v7 += 64;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZZNKS5_eqERKS5_ENKUlPKT_E_clIdEEDaSC_EUlSC_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(*(a2 + 8) + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_57:
        if (v4)
        {
          v34 = *(a1 + 24);
          v35 = 8 * v4 - 8;
          do
          {
            v36 = *v3++;
            v37 = v36;
            v38 = *v34++;
            result = v37 == v38;
            v39 = v37 != v38 || v35 == 0;
            v35 -= 8;
          }

          while (!v39);
          return result;
        }

        return 1;
      }

      if (v4)
      {
        v9 = *(a1 + 24);
        v10 = 8 * v4 - 8;
        do
        {
          v11 = *v3++;
          v12 = v11;
          v13 = v11 >= 0.0;
          LODWORD(v11) = *v9++;
          result = v12 == LODWORD(v11) && v13;
          v14 = result != 1 || v10 == 0;
          v10 -= 8;
        }

        while (!v14);
        return result;
      }
    }

    else if (v4)
    {
      v28 = *(a1 + 24);
      v29 = 8 * v4 - 8;
      do
      {
        v30 = *v3++;
        v31 = v30;
        v32 = v30 >= 0.0;
        LODWORD(v30) = *v28++;
        result = v31 == LODWORD(v30) && v32;
        v33 = result != 1 || v29 == 0;
        v29 -= 8;
      }

      while (!v33);
      return result;
    }

    return 1;
  }

  if (v2 == 2)
  {
    if (v4)
    {
      v15 = *(a1 + 24);
      v16 = 8 * v4 - 8;
      do
      {
        v17 = *v3++;
        v18 = v17;
        v19 = v17 >= 0.0;
        LODWORD(v17) = *v15++;
        result = v18 == LODWORD(v17) && v19;
        v20 = result != 1 || v16 == 0;
        v16 -= 8;
      }

      while (!v20);
      return result;
    }

    return 1;
  }

  if (v2 == 3)
  {
    if (v4)
    {
      v21 = *(a1 + 24);
      v22 = 8 * v4 - 8;
      do
      {
        v23 = *v3++;
        v24 = v23;
        v25 = v23 >= 0.0;
        v26 = *v21++;
        result = v24 == v26 && v25;
        v27 = result != 1 || v22 == 0;
        v22 -= 8;
      }

      while (!v27);
      return result;
    }

    return 1;
  }

  if (v2 != 4)
  {
    goto LABEL_57;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 24);
  v6 = 8 * v4 - 8;
  while (*v3 >= 0.0)
  {
    v40 = *v3;
    result = boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator==<double>(v5, &v40);
    if (result)
    {
      ++v3;
      v5 += 3;
      v8 = v6;
      v6 -= 8;
      if (v8)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *std::map<int,std::vector<std::string>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::vector<std::string>>,std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::vector<std::string>>,std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::vector<std::string>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::vector<std::string>> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__find_equal<int>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__construct_node<std::pair<int const,std::vector<std::string>> const&>();
  }

  return result;
}

uint64_t *boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::range_iterator::increment(uint64_t *result)
{
  v1 = result[2];
  v2 = v1 + 12;
  v3 = v1[12] + 1;
  v1[12] = v3;
  v4 = *result + 1;
  if (v3 == v1[14])
  {
    v5 = 0xFFFFFFFB6DB6DB70 * ((*(*v1 + 8) - **v1) >> 3) - 16;
    v6 = 1;
    do
    {
      if (!v5)
      {
        break;
      }

      v7 = v2[1];
      *v2 = v7;
      v8 = v4 - v6 * (v3 - v7);
      v6 *= v2[3];
      v9 = v2[6];
      v10 = v2[4];
      v2 += 4;
      v3 = v10 + 1;
      *v2 = v10 + 1;
      v4 = v6 + v8;
      v5 -= 16;
    }

    while (v10 + 1 == v9);
  }

  *result = v4;
  return result;
}

double _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(*a2 + 8);
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2u:
        LODWORD(a3) = *(v4 + 4 * v5);
        break;
      case 3u:
        a3 = *(v4 + 8 * v5);
        break;
      case 4u:
        return boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator double(v4 + 24 * v5);
      default:
        return *(v4 + 8 * v5);
    }

    return *&a3;
  }

  if (!*(a1 + 16))
  {
    LOBYTE(a3) = *(v4 + v5);
    return *&a3;
  }

  if (v3 == 1)
  {
    LOWORD(a3) = *(v4 + 2 * v5);
    return *&a3;
  }

  return *(v4 + 8 * v5);
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::result_wrapper1<int boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::index<double>(double const&)::{lambda(double const&)#1},boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>> const&>>(uint64_t a1, double ***a2)
{
  v4 = *a1;
  v3 = (a1 + 8);
  switch(v4 ^ (v4 >> 31))
  {
    case 0:
      v5 = (***a2 - *(a1 + 40)) / *(a1 + 48);
      if (v5 >= 1.0)
      {
        result = *v3;
      }

      else if (v5 >= 0.0)
      {
        result = (v5 * *v3);
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
    case 1:
      v7 = ***a2;

      result = boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::index(v3, v7);
      break;
    case 2:
      v8 = ***a2;
      v9 = *(a1 + 40);
      v10 = v8 - v9;
      v11 = *(a1 + 8);
      if (v8 < v9)
      {
        v12 = -1;
      }

      else
      {
        v12 = v8 - v9;
      }

      if (v10 >= v11)
      {
        result = v11;
      }

      else
      {
        result = v12;
      }

      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

uint64_t _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(uint64_t a1)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
      result = *(a1 + 8);
      break;
    case 1:
      result = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25E33F3A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PPSValidateIntervalStart(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5[2](v5, v6, v7);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void PPSAddInterval(PPSTimeIntervalSet *a1, double a2, double a3, NSDictionary *a4)
{
  v9 = a1;
  v7 = a4;
  v8 = [[PPSTimeInterval alloc] initWithStartTimestamp:v7 endTimestamp:a2 payload:a3];
  if (v8)
  {
    [(PPSTimeIntervalSet *)v9 addTimeInterval:v8];
  }
}

uint64_t AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47[0] & 0x7F) << v5;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 7)
      {
        break;
      }

      if (v13 != 8)
      {
        if (v13 == 15)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v47[0] & 0x7F) << v38;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v40;
          }

LABEL_79:
          v44 = 40;
          goto LABEL_80;
        }

        if (v13 == 16)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v47[0] & 0x7F) << v21;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_75;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 44) = v27;
          goto LABEL_81;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
      }

      v35 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity);
      [a1 addRxTxAct:v35];
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivityReadFrom(v35, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v47[0] & 0x7F) << v28;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_69:
        *(a1 + 8) = v34;
        goto LABEL_81;
      case 3:
        v36 = PBReaderReadData();
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;

        goto LABEL_81;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47[0] & 0x7F) << v14;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_73:
        v44 = 16;
LABEL_80:
        *(a1 + v44) = v20;
        goto LABEL_81;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v41 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v33;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__actState;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__actState;
          goto LABEL_64;
        }

        if (v13 == 7)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v44 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v23;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__count;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__count;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v43 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v28;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__ratDpl;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__ratDpl;
          goto LABEL_64;
        }

        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v42 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v14;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__caState;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__caState;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_25E347EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_25E34983C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E349CEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _stringEscapingSpecialCharactersForLikePredicate(NSString *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = [(NSString *)v1 length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZL48_stringEscapingSpecialCharactersForLikePredicateP8NSString_block_invoke;
  v6[3] = &unk_279A11708;
  v4 = v2;
  v7 = v4;
  [(NSString *)v1 enumerateSubstringsInRange:0 options:v3 usingBlock:2, v6];

  return v4;
}

void sub_25E34BFA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E34C660(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL48_stringEscapingSpecialCharactersForLikePredicateP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isEqualToString:@"~"])
  {
    [*(a1 + 32) appendString:@"~"];
    [*(a1 + 32) appendString:@"~"];
  }

  else
  {
    if (([v5 isEqualToString:@"%"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"_"))
    {
      v4 = *(a1 + 32);
      v3 = (a1 + 32);
      [v4 appendString:@"~"];
    }

    else
    {
      v3 = (a1 + 32);
    }

    [*v3 appendString:v5];
  }
}

void ___ZL43_stringEscapingGlobPatternsForLikePredicateP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (([v3 isEqualToString:@"%"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"_"))
    {
      [*(a1 + 32) appendString:@"~"];
    }

    [*(a1 + 32) appendString:v12];
    v4 = 0;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"\"])
  {
    v4 = 1;
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = v4;
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"*"])
  {
    v5 = (a1 + 32);
LABEL_11:
    v6 = @"%";
LABEL_17:
    [*v5 appendString:v6];
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"?"])
  {
    v5 = (a1 + 32);
LABEL_14:
    v6 = @"_";
    goto LABEL_17;
  }

  if ([v12 isEqualToString:@"~"])
  {
    v7 = *(a1 + 32);
    v5 = (a1 + 32);
    v6 = @"~";
    [v7 appendString:@"~"];
    goto LABEL_17;
  }

  if ([v12 isEqualToString:@"%"])
  {
    v8 = *(a1 + 32);
    v5 = (a1 + 32);
    [v8 appendString:@"~"];
    goto LABEL_11;
  }

  v9 = [v12 isEqualToString:@"_"];
  v11 = *(a1 + 32);
  v5 = (a1 + 32);
  v10 = v11;
  if (v9)
  {
    [v10 appendString:@"~"];
    goto LABEL_14;
  }

  [v10 appendString:v12];
LABEL_18:
}

void sub_25E350C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  _Block_object_dispose((v19 - 96), 8);

  _Unwind_Resume(a1);
}

void *PPSSQLiteColumnValueAsNonEmptyString(sqlite3_stmt **a1, int a2)
{
  v2 = PPSSQLiteRow::columnValueAsString(a1, a2);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

const void *PPSSQLiteRow::columnValueAsBytes(sqlite3_stmt **this, int a2)
{
  if (sqlite3_column_type(this[1], *(this + 4) + a2) == 5)
  {
    return 0;
  }

  v5 = this[1];
  v6 = *(this + 4) + a2;

  return sqlite3_column_blob(v5, v6);
}

id PPSSQLiteRow::columnValueAsData(PPSSQLiteRow *this, int a2)
{
  if (sqlite3_column_type(*(this + 1), *(this + 4) + a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(this + 4);
    v6 = sqlite3_column_blob(*(this + 1), v5 + a2);
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v6 length:{sqlite3_column_bytes(*(this + 1), v5 + a2)}];
  }

  return v4;
}

id PPSSQLiteRow::columnValueAsDate(sqlite3_stmt **this, int a2)
{
  if (sqlite3_column_type(this[1], *(this + 4) + a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(this[1], *(this + 4) + a2)}];
  }

  return v4;
}

id PPSSQLiteRow::columnValueAsNumber(sqlite3_stmt **this, int a2)
{
  v4 = sqlite3_column_type(this[1], *(this + 4) + a2);
  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(this[1], *(this + 4) + a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(this[1], *(this + 4) + a2)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PPSSQLiteRow::columnValueAsFoundationType(sqlite3_stmt **this, int a2)
{
  v4 = sqlite3_column_type(this[1], *(this + 4) + a2);
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      v5 = PPSSQLiteRow::columnValueAsData(this, a2);
    }

    else if (v4 == 3)
    {
      v5 = PPSSQLiteRow::columnValueAsString(this, a2);
    }
  }

  else if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(this[1], *(this + 4) + a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(this[1], *(this + 4) + a2)}];
  }

  return v5;
}

uint64_t PPSSQLiteRow::indexOfColumn(PPSSQLiteRow *this, NSString *a2)
{
  v3 = a2;
  if ([*(this + 3) count] != *(this + 5))
  {
    v4 = objc_opt_new();
    if (*(this + 5) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sqlite3_column_name(*(this + 1), v5);
        v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        [v4 setObject:v7 forKeyedSubscript:v8];

        v5 = (v5 + 1);
      }

      while (v5 < *(this + 5));
    }

    v9 = [v4 copy];
    v10 = *(this + 3);
    *(this + 3) = v9;
  }

  v11 = [*(this + 3) objectForKey:v3];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 intValue] - *(this + 4);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  return v13;
}

BOOL PPSSQLiteColumnValueWithNameIsNull(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = sqlite3_column_type(*(a1 + 8), *(a1 + 16) + v4) == 5;

  return v5;
}

BOOL PPSSQLiteColumnValueWithNameAsBoolean(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = sqlite3_column_int(*(a1 + 8), *(a1 + 16) + v4) != 0;

  return v5;
}

uint64_t PPSSQLiteColumnValueWithNameAsInt(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = sqlite3_column_int(*(a1 + 8), *(a1 + 16) + v4);

  return v5;
}

sqlite3_int64 PPSSQLiteColumnValueWithNameAsInt64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = sqlite3_column_int64(*(a1 + 8), *(a1 + 16) + v4);

  return v5;
}

double PPSSQLiteColumnValueWithNameAsDouble(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = sqlite3_column_double(*(a1 + 8), *(a1 + 16) + v4);

  return v5;
}

id PPSSQLiteColumnValueWithNameAsString(PPSSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = PPSSQLiteRow::columnValueAsString(a1, v4);

  return v5;
}

void *PPSSQLiteColumnValueWithNameAsNonEmptyString(PPSSQLiteRow *a1, void *a2)
{
  v2 = PPSSQLiteColumnValueWithNameAsString(a1, a2);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id PPSSQLiteColumnValueWithNameAsData(PPSSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = PPSSQLiteRow::columnValueAsData(a1, v4);

  return v5;
}

id PPSSQLiteColumnValueWithNameAsDate(PPSSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = PPSSQLiteRow::columnValueAsDate(a1, v4);

  return v5;
}

id PPSSQLiteColumnValueWithNameAsNumber(PPSSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = PPSSQLiteRow::columnValueAsNumber(a1, v4);

  return v5;
}

id PPSSQLiteColumnValueWithNameAsFoundationType(PPSSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = PPSSQLiteRow::indexOfColumn(a1, v3);
  v5 = PPSSQLiteRow::columnValueAsFoundationType(a1, v4);

  return v5;
}

void sub_25E3534C8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,double> *>,std::__less<void,void>>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 1)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_25E35463C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u64[0] = a2[-1].n128_u64[0];
      v9 = a1->n128_f64[0];
      if (a7.n128_f64[0] < a1->n128_f64[0] || v9 >= a7.n128_f64[0] && a2[-1].n128_f64[1] < a1->n128_f64[1])
      {
        a1->n128_u64[0] = a7.n128_u64[0];
        a2[-1].n128_f64[0] = v9;
        a7.n128_u64[0] = a1->n128_u64[1];
        a1->n128_u64[1] = a2[-1].n128_u64[1];
        a2[-1].n128_u64[1] = a7.n128_u64[0];
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1->n128_f64, a2->n128_f64);
    }

    else
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        v18.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1, v15, a3, v16, a5, a7);
        v19 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14], v18);

        a7.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,double> *,std::pair<double,double> *,std::__wrap_iter<std::pair<double,double> *>>(a5->n128_f64, a5[v14].n128_f64, a5[v14].n128_f64, a5[a4].n128_f64, a1->n128_f64, v19);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_f64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1->n128_f64, a1[a4 >> 1].n128_f64, a2->n128_f64, a3, a4 >> 1, a4 - (a4 >> 1), a5->n128_f64, a6, v17);
      }
    }
  }

  return a7.n128_f64[0];
}

double *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(double *result, double *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *v2;
    v7 = *v5;
    if (*v2 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_17;
      }

      v8 = v5[3];
      if (v8 >= v5[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = v5[3];
    }

    *v2 = v7;
    v2[1] = v5[1];
    if (v5 == result)
    {
LABEL_13:
      v5 = result;
      goto LABEL_14;
    }

    v9 = v3;
    while (1)
    {
      v10 = *(result + v9 - 16);
      if (v6 >= v10)
      {
        break;
      }

      v11 = *(result + v9 - 8);
LABEL_12:
      v5 -= 2;
      v12 = (result + v9);
      *v12 = v10;
      v12[1] = v11;
      v9 -= 16;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    if (v10 < v6)
    {
      goto LABEL_14;
    }

    v11 = *(result + v9 - 8);
    if (v8 < v11)
    {
      goto LABEL_12;
    }

    v5 = (result + v9);
LABEL_14:
    *v5 = v6;
    v5[1] = v8;
LABEL_17:
    v2 = v4 + 2;
    v3 += 16;
  }

  while (v4 + 2 != a2);
  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      v11 = a2[-1].n128_f64[0];
      if (v11 < a1->n128_f64[0] || a1->n128_f64[0] >= v11 && a2[-1].n128_f64[1] < a1->n128_f64[1])
      {
        *a5 = *v10;
        a6 = *a1;
      }

      else
      {
        *a5 = *a1;
        a6 = *v10;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v13);
    }

    else
    {

      std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1->n128_f64, a2->n128_f64, a5->n128_f64);
    }
  }

  return a6.n128_f64[0];
}

double std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,double> *,std::pair<double,double> *,std::__wrap_iter<std::pair<double,double> *>>(double *a1, double *a2, double *a3, double *a4, double *a5, double result)
{
  while (1)
  {
    if (a1 == a2)
    {
      while (a3 != a4)
      {
        *a5 = *a3;
        result = a3[1];
        a5[1] = result;
        a3 += 2;
        a5 += 2;
      }

      return result;
    }

    if (a3 == a4)
    {
      break;
    }

    v6 = *a3;
    v7 = *a1;
    if (*a3 < *a1 || v7 >= v6 && a3[1] < a1[1])
    {
      *a5 = v6;
      result = a3[1];
      a5[1] = result;
      a3 += 2;
    }

    else
    {
      *a5 = v7;
      result = a1[1];
      a5[1] = result;
      a1 += 2;
    }

    a5 += 2;
  }

  if (a1 != a2)
  {
    v8 = 0;
    do
    {
      v9 = &a1[v8];
      v10 = &a5[v8];
      *v10 = a1[v8];
      result = a1[v8 + 1];
      v10[1] = result;
      v8 += 2;
    }

    while (v9 + 2 != a2);
  }

  return result;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(double *a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, double result)
{
  if (a6)
  {
    v9 = a8;
    v10 = a6;
    do
    {
      if (v10 <= v9 || a5 <= v9)
      {
        return std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(a1, a2, a3, result, a4, a5, v10, a7);
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      result = *a2;
      v15 = -a5;
      while (1)
      {
        v16 = a1[v14];
        if (result < v16 || v16 >= result && a2[1] < a1[v14 + 1])
        {
          break;
        }

        v14 += 2;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v18 = -v15;
      v38 = a3;
      v36 = &a1[v14];
      if (-v15 >= v10)
      {
        if (v15 == -1)
        {
          v35 = &a1[v14];
          *v35 = result;
          *a2 = v16;
          result = a1[v14 + 1];
          v35[1] = a2[1];
          a2[1] = result;
          return result;
        }

        v22 = v18 / 2;
        v23 = &a1[2 * (v18 / 2)];
        v20 = a2;
        if (a2 != a3)
        {
          v24 = (a3 - a2) >> 4;
          v25 = v23[v14];
          v20 = a2;
          do
          {
            v26 = v24 >> 1;
            v27 = &v20[2 * (v24 >> 1)];
            if (*v27 < v25 || v25 >= *v27 && v27[1] < v23[v14 + 1])
            {
              v20 = v27 + 2;
              v26 = v24 + ~v26;
            }

            v24 = v26;
          }

          while (v26);
        }

        v19 = (v20 - a2) >> 4;
        v21 = &v23[v14];
      }

      else
      {
        v19 = v10 / 2;
        v20 = &a2[2 * (v10 / 2)];
        v21 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>,std::pair<double,double>,std::__identity>(&a1[v14], a2, v20);
        v22 = (v21 - a1 - v14 * 8) >> 4;
      }

      v28 = v20;
      if (v21 != a2)
      {
        v28 = v21;
        if (a2 != v20)
        {
          v29 = v22;
          v30 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,double> *>>(v21, a2, v20);
          v22 = v29;
          v28 = v30;
        }
      }

      a5 = -v15 - v22;
      v31 = v19;
      v32 = v10 - v19;
      if (v22 + v31 >= v10 - (v22 + v31) - v15)
      {
        v34 = v22;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(v28, v20, v38, a4, -v15 - v22, v32, a7, a8);
        a1 = v36;
        v20 = v21;
        v9 = a8;
        v32 = v31;
        a5 = v34;
        a3 = v28;
      }

      else
      {
        v33 = v21;
        v9 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(&a1[v14], v33, v28, a4, v22, v31, a7, a8);
        a1 = v28;
        a3 = v38;
      }

      v10 = v32;
      a2 = v20;
    }

    while (v32);
  }

  return result;
}

double *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(double *result, double *a2, double *a3)
{
  if (result == a2)
  {
    return result;
  }

  *a3 = *result;
  v3 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v4 = 0;
  v5 = a3;
  v6 = a3;
  do
  {
    v7 = v3;
    v8 = *v6;
    v6 += 2;
    v9 = v8;
    if (*v3 >= v8 && (v9 < *v3 || result[3] >= v5[1]))
    {
      *v6 = *v3;
      goto LABEL_18;
    }

    *v6 = *v5;
    v10 = a3;
    if (v5 == a3)
    {
      goto LABEL_17;
    }

    v11 = v4;
    while (1)
    {
      v12 = *(a3 + v11 - 16);
      if (*v7 >= v12)
      {
        break;
      }

      v13 = *(a3 + v11 - 8);
LABEL_11:
      v5 -= 2;
      v14 = (a3 + v11);
      *v14 = v12;
      v14[1] = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = a3;
        goto LABEL_17;
      }
    }

    if (v12 >= *v7)
    {
      v10 = (a3 + v11);
      v13 = *(a3 + v11 - 8);
      if (result[3] >= v13)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v10 = v5;
LABEL_17:
    *v10 = *v7;
    v10[1] = result[3];
LABEL_18:
    v3 = v7 + 2;
    v4 += 16;
    v5 = v6;
    result = v7;
  }

  while (v7 + 2 != a2);
  return result;
}

double std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f64[0] < a1->n128_f64[0] || a1->n128_f64[0] >= a3->n128_f64[0] && a3->n128_f64[1] < a1->n128_f64[1])
    {
      v6 = *a3++;
      a6 = v6;
    }

    else
    {
      v7 = *a1++;
      a6 = v7;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

double std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>>(double *a1, double *a2, double *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8)
{
  if (a6 <= a7)
  {
    v14 = a8;
    if (a1 != a2)
    {
      v14 = a8;
      v15 = a1;
      do
      {
        v16 = *v15;
        v15 += 2;
        a4 = *&v16;
        *v14 = v16;
        v14 += 2;
      }

      while (v15 != a2);
    }

    return std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,double> *,std::pair<double,double> *,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>>(a8, v14, a2, a3, a1, a4);
  }

  else
  {
    v10 = a8;
    if (a2 != a3)
    {
      v10 = a8;
      v11 = a2;
      do
      {
        v12 = *v11;
        v11 += 2;
        a4 = *&v12;
        *v10 = v12;
        v10 += 2;
      }

      while (v11 != a3);
    }

    return std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<std::pair<double,double> *>,std::reverse_iterator<std::pair<double,double> *>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>>(a4, v10, v10, a8, a8, a2, a2, a1, a1, a3, a3);
  }
}

double *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>,std::pair<double,double>,std::__identity>(double *result, double *a2, double *a3)
{
  if (a2 != result)
  {
    v3 = (a2 - result) >> 4;
    v4 = *a3;
    do
    {
      v5 = v3 >> 1;
      v6 = &result[2 * (v3 >> 1)];
      if (v4 >= *v6 && (*v6 < v4 || a3[1] >= v6[1]))
      {
        result = v6 + 2;
        v5 = v3 + ~v5;
      }

      v3 = v5;
    }

    while (v5);
  }

  return result;
}

double std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,double> *,std::pair<double,double> *,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>,std::__wrap_iter<std::pair<double,double> *>>(double *a1, double *a2, double *a3, double *a4, double *a5, double result)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      v8 = 0;
      do
      {
        v9 = &a5[v8];
        v10 = &a1[v8];
        *v9 = a1[v8];
        result = a1[v8 + 1];
        v9[1] = result;
        v8 += 2;
      }

      while (v10 + 2 != a2);
      return result;
    }

    v6 = *a3;
    v7 = *a1;
    if (*a3 < *a1 || v7 >= v6 && a3[1] < a1[1])
    {
      *a5 = v6;
      result = a3[1];
      a5[1] = result;
      a3 += 2;
    }

    else
    {
      *a5 = v7;
      result = a1[1];
      a5[1] = result;
      a1 += 2;
    }

    a5 += 2;
  }

  return result;
}

double std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<std::pair<double,double> *>,std::reverse_iterator<std::pair<double,double> *>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,double> *>>>(double result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a5)
  {
    v11 = (a11 - 8);
    while (a7 != a9)
    {
      v12 = *(a7 - 16);
      v13 = *(a3 - 16);
      if (v13 < v12 || v12 >= v13 && *(a3 - 8) < *(a7 - 8))
      {
        v13 = *(a7 - 16);
        v14 = a7;
        a7 -= 16;
      }

      else
      {
        v14 = a3;
        a3 -= 16;
      }

      *(v11 - 1) = v13;
      result = *(v14 - 8);
      *v11 = result;
      v11 -= 2;
      if (a3 == a5)
      {
        return result;
      }
    }

    for (; a3 != a5; v11 -= 2)
    {
      v15 = *(a3 - 16);
      a3 -= 16;
      *(v11 - 1) = v15;
      result = *(a3 + 8);
      *v11 = result;
    }
  }

  return result;
}

uint64_t *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,double> *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  result = a1 + 2;
  for (i = a2 + 2; i != a3; i += 2)
  {
    if (result == a2)
    {
      a2 = i;
    }

    v7 = *result;
    *result = *i;
    *i = v7;
    v8 = result[1];
    result[1] = i[1];
    i[1] = v8;
    result += 2;
  }

  if (result != a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      while (1)
      {
        v11 = *v9;
        *v9 = *v10;
        *v10 = v11;
        v12 = v9[1];
        v9[1] = v10[1];
        v10[1] = v12;
        v9 += 2;
        v10 += 2;
        if (v10 == a3)
        {
          break;
        }

        if (v9 == a2)
        {
          a2 = v10;
        }
      }

      v10 = a2;
    }

    while (v9 != a2);
  }

  return result;
}

void sub_25E355738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __logHandle_block_invoke()
{
  logHandle__logHandle = os_log_create("com.apple.PerfPowerServicesReader", "client");

  return MEMORY[0x2821F96F8]();
}

id PerfPowerServicesGetLogLines(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"GenerativeFunctionMetrics", @"BasebandMetrics", 0}];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"appleDiffusion", @"assetLoad", @"mmExecuteRequest", @"tgiExecuteRequest", @"Summarization", @"SmartReplySession", @"Events", @"Histogram", 0}];
  if (v4)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277D3A120] getSubsystemsForFilepath:v7];
    v10 = [PPSTimestampConverterRegistry converterForFilepath:v7];
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v11 setDateFormat:@"MM/dd/yy HH:mm:ss"];
    v12 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [v11 setTimeZone:v12];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __PerfPowerServicesGetLogLines_block_invoke;
    v25[3] = &unk_279A119A8;
    v26 = v7;
    v27 = v5;
    v28 = v6;
    v29 = v3;
    v30 = v11;
    v31 = v10;
    v13 = v8;
    v32 = v13;
    v24 = v10;
    v14 = v11;
    v15 = v7;
    v16 = v4;
    v17 = v6;
    v18 = v5;
    v19 = v9;
    [v9 enumerateObjectsUsingBlock:v25];
    v20 = v3;
    v21 = v32;
    v22 = v13;

    v3 = v20;
    v5 = v18;
    v6 = v17;
    v4 = v16;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __PerfPowerServicesGetLogLines_block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D3A120] getCategoriesForFilepath:a1[4] subsystem:v3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PerfPowerServicesGetLogLines_block_invoke_2;
  v6[3] = &unk_279A11980;
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v12 = a1[8];
  v13 = a1[9];
  v14 = a1[10];
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __PerfPowerServicesGetLogLines_block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) containsObject:*(a1 + 40)] || (objc_msgSend(*(a1 + 48), "containsObject:", v3) & 1) == 0)
  {
    v5 = PPSCreateSubsystemCategoryPredicate(*(a1 + 40), v3, 0);
    v6 = [[PPSTimeSeriesRequest alloc] initWithMetrics:0 predicate:v5 timeFilter:*(a1 + 56)];
    v7 = [[PPSRequestDispatcher alloc] initWithFilepath:*(a1 + 64)];
    v40 = 0;
    v8 = [(PPSRequestDispatcher *)v7 dataForRequest:v6 withError:&v40];
    v9 = v40;
    if (!v9)
    {
      v29 = v7;
      v30 = v6;
      v31 = v5;
      v32 = v4;
      v33 = v3;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = v8;
      obj = v8;
      v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v35 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
            v16 = [v13 logLine];
            v17 = MEMORY[0x277CBEAA8];
            v18 = *(a1 + 72);
            v19 = *(a1 + 80);
            [v13 monotonicTimestamp];
            [v19 localTimeFromMonotonicTime:?];
            v20 = [v17 dateWithTimeIntervalSince1970:?];
            v21 = [v18 stringFromDate:v20];

            if (v16)
            {
              v22 = MEMORY[0x277CCABB0];
              [v13 monotonicTimestamp];
              v23 = [v22 numberWithDouble:?];
              [v15 addObject:v23];

              v24 = MEMORY[0x277CCACA8];
              v25 = [v13 label];
              v26 = [v24 stringWithFormat:@"%@ [%@] %@", v21, v25, v16];
              [v15 addObject:v26];

              [*(a1 + 88) addObject:v15];
            }

            objc_autoreleasePoolPop(v14);
          }

          v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }

      v4 = v32;
      v3 = v33;
      v6 = v30;
      v5 = v31;
      v9 = 0;
      v7 = v29;
      v8 = v28;
    }
  }

  objc_autoreleasePoolPop(v4);

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t boost::archive::archive_exception::append(boost::archive::archive_exception *this, uint64_t a2, char *a3)
{
  if (a2 <= 0x7E)
  {
    a2 = a2;
    while (1)
    {
      v3 = *a3;
      if (!*a3)
      {
        break;
      }

      ++a3;
      *(this + a2++ + 8) = v3;
      if (a2 == 127)
      {
        a2 = 127;
        break;
      }
    }
  }

  *(this + a2 + 8) = 0;
  return a2;
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t result, uint64_t *a2, int a3, const char *a4, const char *a5)
{
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 40)) = a2[1];
  *(result + 136) = a3;
  v6 = result + 8;
  switch(a3)
  {
    case 0:
      for (i = 0; i != 23; ++i)
      {
        *(v6 + i) = aUninitializedE[i];
      }

      v8 = (result + 31);
      goto LABEL_119;
    case 1:
      for (j = 0; j != 25; ++j)
      {
        *(v6 + j) = aUnknownDerived[j];
      }

      v8 = (result + 33);
      goto LABEL_119;
    case 2:
      for (k = 0; k != 18; ++k)
      {
        *(v6 + k) = aUnregisteredCl[k];
      }

      *(result + 26) = 0;
      if (!a4)
      {
        return result;
      }

      v20 = 0;
      *(result + 26) = 2108704;
      v17 = 127;
      while (a4[v20])
      {
        *(result + 29 + v20) = a4[v20];
        v13 = v20++ == 105;
        if (v13)
        {
          goto LABEL_111;
        }
      }

      v17 = (v20 + 21);
      goto LABEL_111;
    case 3:
      for (m = 0; m != 17; ++m)
      {
        *(v6 + m) = aInvalidSignatu[m];
      }

      goto LABEL_84;
    case 4:
      for (n = 0; n != 19; ++n)
      {
        *(v6 + n) = aUnsupportedVer[n];
      }

      goto LABEL_28;
    case 5:
      for (ii = 0; ii != 16; ++ii)
      {
        *(v6 + ii) = aPointerConflic[ii];
      }

      v8 = (result + 24);
      goto LABEL_119;
    case 6:
      for (jj = 0; jj != 26; ++jj)
      {
        *(v6 + jj) = aIncompatibleNa[jj];
      }

      *(result + 34) = 0;
      if (!a4)
      {
        return result;
      }

      v29 = 0;
      *(result + 34) = 2108704;
      v17 = 127;
      while (a4[v29])
      {
        *(result + 37 + v29) = a4[v29];
        v13 = v29++ == 97;
        if (v13)
        {
          goto LABEL_111;
        }
      }

      v17 = v29 + 29;
      goto LABEL_111;
    case 7:
      for (kk = 0; kk != 20; ++kk)
      {
        *(v6 + kk) = aArraySizeTooSh[kk];
      }

      v8 = (result + 28);
      goto LABEL_119;
    case 8:
      for (mm = 0; mm != 18; ++mm)
      {
        *(v6 + mm) = aInputStreamErr[mm];
      }

      *(result + 26) = 0;
      if (!a4)
      {
        if (!a5)
        {
          return result;
        }

        v27 = 18;
        goto LABEL_115;
      }

      v37 = 0;
      *(result + 26) = 45;
      while (a4[v37])
      {
        *(result + 27 + v37) = a4[v37];
        v13 = v37++ == 107;
        if (v13)
        {
          v27 = 127;
          goto LABEL_113;
        }
      }

      v27 = v37 + 19;
LABEL_113:
      *(v6 + v27) = 0;
      if (!a5)
      {
        return result;
      }

      if (v27 > 0x7E)
      {
        goto LABEL_117;
      }

LABEL_115:
      v46 = v27;
      *(v6 + v27) = 45;
      if (v27 == 126)
      {
        goto LABEL_116;
      }

      *(v6 + ++v27) = 0;
      if (v46 <= 0x7D)
      {
        v44 = v46 + 9;
        do
        {
          v47 = *a5;
          if (!*a5)
          {
            goto LABEL_135;
          }

          ++a5;
          *(result + v44) = v47;
          v13 = v44++ == 134;
        }

        while (!v13);
LABEL_126:
        v27 = 127;
      }

      goto LABEL_118;
    case 9:
      for (nn = 0; nn != 19; ++nn)
      {
        *(v6 + nn) = aClassNameTooLo[nn];
      }

LABEL_28:
      v8 = (result + 27);
      goto LABEL_119;
    case 10:
      v30 = 0;
      do
      {
        *(v6 + v30) = aUnregisteredVo[v30];
        v31 = v30 + 1;
        v30 = v31;
      }

      while (v31 != 23);
      *(result + 31) = 0;
      v32 = "?";
      if (a4)
      {
        v33 = a4;
      }

      else
      {
        v33 = "?";
      }

      LODWORD(v34) = 25;
      while (1)
      {
        v35 = *v33;
        if (!*v33)
        {
          break;
        }

        ++v33;
        *(v6 + v31) = v35;
        LODWORD(v34) = v34 + 1;
        if (++v31 == 127)
        {
          *(result + 135) = 0;
LABEL_91:
          LODWORD(v31) = 127;
          goto LABEL_92;
        }
      }

      *(v6 + v31) = 0;
      if (v31 > 0x7E)
      {
LABEL_92:
        *(v6 + v31) = 0;
        LODWORD(v34) = v31;
        goto LABEL_93;
      }

      v39 = 0;
      v40 = v31;
      v41 = "<-";
      while (v39 != -2)
      {
        v42 = *v41++;
        *(v6 + v40) = v42;
        --v39;
        if (++v40 == 127)
        {
          goto LABEL_91;
        }
      }

      *(v6 + v40) = 0;
      if (v40 <= 0x7E)
      {
        v34 = (v31 + 2);
        if (a5)
        {
          v32 = a5;
        }

        v48 = (result + v34 + 8);
        v49 = v34 + 1;
        while (1)
        {
          v50 = *v32;
          if (!*v32)
          {
            break;
          }

          ++v32;
          *v48++ = v50;
          LODWORD(v34) = v34 + 1;
          v13 = v49++ == 127;
          if (v13)
          {
            LODWORD(v34) = 127;
            break;
          }
        }
      }

LABEL_93:
      v8 = (v6 + v34);
      goto LABEL_119;
    case 11:
      for (i1 = 0; i1 != 14; ++i1)
      {
        *(v6 + i1) = aClassVersion[i1];
      }

      v10 = 0;
      *(result + 22) = 0;
      if (a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = "<unknown class>";
      }

      v12 = 127;
      while (v11[v10])
      {
        *(result + 22 + v10) = v11[v10];
        v13 = v10++ == 112;
        if (v13)
        {
          goto LABEL_86;
        }
      }

      v12 = v10 + 14;
LABEL_86:
      v8 = (v6 + v12);
      goto LABEL_119;
    case 12:
      for (i2 = 0; i2 != 41; ++i2)
      {
        *(v6 + i2) = aCodeInstantiat[i2];
      }

      *(result + 49) = 0;
      if (!a4)
      {
        return result;
      }

      v16 = 0;
      *(result + 49) = 2108704;
      v17 = 127;
      while (a4[v16])
      {
        *(result + 52 + v16) = a4[v16];
        v13 = v16++ == 82;
        if (v13)
        {
          goto LABEL_111;
        }
      }

      v17 = v16 + 44;
LABEL_111:
      v8 = (v6 + v17);
      goto LABEL_119;
    case 13:
      for (i3 = 0; i3 != 19; ++i3)
      {
        *(v6 + i3) = aOutputStreamEr[i3];
      }

      *(result + 27) = 0;
      if (a4)
      {
        v26 = 0;
        *(result + 27) = 45;
        while (a4[v26])
        {
          *(result + 28 + v26) = a4[v26];
          v13 = v26++ == 106;
          if (v13)
          {
            v27 = 127;
            goto LABEL_101;
          }
        }

        v27 = v26 + 20;
LABEL_101:
        *(v6 + v27) = 0;
        if (!a5)
        {
          return result;
        }

        if (v27 > 0x7E)
        {
LABEL_117:
          *(v6 + v27) = 0;
          goto LABEL_118;
        }
      }

      else
      {
        if (!a5)
        {
          return result;
        }

        v27 = 19;
      }

      v43 = v27;
      *(v6 + v27) = 45;
      if (v27 == 126)
      {
LABEL_116:
        v27 = 127;
        goto LABEL_117;
      }

      *(v6 + ++v27) = 0;
      if (v43 > 0x7D)
      {
        goto LABEL_118;
      }

      v44 = v43 + 9;
      while (1)
      {
        v45 = *a5;
        if (!*a5)
        {
          break;
        }

        ++a5;
        *(result + v44) = v45;
        v13 = v44++ == 134;
        if (v13)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      v27 = v44 - 8;
LABEL_118:
      v8 = (v6 + v27);
LABEL_119:
      *v8 = 0;
      return result;
    default:
      for (i4 = 0; i4 != 17; ++i4)
      {
        *(v6 + i4) = aProgrammingErr[i4];
      }

LABEL_84:
      v8 = (result + 25);
      goto LABEL_119;
  }
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t result, int a2, const char *a3, const char *a4)
{
  *result = &unk_286FF2AE8;
  *(result + 136) = a2;
  v4 = result + 8;
  switch(a2)
  {
    case 0:
      for (i = 0; i != 23; ++i)
      {
        *(v4 + i) = aUninitializedE[i];
      }

      v6 = (result + 31);
      goto LABEL_119;
    case 1:
      for (j = 0; j != 25; ++j)
      {
        *(v4 + j) = aUnknownDerived[j];
      }

      v6 = (result + 33);
      goto LABEL_119;
    case 2:
      for (k = 0; k != 18; ++k)
      {
        *(v4 + k) = aUnregisteredCl[k];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        return result;
      }

      v18 = 0;
      *(result + 26) = 2108704;
      v15 = 127;
      while (a3[v18])
      {
        *(result + 29 + v18) = a3[v18];
        v11 = v18++ == 105;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = (v18 + 21);
      goto LABEL_111;
    case 3:
      for (m = 0; m != 17; ++m)
      {
        *(v4 + m) = aInvalidSignatu[m];
      }

      goto LABEL_84;
    case 4:
      for (n = 0; n != 19; ++n)
      {
        *(v4 + n) = aUnsupportedVer[n];
      }

      goto LABEL_28;
    case 5:
      for (ii = 0; ii != 16; ++ii)
      {
        *(v4 + ii) = aPointerConflic[ii];
      }

      v6 = (result + 24);
      goto LABEL_119;
    case 6:
      for (jj = 0; jj != 26; ++jj)
      {
        *(v4 + jj) = aIncompatibleNa[jj];
      }

      *(result + 34) = 0;
      if (!a3)
      {
        return result;
      }

      v27 = 0;
      *(result + 34) = 2108704;
      v15 = 127;
      while (a3[v27])
      {
        *(result + 37 + v27) = a3[v27];
        v11 = v27++ == 97;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v27 + 29;
      goto LABEL_111;
    case 7:
      for (kk = 0; kk != 20; ++kk)
      {
        *(v4 + kk) = aArraySizeTooSh[kk];
      }

      v6 = (result + 28);
      goto LABEL_119;
    case 8:
      for (mm = 0; mm != 18; ++mm)
      {
        *(v4 + mm) = aInputStreamErr[mm];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        if (!a4)
        {
          return result;
        }

        v25 = 18;
        goto LABEL_115;
      }

      v35 = 0;
      *(result + 26) = 45;
      while (a3[v35])
      {
        *(result + 27 + v35) = a3[v35];
        v11 = v35++ == 107;
        if (v11)
        {
          v25 = 127;
          goto LABEL_113;
        }
      }

      v25 = v35 + 19;
LABEL_113:
      *(v4 + v25) = 0;
      if (!a4)
      {
        return result;
      }

      if (v25 > 0x7E)
      {
        goto LABEL_117;
      }

LABEL_115:
      v44 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
        goto LABEL_116;
      }

      *(v4 + ++v25) = 0;
      if (v44 <= 0x7D)
      {
        v42 = v44 + 9;
        do
        {
          v45 = *a4;
          if (!*a4)
          {
            goto LABEL_135;
          }

          ++a4;
          *(result + v42) = v45;
          v11 = v42++ == 134;
        }

        while (!v11);
LABEL_126:
        v25 = 127;
      }

      goto LABEL_118;
    case 9:
      for (nn = 0; nn != 19; ++nn)
      {
        *(v4 + nn) = aClassNameTooLo[nn];
      }

LABEL_28:
      v6 = (result + 27);
      goto LABEL_119;
    case 10:
      v28 = 0;
      do
      {
        *(v4 + v28) = aUnregisteredVo[v28];
        v29 = v28 + 1;
        v28 = v29;
      }

      while (v29 != 23);
      *(result + 31) = 0;
      v30 = "?";
      if (a3)
      {
        v31 = a3;
      }

      else
      {
        v31 = "?";
      }

      LODWORD(v32) = 25;
      while (1)
      {
        v33 = *v31;
        if (!*v31)
        {
          break;
        }

        ++v31;
        *(v4 + v29) = v33;
        LODWORD(v32) = v32 + 1;
        if (++v29 == 127)
        {
          *(result + 135) = 0;
LABEL_91:
          LODWORD(v29) = 127;
          goto LABEL_92;
        }
      }

      *(v4 + v29) = 0;
      if (v29 > 0x7E)
      {
LABEL_92:
        *(v4 + v29) = 0;
        LODWORD(v32) = v29;
        goto LABEL_93;
      }

      v37 = 0;
      v38 = v29;
      v39 = "<-";
      while (v37 != -2)
      {
        v40 = *v39++;
        *(v4 + v38) = v40;
        --v37;
        if (++v38 == 127)
        {
          goto LABEL_91;
        }
      }

      *(v4 + v38) = 0;
      if (v38 <= 0x7E)
      {
        v32 = (v29 + 2);
        if (a4)
        {
          v30 = a4;
        }

        v46 = (result + v32 + 8);
        v47 = v32 + 1;
        while (1)
        {
          v48 = *v30;
          if (!*v30)
          {
            break;
          }

          ++v30;
          *v46++ = v48;
          LODWORD(v32) = v32 + 1;
          v11 = v47++ == 127;
          if (v11)
          {
            LODWORD(v32) = 127;
            break;
          }
        }
      }

LABEL_93:
      v6 = (v4 + v32);
      goto LABEL_119;
    case 11:
      for (i1 = 0; i1 != 14; ++i1)
      {
        *(v4 + i1) = aClassVersion[i1];
      }

      v8 = 0;
      *(result + 22) = 0;
      if (a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = "<unknown class>";
      }

      v10 = 127;
      while (v9[v8])
      {
        *(result + 22 + v8) = v9[v8];
        v11 = v8++ == 112;
        if (v11)
        {
          goto LABEL_86;
        }
      }

      v10 = v8 + 14;
LABEL_86:
      v6 = (v4 + v10);
      goto LABEL_119;
    case 12:
      for (i2 = 0; i2 != 41; ++i2)
      {
        *(v4 + i2) = aCodeInstantiat[i2];
      }

      *(result + 49) = 0;
      if (!a3)
      {
        return result;
      }

      v14 = 0;
      *(result + 49) = 2108704;
      v15 = 127;
      while (a3[v14])
      {
        *(result + 52 + v14) = a3[v14];
        v11 = v14++ == 82;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v14 + 44;
LABEL_111:
      v6 = (v4 + v15);
      goto LABEL_119;
    case 13:
      for (i3 = 0; i3 != 19; ++i3)
      {
        *(v4 + i3) = aOutputStreamEr[i3];
      }

      *(result + 27) = 0;
      if (a3)
      {
        v24 = 0;
        *(result + 27) = 45;
        while (a3[v24])
        {
          *(result + 28 + v24) = a3[v24];
          v11 = v24++ == 106;
          if (v11)
          {
            v25 = 127;
            goto LABEL_101;
          }
        }

        v25 = v24 + 20;
LABEL_101:
        *(v4 + v25) = 0;
        if (!a4)
        {
          return result;
        }

        if (v25 > 0x7E)
        {
LABEL_117:
          *(v4 + v25) = 0;
          goto LABEL_118;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v25 = 19;
      }

      v41 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
LABEL_116:
        v25 = 127;
        goto LABEL_117;
      }

      *(v4 + ++v25) = 0;
      if (v41 > 0x7D)
      {
        goto LABEL_118;
      }

      v42 = v41 + 9;
      while (1)
      {
        v43 = *a4;
        if (!*a4)
        {
          break;
        }

        ++a4;
        *(result + v42) = v43;
        v11 = v42++ == 134;
        if (v11)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      v25 = v42 - 8;
LABEL_118:
      v6 = (v4 + v25);
LABEL_119:
      *v6 = 0;
      return result;
    default:
      for (i4 = 0; i4 != 17; ++i4)
      {
        *(v4 + i4) = aProgrammingErr[i4];
      }

LABEL_84:
      v6 = (result + 25);
      goto LABEL_119;
  }
}

__n128 boost::archive::archive_exception::archive_exception(boost::archive::archive_exception *this, const boost::archive::archive_exception *a2, uint64_t a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = *(a2 + 1);
  *(this + 34) = *(a3 + 136);
  v4 = *(a3 + 8);
  v5 = *(a3 + 24);
  v6 = *(a3 + 40);
  *(this + 56) = *(a3 + 56);
  *(this + 40) = v6;
  *(this + 24) = v5;
  *(this + 8) = v4;
  result = *(a3 + 72);
  v8 = *(a3 + 88);
  v9 = *(a3 + 104);
  *(this + 120) = *(a3 + 120);
  *(this + 104) = v9;
  *(this + 88) = v8;
  *(this + 72) = result;
  return result;
}

__n128 boost::archive::archive_exception::archive_exception(boost::archive::archive_exception *this, const boost::archive::archive_exception *a2)
{
  *this = &unk_286FF2AE8;
  *(this + 34) = *(a2 + 34);
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v4;
  *(this + 24) = v3;
  *(this + 8) = v2;
  result = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(this + 120) = *(a2 + 120);
  *(this + 104) = v7;
  *(this + 88) = v6;
  *(this + 72) = result;
  return result;
}

void virtual thunk toboost::archive::archive_exception::~archive_exception(boost::archive::archive_exception *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  v2 = *(*this - 24);
  std::exception::~exception((this + v2));

  operator delete(this + v2);
}

void boost::archive::archive_exception::~archive_exception(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  *(this + 136) = 0;
  return this;
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t this)
{
  *this = &unk_286FF2AE8;
  *(this + 136) = 0;
  return this;
}

void *boost::archive::detail::basic_iarchive_impl::load_preamble(void *result, uint64_t a2, _BYTE *a3)
{
  if ((a3[21] & 1) == 0)
  {
    v5 = result;
    if ((*(**a3 + 24))())
    {
      HIWORD(v6) = 0;
      (*(*a2 + 24))(a2, &v6 + 6);
      (*(*a2 + 40))(a2, a3 + 20);
      result = (**a2)(a2, (a3 + 16));
    }

    else
    {
      a3[20] = (*(**a3 + 32))(*a3, *(v5 + 1));
      result = (*(**a3 + 40))(&v6);
      *(a3 + 4) = v6;
    }

    a3[21] = 1;
  }

  return result;
}

BOOL boost::archive::detail::basic_iarchive_impl::track(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  (*(*a2 + 8))(a2, &v9);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 16) - v5) >> 4;
  v7 = v9;
  if (v9 < v6)
  {
    *a3 = *(v5 + 16 * v9);
  }

  return v7 >= v6;
}

boost::archive::detail::basic_iarchive *boost::archive::detail::basic_iarchive::basic_iarchive(boost::archive::detail::basic_iarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286FF2B48;
  v4 = operator new(0x78uLL);
  boost::archive::BOOST_ARCHIVE_VERSION(v4);
  *(v4 + 1) = a2;
  *(v4 + 8) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 37) = 0;
  *(v4 + 6) = v4 + 56;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 100) = 0u;
  *(this + 4) = v4;
  return this;
}

void sub_25E357278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v10);
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_iarchive::~basic_iarchive(boost::archive::detail::basic_iarchive *this)
{
  *this = &unk_286FF2B48;
  v1 = (this + 8);
  boost::scoped_ptr<boost::archive::detail::basic_iarchive_impl>::~scoped_ptr(this + 4);
  v2 = v1;
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t boost::archive::detail::basic_iarchive::reset_object_address(uint64_t this, _BYTE *a2, _BYTE *a3)
{
  v3 = *(this + 32);
  if ((*(v3 + 44) & 1) == 0)
  {
    v5 = *(v3 + 36);
    v4 = *(v3 + 40);
    if (v4 < v5)
    {
      for (i = (*(v3 + 8) + 16 * v4); *i != a3; i += 2)
      {
        if (v5 == ++v4)
        {
          return this;
        }
      }
    }

    if (v4 < v5)
    {
      v7 = v5 - v4;
      v8 = *(v3 + 8) + 16 * v4;
      do
      {
        if ((*(v8 + 8) & 1) == 0)
        {
          *v8 += a2 - a3;
        }

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t boost::archive::detail::basic_iarchive_impl::load_object(boost::archive::detail::basic_iarchive_impl *this, boost::archive::detail::basic_iarchive *a2, unint64_t a3, const boost::archive::detail::basic_iserializer *a4)
{
  v5 = a3;
  v20 = a3;
  *(this + 44) = 0;
  if (*(this + 6) != __PAIR128__(a4, a3))
  {
    v8 = *(this + 8);
    v23 = a4;
    v24 = v8;
    v9 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>(this + 6, &v23, &v23);
    if (v10)
    {
      v21 = a4;
      v22[0] = 0;
      *(v22 + 6) = 0;
      std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100](this + 9, &v21);
    }

    v11 = *(v9 + 20);
    v12 = *(this + 9) + 24 * v11;
    *(v12 + 8) = *(a4 + 2);
    boost::archive::detail::basic_iarchive_impl::load_preamble(this, a2, v12);
    v13 = *(this + 8);
    v14 = *(v12 + 20);
    v15 = (*(this + 2) - *(this + 1)) >> 4;
    *(this + 8) = v15;
    if (v14 == 1)
    {
      result = boost::archive::detail::basic_iarchive_impl::track(this, a2, &v20);
      if ((result & 1) == 0)
      {
LABEL_12:
        *(this + 8) = v13;
        goto LABEL_13;
      }

      v5 = v20;
      v21 = v20;
      LOBYTE(v22[0]) = 0;
      WORD1(v22[0]) = v11;
      v16 = *(this + 2);
      if (v16 >= *(this + 3))
      {
        v18 = std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::aobject>(this + 1, &v21);
      }

      else
      {
        v17 = v21;
        *(v16 + 8) = v22[0];
        *v16 = v17;
        *(v16 + 10) = v11;
        v18 = v16 + 16;
      }

      *(this + 2) = v18;
      *(this + 9) = (v18 - *(this + 1)) >> 4;
    }

    result = (*(*a4 + 16))(a4, a2, v5, *(v12 + 16));
    *(this + 10) = v15;
    goto LABEL_12;
  }

  result = (*(*a4 + 16))(a4, a2, a3, *(this + 28));
LABEL_13:
  *(this + 44) = 0;
  return result;
}

void sub_25E35758C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  *(v1 + 44) = 0;
  _Unwind_Resume(a1);
}

uint64_t boost::archive::detail::basic_iarchive_impl::load_pointer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v40 = *MEMORY[0x277D85DE8];
  *(a1 + 44) = 1;
  v35 = 0;
  (*(*a2 + 16))(a2, &v35);
  v10 = v35;
  if (v35 == -1)
  {
    *a3 = 0;
  }

  else
  {
    if (v35 >= *(a1 + 64))
    {
      if (!a4 || (v12 = (*(*a4 + 24))(a4), (*(*v12 + 48))(v12)))
      {
        v34 = &v38;
        (*(*a2 + 32))(a2, &v34);
        if (!v38 || !boost::serialization::extended_type_info::find(&v38, v13))
        {
          boost::archive::archive_exception::archive_exception(&v36, 2, 0, 0);
          boost::serialization::throw_exception<boost::archive::archive_exception>(&v36);
        }

        a4 = a5();
      }

      v14 = (*(*a4 + 24))(a4);
      v15 = *(a1 + 64);
      v38 = v14;
      v39 = v15;
      v16 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>((a1 + 48), &v38, &v38);
      if (v17)
      {
        v36 = v14;
        v37[0] = 0;
        *(v37 + 6) = 0;
        std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100]((a1 + 72), &v36);
      }

      v11 = *(a1 + 72);
      *(v11 + 24 * *(v16 + 20) + 8) = *(v14 + 16);
      v10 = v35;
      *(v11 + 24 * v35 + 8) = a4;
    }

    else
    {
      v11 = *(a1 + 72);
    }

    v18 = v11 + 24 * v10;
    a4 = *(v18 + 8);
    if (!a4)
    {
      boost::archive::archive_exception::archive_exception(&v36, 2, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(&v36);
    }

    boost::archive::detail::basic_iarchive_impl::load_preamble(a1, a2, (v11 + 24 * v10));
    v19 = *(v18 + 20);
    if (v19 != 1 || boost::archive::detail::basic_iarchive_impl::track(a1, a2, a3))
    {
      v20 = *(a1 + 32);
      v21 = (*(*a4 + 16))(a4);
      *a3 = v21;
      if (v19)
      {
        v22 = *(a1 + 104);
        v33 = *(a1 + 96);
        v23 = *(a1 + 112);
        v24 = (*(*a4 + 24))(a4);
        v25 = *(a1 + 8);
        *(a1 + 104) = v24;
        *(a1 + 112) = *(v18 + 16);
        v26 = *(a1 + 36);
        v27 = v35;
        v36 = *a3;
        LOBYTE(v37[0]) = 0;
        WORD1(v37[0]) = v35;
        v28 = *(a1 + 16);
        if (v28 >= *(a1 + 24))
        {
          v30 = std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::aobject>((a1 + 8), &v36);
        }

        else
        {
          v29 = v36;
          *(v28 + 8) = v37[0];
          *v28 = v29;
          *(v28 + 10) = v27;
          v30 = v28 + 16;
        }

        *(a1 + 16) = v30;
        (*(*a4 + 32))(a4, a2, *a3, *(a1 + 112));
        *(*(a1 + 8) + v28 - v25 + 8) = 1;
        *(a1 + 36) = v26;
        *(a1 + 112) = v23;
        *(a1 + 96) = v33;
        *(a1 + 104) = v22;
      }

      else
      {
        (*(*a4 + 32))(a4, a2, v21, *(v18 + 16));
      }

      *(a1 + 32) = v20;
    }
  }

  *(a1 + 44) = 1;
  v31 = *MEMORY[0x277D85DE8];
  return a4;
}

void sub_25E3579BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13)
{
  *(v13 + 36) = v14;
  *(v13 + 112) = v17;
  *(v13 + 96) = a10;
  *(v13 + 104) = v16;
  *(v13 + 32) = v15;
  *(v13 + 44) = 1;
  _Unwind_Resume(exception_object);
}

uint64_t boost::archive::detail::basic_iarchive::register_basic_serializer(boost::archive::detail::basic_iarchive *this, const boost::archive::detail::basic_iserializer *a2)
{
  v3 = *(this + 4);
  v4 = *(v3 + 64);
  v10 = a2;
  v11 = v4;
  result = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>((v3 + 48), &v10, &v10);
  v6 = result;
  if (v7)
  {
    v8 = a2;
    v9[0] = 0;
    *(v9 + 6) = 0;
    result = std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100]((v3 + 72), &v8);
  }

  *(*(v3 + 72) + 24 * *(v6 + 40) + 8) = *(a2 + 2);
  return result;
}

uint64_t boost::archive::detail::basic_iarchive::delete_created_pointers(uint64_t this)
{
  v1 = *(this + 32);
  v3 = v1[1];
  for (i = v1[2]; v3 != i; v3 += 16)
  {
    if (*(v3 + 8) == 1)
    {
      v4 = *(v1[9] + 24 * *(v3 + 10));
      this = (*(*v4 + 56))(v4, *v3);
      i = v1[2];
    }
  }

  return this;
}

void std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, *a2);
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        boost::detail::shared_count::~shared_count(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    boost::detail::sp_counted_base::release(v1);
  }
}

atomic_uint *boost::detail::sp_counted_base::release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v1 = this;
    v2 = this + 3;
    this = (*(*this + 16))(this);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return this;
}

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::aobject>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::aobject>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  __p = v8;
  v14 = v9;
  v16 = &v8[16 * v7];
  v10 = *a2;
  v9[8] = *(a2 + 8);
  *v9 = v10;
  *(v9 + 5) = *(a2 + 5);
  v15 = v9 + 16;
  std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  if (v15 != v14)
  {
    v15 += (v14 - v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_25E357E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<boost::archive::detail::basic_iarchive_impl::aobject>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *v5 = v6;
      *(v5 + 10) = *(v2 + 5);
      v2 += 2;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::aobject>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::cobject_id>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 20) = *(a2 + 20);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_iarchive_impl::cobject_type,boost::archive::detail::basic_iarchive_impl::cobject_type const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void *std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!boost::serialization::extended_type_info::operator<(*(*a3 + 8), *(v4[4] + 8)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!boost::serialization::extended_type_info::operator<(*(v7[4] + 8), *(*a3 + 8)))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__emplace_back_slow_path<boost::archive::detail::basic_iarchive_impl::cobject_id>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::cobject_id>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  __p = v7;
  v12 = v8;
  v14 = &v7[24 * v6];
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 16);
  *(v8 + 10) = *(a2 + 20);
  v13 = v8 + 24;
  std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 24) % 0x18uLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25E3581B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<boost::archive::detail::basic_iarchive_impl::cobject_id>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 20) = *(v5 + 20);
      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<boost::archive::detail::basic_iarchive_impl::cobject_id>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

uint64_t *boost::scoped_ptr<boost::archive::detail::basic_iarchive_impl>::~scoped_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(v2 + 48, *(v2 + 56));
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void *boost::archive::detail::basic_iserializer::basic_iserializer(void *result, uint64_t a2)
{
  *result = &unk_286FF2C18;
  result[1] = a2;
  result[2] = 0;
  return result;
}

boost::archive::detail::basic_oarchive *boost::archive::detail::basic_oarchive::basic_oarchive(boost::archive::detail::basic_oarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286FF2CB8;
  v4 = operator new(0x60uLL);
  *v4 = a2;
  v4[2] = 0;
  v4[1] = v4 + 2;
  v4[5] = 0;
  v4[3] = 0;
  v4[4] = v4 + 5;
  v4[8] = 0;
  v4[6] = 0;
  v4[7] = v4 + 8;
  v4[10] = 0;
  v4[11] = 0;
  v4[9] = 0;
  *(this + 4) = v4;
  return this;
}

void sub_25E3583FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_oarchive::~basic_oarchive(boost::archive::detail::basic_oarchive *this)
{
  *this = &unk_286FF2CB8;
  v1 = (this + 8);
  boost::scoped_ptr<boost::archive::detail::basic_oarchive_impl>::~scoped_ptr(this + 4);
  v2 = v1;
  std::vector<std::pair<void const*,boost::shared_ptr<void>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t boost::archive::detail::basic_oarchive_impl::save_object(boost::archive::detail::basic_oarchive_impl *this, boost::archive::detail::basic_oarchive *a2, unint64_t a3, const boost::archive::detail::basic_oserializer *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(this + 5) == __PAIR128__(a4, a3))
  {
    v23 = *(*a4 + 16);
    v24 = *MEMORY[0x277D85DE8];
    v25 = *a4 + 16;

    return v23(a4);
  }

  else
  {
    v8 = *(this + 6);
    v29 = a4;
    v30 = v8;
    v31 = 0;
    v9 = std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>(this + 4, &v29, &v29);
    if ((*(*a4 + 24))(a4) && (*(v9 + 42) & 1) == 0)
    {
      LOWORD(v29) = *(v9 + 20);
      (*(*a2 + 32))(a2, &v29);
      LOBYTE(v29) = (*(*a4 + 32))(a4, *this);
      (*(*a2 + 56))(a2, &v29);
      (*(*a4 + 40))(&v29, a4);
      (**a2)(a2, &v29);
      *(v9 + 42) = 1;
    }

    if ((*(*a4 + 32))(a4, *this))
    {
      v10 = *(this + 3);
      v11 = *(v9 + 20);
      v26 = a3;
      v27 = v11;
      v28 = v10;
      v12 = *(std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::aobject,boost::archive::detail::basic_oarchive_impl::aobject const&>(this + 1, &v26, &v26) + 11);
      if (v13)
      {
        LODWORD(v29) = v12;
        (*(*a2 + 8))(a2, &v29);
        result = (*(*a4 + 16))(a4, a2, a3);
      }

      else
      {
        v17 = *(this + 8);
        v16 = this + 64;
        v15 = v17;
        if (v17)
        {
          v18 = v16;
          do
          {
            v19 = *(v15 + 7);
            v20 = v19 >= v12;
            v21 = v19 < v12;
            if (v20)
            {
              v18 = v15;
            }

            v15 = *&v15[8 * v21];
          }

          while (v15);
          if (v18 != v16 && v12 >= *(v18 + 7))
          {
            boost::archive::archive_exception::archive_exception(&v29, 5, 0, 0);
            boost::serialization::throw_exception<boost::archive::archive_exception>(&v29);
          }
        }

        LODWORD(v29) = v12;
        result = (*(*a2 + 16))(a2, &v29);
      }
    }

    else
    {
      result = (*(*a4 + 16))(a4, a2, a3);
    }

    v22 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t **boost::archive::detail::basic_oarchive_impl::save_pointer(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = (*(*a4 + 16))(a4);
  v9 = *(a1 + 6);
  v24 = v8;
  v25 = v9;
  v26 = 0;
  v10 = std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>(a1 + 4, &v24, &v24);
  v11 = v10;
  if (*(v10 + 42))
  {
    LOWORD(v24) = *(v10 + 20);
    (*(*a2 + 40))(a2, &v24);
  }

  else
  {
    LOWORD(v24) = *(v10 + 20);
    (*(*a2 + 24))(a2, &v24);
    if (*(a1 + 6) > v9 && (*(*v8 + 48))(v8))
    {
      v12 = v8[1];
      v13 = *(v12 + 16);
      if (!v13)
      {
        boost::archive::archive_exception::archive_exception(&v24, 2, 0, 0);
        boost::serialization::throw_exception<boost::archive::archive_exception>(&v24);
      }

      v23 = *(v12 + 16);
      if (strlen(v13) >= 0x80)
      {
        boost::archive::archive_exception::archive_exception(&v24, 9, 0, 0);
        boost::serialization::throw_exception<boost::archive::archive_exception>(&v24);
      }

      (*(*a2 + 48))(a2, &v23);
    }

    if ((*(*v8 + 24))(v8))
    {
      LOBYTE(v24) = (*(*v8 + 32))(v8, *a1);
      (*(*a2 + 56))(a2, &v24);
      (*(*v8 + 40))(&v24, v8);
      (**a2)(a2, &v24);
    }

    *(v11 + 42) = 1;
  }

  if ((*(*v8 + 32))(v8, *a1))
  {
    v14 = *(a1 + 3);
    v15 = *(v11 + 20);
    v24 = a3;
    v25 = v15;
    v27 = v14;
    v16 = *(std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::aobject,boost::archive::detail::basic_oarchive_impl::aobject const&>(a1 + 1, &v24, &v24) + 11);
    LODWORD(v23) = v16;
    if ((v17 & 1) == 0)
    {
      v22 = v16;
      result = (*(*a2 + 16))(a2, &v22);
      goto LABEL_17;
    }

    v22 = v16;
    (*(*a2 + 8))(a2, &v22);
    v18 = *(a1 + 10);
    v19 = *(a1 + 11);
    *(a1 + 10) = a3;
    *(a1 + 11) = (*(*a4 + 16))(a4);
    (*(*a4 + 24))(a4, a2, a3);
    result = std::__tree<boost::archive::object_id_type>::__emplace_unique_key_args<boost::archive::object_id_type,boost::archive::object_id_type const&>(a1 + 7, &v23, &v23);
  }

  else
  {
    v18 = *(a1 + 10);
    v19 = *(a1 + 11);
    *(a1 + 10) = a3;
    *(a1 + 11) = (*(*a4 + 16))(a4);
    result = (*(*a4 + 24))(a4, a2, a3);
  }

  *(a1 + 10) = v18;
  *(a1 + 11) = v19;
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::detail::basic_oarchive::register_basic_serializer(boost::archive::detail::basic_oarchive *this, const boost::archive::detail::basic_oserializer *a2)
{
  v2 = *(this + 4);
  v3 = *(v2 + 48);
  v5 = a2;
  v6 = v3;
  v7 = 0;
  return std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>((v2 + 32), &v5, &v5);
}

void *std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::aobject,boost::archive::detail::basic_oarchive_impl::aobject const&>(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__find_equal<boost::archive::detail::basic_oarchive_impl::aobject>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 11) = *(a3 + 12);
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t *std::__tree<boost::archive::detail::basic_oarchive_impl::aobject>::__find_equal<boost::archive::detail::basic_oarchive_impl::aobject>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 4);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v6 <= v9)
      {
        v10 = *(v8 + 20);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t **std::__tree<boost::archive::object_id_type>::__emplace_unique_key_args<boost::archive::object_id_type,boost::archive::object_id_type const&>(uint64_t **a1, unsigned int *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void *std::__tree<boost::archive::detail::basic_oarchive_impl::cobject_type>::__emplace_unique_key_args<boost::archive::detail::basic_oarchive_impl::cobject_type,boost::archive::detail::basic_oarchive_impl::cobject_type const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::__find_equal<boost::archive::detail::basic_iarchive_impl::cobject_type>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 42) = *(a3 + 10);
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

void ***boost::scoped_ptr<boost::archive::detail::basic_oarchive_impl>::~scoped_ptr(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 7), v2[8]);
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 4), v2[5]);
    std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy((v2 + 1), v2[2]);
    operator delete(v2);
  }

  return a1;
}

void *boost::archive::detail::basic_oserializer::basic_oserializer(void *result, uint64_t a2)
{
  *result = &unk_286FF2D50;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t boost::archive::detail::basic_serializer_map::insert(uint64_t **a1, uint64_t *a2)
{
  v3 = a2;
  std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__emplace_unique_key_args<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer const* const&>(a1, &v3, &v3);
  return 1;
}

void boost::archive::detail::basic_serializer_map::erase(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v2 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      v6 = v2[1];
      if (v2[4] == a2)
      {
        v9 = v2;
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v9[2];
            v8 = *v7 == v9;
            v9 = v7;
          }

          while (!v8);
        }

        std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__remove_node_pointer(a1, v2);
        operator delete(v2);
      }

      else if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }
}

uint64_t boost::archive::detail::basic_serializer_map::find(boost::archive::detail::basic_serializer_map *this, const boost::serialization::extended_type_info *a2)
{
  v5 = &v6;
  v6 = a2;
  v3 = std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::find<boost::archive::detail::basic_serializer const*>(this, &v5);
  if ((this + 8) == v3)
  {
    return 0;
  }

  else
  {
    return v3[4];
  }
}

uint64_t *std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__emplace_unique_key_args<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer const* const&>(uint64_t **a1, uint64_t **a2, uint64_t *a3)
{
  v5 = std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__find_equal<boost::archive::detail::basic_serializer const*>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x28uLL);
    v6[4] = *a3;
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t *std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__find_equal<boost::archive::detail::basic_serializer const*>(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!boost::serialization::extended_type_info::operator<(**a3, *v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!boost::serialization::extended_type_info::operator<(*v7[4], **a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::find<boost::archive::detail::basic_serializer const*>(uint64_t a1, uint64_t **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = boost::serialization::extended_type_info::operator<(**(v3 + 32), **a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || boost::serialization::extended_type_info::operator<(**a2, **(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load(void *a1, _BYTE *a2)
{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<short>(a1);
  *a2 = 0;
  return result;
}

{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<short>(a1);
  *a2 = 0;
  return result;
}

{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned short>(a1);
  *a2 = 0;
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load(void *a1, _DWORD *a2)
{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<int>(a1);
  *a2 = 0;
  return result;
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &unk_286FF2DC0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::istream::sync();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

void sub_25E359A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver(v14);
  std::locale::~locale((v12 + 56));
  MEMORY[0x25F8B0420](v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(uint64_t a1)
{
  boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver((a1 + 64));
  std::locale::~locale((a1 + 56));
  MEMORY[0x25F8B0420](a1 + 40);
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::load_binary(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = result;
    if ((*(*result + *(**result - 24) + 32) & 5) != 0)
    {
      boost::archive::archive_exception::archive_exception(v9, 8, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v9);
    }

    v4 = a3;
    v9[0] = *result;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<boost::archive::iterators::istream_iterator<char>>,int>,8,6,char>::fill(v9);
      LOBYTE(v11) = 0;
      *a2++ = HIBYTE(v11);
      --v4;
    }

    while (v4);
    v6 = MEMORY[0x277D85DE0];
    do
    {
      v7 = *v3;
      result = std::istream::get();
      if ((*(*v3 + *(**v3 - 24) + 32) & 2) != 0)
      {
        break;
      }

      result = (result & 0x80) != 0 ? __maskrune(result, 0x4000uLL) : *(v6 + 4 * result + 60) & 0x4000u;
    }

    while (!result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::archive::codecvt_null<char>::~codecvt_null()
{
  v0 = MEMORY[0x25F8B0420]();

  operator delete(v0);
}

std::locale *boost::archive::basic_istream_locale_saver<char,std::char_traits<char>>::~basic_istream_locale_saver(std::locale *a1)
{
  locale = a1->__locale_;
  std::istream::sync();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

uint64_t boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<boost::archive::iterators::istream_iterator<char>>,int>,8,6,char>::fill(uint64_t result)
{
  v1 = result;
  v2 = 0;
  *(result + 33) = 0;
  v3 = *(result + 40);
  v4 = 8;
  do
  {
    if (v3)
    {
      v5 = *(v1 + 36);
    }

    else if (*(v1 + 44) == 1)
    {
      v5 = 0;
      *(v1 + 36) = 0;
      v3 = v4;
    }

    else
    {
      v5 = boost::iterators::transform_iterator<boost::archive::iterators::detail::to_6_bit<int>,boost::archive::iterators::remove_whitespace<boost::archive::iterators::istream_iterator<char>>,boost::use_default,boost::use_default>::dereference(v1);
      *(v1 + 17) = 0;
      result = *v1;
      if (*v1)
      {
        result = std::istream::ignore();
      }

      *(v1 + 36) = v5;
      v2 = *(v1 + 33);
      v3 = 6;
    }

    if (v3 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = (v2 << v6) | (v5 >> (v3 - v6)) & ~(-1 << v6);
    v2 = ((v2 << v6) | (v5 >> (v3 - v6)) & ~(-1 << v6));
    *(v1 + 33) = v7;
    *(v1 + 40) = v3 - v6;
    v8 = v4 > v3;
    v3 -= v6;
    v4 -= v6;
  }

  while (v8);
  *(v1 + 32) = 1;
  return result;
}

uint64_t boost::iterators::transform_iterator<boost::archive::iterators::detail::to_6_bit<int>,boost::archive::iterators::remove_whitespace<boost::archive::iterators::istream_iterator<char>>,boost::use_default,boost::use_default>::dereference(uint64_t *a1)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    v2 = MEMORY[0x277D85DE0];
    while (1)
    {
      v3 = *a1;
      v4 = std::istream::peek();
      if ((v4 & 0x80) != 0)
      {
        if (!__maskrune(v4, 0x4000uLL))
        {
LABEL_9:
          *(a1 + 17) = 1;
          break;
        }
      }

      else if ((*(v2 + 4 * (v4 & 0x7F) + 60) & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      if (*a1)
      {
        std::istream::ignore();
      }
    }
  }

  v5 = *a1;
  v6 = std::istream::peek();

  return boost::archive::iterators::detail::to_6_bit<int>::operator()((a1 + 3), v6);
}