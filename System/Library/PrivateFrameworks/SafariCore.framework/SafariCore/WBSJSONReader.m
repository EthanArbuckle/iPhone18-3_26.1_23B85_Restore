@interface WBSJSONReader
- (BOOL)parseData:(id)a3 error:(id *)a4;
- (BOOL)parseFileHandle:(id)a3 error:(id *)a4;
- (BOOL)parseURL:(id)a3 error:(id *)a4;
- (WBSJSONReaderDelegate)delegate;
@end

@implementation WBSJSONReader

- (BOOL)parseData:(id)a3 error:(id *)a4
{
  v49[9] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v33 = &unk_1F30601A0;
  v34 = self;
  v35 = WeakRetained;
  v7 = v5;
  v8 = [v5 bytes];
  v44 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>(v8, v8 + [v5 length], v43, 1, v45);
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    while (1)
    {
      if (v46 <= 5)
      {
        if (v46 > 2)
        {
          if (v46 == 3)
          {
            v9 = (*v33)(&v33);
          }

          else if (v46 == 4)
          {
            v9 = v33[5](&v33, v49);
          }

          else
          {
            v9 = v33[3](&v33, v49[5]);
          }

          goto LABEL_27;
        }

        if (v46 == 1)
        {
          v9 = v33[1](&v33, 1);
          goto LABEL_27;
        }

        if (v46 == 2)
        {
          v9 = v33[1](&v33, 0);
          goto LABEL_27;
        }

        goto LABEL_66;
      }

      if (v46 <= 7)
      {
        if (v46 == 6)
        {
          v9 = v33[2](&v33, v49[4]);
          goto LABEL_27;
        }

        if ((v49[6] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v28 = v48.__r_.__value_.__r.__words[0];
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v36);
          v29 = std::string::insert(&v36, 0, "number overflow parsing '", 0x19uLL);
          v30 = *&v29->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          v31 = std::string::append(&v37, "'", 1uLL);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, &v38, &v39);
          v16 = (v33[12])(&v33, v28, &v41, &v39);
          nlohmann::detail::out_of_range::~out_of_range(&v39);
          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          goto LABEL_68;
        }

        if (!v33[4](&v33, v49))
        {
          goto LABEL_63;
        }

        goto LABEL_28;
      }

      if (v46 != 8)
      {
        break;
      }

      if (!(v33)[10](&v33, -1))
      {
        goto LABEL_63;
      }

      v46 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
      if (v46 == 10)
      {
        v9 = (v33[11])(&v33);
        goto LABEL_27;
      }

      LOBYTE(v39.__vftable) = 1;
      std::vector<BOOL>::push_back(&__p, &v39);
    }

    if (v46 != 9)
    {
      if (v46 == 14)
      {
        v20 = v48.__r_.__value_.__r.__words[0];
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
        v38 = v48;
        std::string::basic_string[abi:sn200100]<0>(&v36, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0, &v36, &v37);
        nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
        v21 = (v33[12])(&v33, v20, &v41, &v39);
LABEL_67:
        v16 = v21;
        v39.__vftable = &unk_1F30602D0;
        MEMORY[0x1B8CC0150](v40);
        std::exception::~exception(&v39);
        goto LABEL_68;
      }

LABEL_66:
      v22 = v48.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
      v38 = v48;
      std::string::basic_string[abi:sn200100]<0>(&v36, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0x10u, &v36, &v37);
      nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
      v21 = (v33[12])(&v33, v22, &v41, &v39);
      goto LABEL_67;
    }

    if (((v33)[7](&v33, -1) & 1) == 0)
    {
      goto LABEL_63;
    }

    v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
    v46 = v10;
    if (v10 == 11)
    {
      break;
    }

    if (v10 != 4)
    {
LABEL_77:
      v26 = v48.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
      v38 = v48;
      std::string::basic_string[abi:sn200100]<0>(&v36, "object key");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 4u, &v36, &v37);
      nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
      v24 = (v33[12])(&v33, v26, &v41, &v39);
      goto LABEL_79;
    }

    if (!v33[8](&v33, v49))
    {
      goto LABEL_63;
    }

    v46 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
    if (v46 != 12)
    {
LABEL_78:
      v27 = v48.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
      v38 = v48;
      std::string::basic_string[abi:sn200100]<0>(&v36, "object separator");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0xCu, &v36, &v37);
      nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
      v24 = (v33[12])(&v33, v27, &v41, &v39);
LABEL_79:
      v16 = v24;
      nlohmann::detail::parse_error::~parse_error(&v39);
LABEL_68:
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      goto LABEL_52;
    }

    LOBYTE(v39.__vftable) = 0;
    std::vector<BOOL>::push_back(&__p, &v39);
    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
LABEL_45:
    v46 = v15;
  }

  v9 = (v33[9])(&v33);
LABEL_27:
  if ((v9 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_28:
  size = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
LABEL_51:
    v16 = 1;
    goto LABEL_52;
  }

  while (2)
  {
    if ((*(__p.__r_.__value_.__r.__words[0] + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)))
    {
      v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
      v46 = v12;
      if (v12 == 13)
      {
        goto LABEL_44;
      }

      if (v12 != 10)
      {
        goto LABEL_75;
      }

      v13 = (v33[11])(&v33);
LABEL_36:
      if (!v13)
      {
        goto LABEL_63;
      }

      if (!__p.__r_.__value_.__l.__size_)
      {
        __break(1u);
LABEL_75:
        v23 = v48.__r_.__value_.__r.__words[0];
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
        v38 = v48;
        std::string::basic_string[abi:sn200100]<0>(&v36, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0xAu, &v36, &v37);
        nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
        v24 = (v33[12])(&v33, v23, &v41, &v39);
        goto LABEL_79;
      }

      size = __p.__r_.__value_.__l.__size_ - 1;
      __p.__r_.__value_.__l.__size_ = size;
      if (!size)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
  v46 = v14;
  if (v14 != 13)
  {
    if (v14 != 11)
    {
      v25 = v48.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &v41);
      v38 = v48;
      std::string::basic_string[abi:sn200100]<0>(&v36, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0xBu, &v36, &v37);
      nlohmann::detail::parse_error::create(101, &v38, &v37, &v39);
      v24 = (v33[12])(&v33, v25, &v41, &v39);
      goto LABEL_79;
    }

    v13 = (v33[9])(&v33);
    goto LABEL_36;
  }

  v46 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
  if (v46 != 4)
  {
    goto LABEL_77;
  }

  if (v33[8](&v33, v49))
  {
    v46 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
    if (v46 != 12)
    {
      goto LABEL_78;
    }

LABEL_44:
    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
    goto LABEL_45;
  }

LABEL_63:
  v16 = 0;
LABEL_52:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    v46 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v47);
    if (v46 != 15)
    {
      v17 = v48.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v47, &__p);
      v41 = v48;
      std::string::basic_string[abi:sn200100]<0>(&v37, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v45, 0xFu, &v37, &v38);
      nlohmann::detail::parse_error::create(101, &v41, &v38, &v39);
      (v33[12])(&v33, v17, &__p, &v39);
      v39.__vftable = &unk_1F30602D0;
      MEMORY[0x1B8CC0150](v40);
      std::exception::~exception(&v39);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v47);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v45);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v43);

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)parseURL:(id)a3 error:(id *)a4
{
  v22[18] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = &unk_1F30601A0;
  v13 = self;
  v14 = WeakRetained;
  v7 = [v5 path];
  v8 = v7;
  [v7 fileSystemRepresentation];
  std::ifstream::basic_ifstream(v16);

  v9 = *&v17[*(v16[0] - 24) + 24];
  v15[0] = v16;
  v15[1] = v9;
  v15[2] = 0;
  v15[3] = 0;
  v20 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v15, v19, 1, v21);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v22);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v21);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v19);
  if (v15[0])
  {
    std::ios_base::clear((v15[0] + *(*v15[0] - 24)), *(v15[0] + *(*v15[0] - 24) + 32) & 2);
  }

  v16[0] = *MEMORY[0x1E69E54C8];
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8CC01B0](v17);
  std::istream::~istream();
  MEMORY[0x1B8CC0220](&v18);

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)parseFileHandle:(id)a3 error:(id *)a4
{
  v26[18] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = &unk_1F30601A0;
  v16 = self;
  v17 = WeakRetained;
  LODWORD(WeakRetained) = [v5 fileDescriptor];
  v7 = MEMORY[0x1E69E5538] + 16;
  __sb = (MEMORY[0x1E69E5538] + 16);
  MEMORY[0x1B8CC01E0](v20);
  memset(&v20[4], 0, 24);
  v21 = WeakRetained;
  __sb = &unk_1F3060228;
  v20[1].__locale_ = v22;
  v20[2].__locale_ = v22;
  v20[3].__locale_ = v22;
  v12.__loc_ = 0;
  v11[0] = MEMORY[0x1E69E5518] + 24;
  v11[1] = 0;
  v12.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v12, &__sb);
  v13 = 0;
  v14 = -1;
  v8 = *(&v12.__width_ + *(v11[0] - 24));
  v18[0] = v11;
  v18[1] = v8;
  v18[2] = 0;
  v18[3] = 0;
  v24 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v18, v23, 1, v25);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v26);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v25);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v23);
  if (v18[0])
  {
    std::ios_base::clear((v18[0] + *(*v18[0] - 24)), *(v18[0] + *(*v18[0] - 24) + 32) & 2);
  }

  std::istream::~istream();
  __sb = v7;
  std::locale::~locale(v20);

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

- (WBSJSONReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end